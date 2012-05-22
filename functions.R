library("bnlearn")

gen.discrete.bn = function(vars, parents) {
  bn = empty.graph(vars)
  modelstring(bn) = gen.modelstring(vars, parents)
  return(bn)
}

gen.modelstring = function(vars, parents) {
  res = ""
  for (var in vars) {
    res = paste(res, "[", var, sep="")
    if (length(parents[[var]]) > 0) {
      res = paste(res, "|", sep="")
      for (parent in parents[[var]]) {
        res = paste(res, parent, ":", sep="")
      }
      res = substr(res, 1, nchar(res) - 1)
    }
    res = paste(res, "]", sep="")
  }
  return(res)
}

gen.discrete.bn.fitted = function(vars, dims, parents, probs) {
  
  nodes = list()
  
  nodes_to_compute = vars
  
  while (length(nodes_to_compute) > 0)
    for (node in nodes_to_compute) {
      
      # All parents must have been processed
      parents.ok = TRUE
      for (parent in parents[[node]])
        if(is.null(nodes[[parent]])) {
          parents.ok = FALSE
          next
        }
      if (!parents.ok)
        next
      
      nodes_to_compute = setdiff(nodes_to_compute, node)

      cond = data.frame(dims[[node]])
      for (par in parents[[node]]) {
        tmp = NULL
        for(i in 1:length(dims[[par]]))
          tmp = rbind(tmp, cbind(cond, rep(dims[[par]][i], nrow(cond))))
        cond = tmp
      }
      names(cond) = c(node, parents[[node]])
      
      children = names(parents)[vapply(parents, function(x) any(x == node), logical(1))]
      prob = table(cond)
      
      for (i in 1:length(prob)) {
        prob[i] = probs[[node]][[(i - 1) %/% length(dims[[node]]) + 1]][(i - 1) %% length(dims[[node]]) + 1]
      }
      
      varDim = dim(prob)[1]
      parDim = prod(dim(prob)[-1])
      for (i in 0:(parDim - 1)) {

        tmp = prob[(i * varDim + 1):(i * varDim + varDim)]
        
        if (any(tmp < 0) || sum(tmp) == 0)
          stop("inconcistency in the probability table of node \"", node,
               "\" (total probs ", i + 1, ").")
        
        err = min(1 - sum(tmp), (100 - sum(tmp)) / 100)
        if (err > 0.001)
          warning("probability table of node \"", node,
                  "\" may be inconsistent, missing ", err,
                  " to 100 % (row ", i + 1, ").")
        
        prob[(i * varDim + 1):(i * varDim + varDim)] = tmp / sum(tmp)
      }
      
      nodes[[node]] = structure(list(
        node = node,
        parents = parents[[node]],
        children = children,
        prob = prob), class = "bn.fit.dnode")
    }

  bn.fitted = structure(nodes, class = "bn.fit")
}

gen.dataset.from.fitted.bn = function(bn.fitted, n) {
  
  data = list()
  nodes_to_compute = names(bn.fitted)
  
  while (length(nodes_to_compute) > 0)
    for (node in nodes_to_compute) {
      
      parents = bn.fitted[[node]]$parents
      dims = names(margin.table(bn.fitted[[node]]$prob, 1))
      probs = bn.fitted[[node]]$prob
      
      # All parents must have been processed
      parents.ok = TRUE
      for (parent in parents)
        if(is.null(data[[parent]])) {
          parents.ok = FALSE
          next
        }
      if (!parents.ok)
        next
      
      nodes_to_compute = setdiff(nodes_to_compute, node)
      
      # Simplest case : no parents
      if (length(parents) == 0) {
        data[[node]] = sample(dims, n, prob = probs, replace = TRUE)
        next
      }
      
      # Fill with parent's values
      par_dims = NULL
      for (parent in parents) {
        if (length(par_dims) == 0)
          par_dims = names(margin.table(bn.fitted[[parent]]$prob, 1))
        else {
          tmp = c()
          for (dim1 in par_dims) {
            for (dim2 in names(margin.table(bn.fitted[[parent]]$prob, 1))) {
              tmp = c(tmp, paste(dim1, ":", dim2, sep=""))
            }
          }
          par_dims = tmp
        }
        if (is.null(data[[node]]))
          data[[node]] = data[[parent]]
        else
          data[[node]] = apply(cbind(data[[node]], data[[parent]]), 1, paste, collapse = ":")
      }
      
      # Transform parent's values
      k = 0
      for (dim in par_dims) {
        data[[node]][data[[node]] == dim] = sample(
              dims,
              length(which(data[[node]] == dim)),
              prob = probs[(k * length(dims) + 1):((k + 1) * length(dims))],
              replace = TRUE)
        k = k + 1
      }
    }
  
  as.data.frame(data)
}

gen.dataset = function(vars, dims, parents, probs, n) {
  
  data = list()
  vars_to_compute = vars
  
  while (length(vars_to_compute) > 0)
    for (var in vars_to_compute) {
      
      # All parents must have been processed
      parents.ok = TRUE
      for (parent in parents[[var]])
        if(is.null(data[[parent]])) {
          parents.ok = FALSE
          next
        }
      
      if (!parents.ok)
        next
      
      vars_to_compute = setdiff(vars_to_compute, var)
      
      # Simplest case : no parents
      if (length(parents[[var]]) == 0) {
        data[[var]] = sample(dims[[var]], n, prob = probs[[var]][[1]], replace = TRUE)
        next
      }
      
      # Fill with parent's values
      parDim = NULL
      for (parent in parents[[var]]) {
        if (length(parDim) == 0)
          parDim = dims[[parent]]
        else {
          tmp = c()
          for (dim1 in parDim) {
            for (dim2 in dims[[parent]]) {
              tmp = c(tmp, paste(dim1, ":", dim2, sep=""))
            }
          }
          parDim = tmp
        }
        if (is.null(data[[var]]))
          data[[var]] = data[[parent]]
        else
          data[[var]] = apply(cbind(data[[var]], data[[parent]]), 1, paste, collapse = ":")
      }
      
      # Transform parent's values
      k = 0
      for (dim in parDim) {
        k = k + 1
        data[[var]][data[[var]] == dim] = sample(dims[[var]], length(which(data[[var]] == dim)), prob = probs[[var]][[k]], replace = TRUE)
      }
      
    }
  
  as.data.frame(data)
}

gen.network.from.file = function(network) {
  source(paste("networks_params/", network, ".R", sep=""))
  return(list(
    bn = gen.discrete.bn(vars, parents),
    bn.fitted = gen.discrete.bn.fitted(vars, dims, parents, probs)))
}

bn.fitted.from.file = function(network) {
  source("networks_params/", network, ".R")
  return(gen.discrete.bn(vars, parents))
}

# Pasted from bnlearn::backend-score.R
arcs.to.be.added = function(amat, nodes, blacklist = NULL, whitelist = NULL,
                            arcs = TRUE) {
  
  .Call("hc_to_be_added",
        arcs = amat,
        blacklist = blacklist,
        whitelist = whitelist,
        nodes = nodes,
        convert = arcs,
        PACKAGE = "bnlearn")
  
}#ARCS.TO.BE.ADDED

learn.skeleton = function(params) {
  
  method = params$method
  target = params$target
  size = params$size
  rep = params$rep
  seed = params$seed
  test = params$test
  p = params$p
  
  set.seed(seed)
  
  filename = paste(target, "_", size, "_", rep, sep="")
  
  training = get(load(paste("samples/", filename, "_training.rda", sep="")))
  order = get(load(paste("samples/", filename, "_order_", p, ".rda", sep="")))
  
  time = system.time((
    skeleton = switch(method,
                      "mmpc" = mmpc(x = training[, order], test = test, alpha = 0.05,
                                    optimized = FALSE, strict = FALSE, undirected = TRUE),
                      "hpc" = hpc(x = training[, order], test = test, alpha = 0.05,
                                  optimized = FALSE, strict = FALSE, undirected = TRUE),
                      "hpc-and" = hpc(x = training[, order], test = test, alpha = 0.05,
                                      optimized = FALSE, strict = FALSE, undirected = TRUE,
                                      nbr.join = "AND")
                      )
    ))
  
  dir.create(paste("models/skeleton/", method, "/", test, sep=""), recursive = TRUE, showWarnings = FALSE)
  
  save(skeleton, file=paste("models/skeleton/", method, "/", test, "/", filename, "_p", p, "_skeleton.rda", sep=""))
  save(time, file=paste("models/skeleton/", method, "/", test, "/", filename, "_p", p, "_time.rda", sep=""))
  
}#LEARN.SKELETON

learn.dag = function(params) {
  
  fromMethod = params$fromMethod
  method = params$method
  target = params$target
  size = params$size
  rep = params$rep
  seed = params$seed
  test = params$test
  p = params$p
  
  set.seed(seed)
  
  filename = paste(target, "_", size, "_", rep, sep="")
  
  training = get(load(paste("samples/", filename, "_training.rda", sep="")))
  order = get(load(paste("samples/", filename, "_order_", p, ".rda", sep="")))
  skeleton = get(load(paste("models/skeleton/", fromMethod, "/", test, "/", filename, "_p", p, "_skeleton.rda", sep="")))
  
  time = system.time((
    dag = switch(method,
                 "tabu" = tabu(x = training[, order], start = NULL,
                               blacklist = arcs.to.be.added(skeleton$arcs, names(skeleton$nodes)),
                               score = params$score, tabu = params$tabu, max.tabu = params$max.tabu,
                               optimized = TRUE),
                 "2p" = pdag2dag(x = skeleton2pdag(bn = skeleton, data = training[, order], strict = FALSE),
                                 ordering = names(training[, order]))
                 )
    ))
  
  dir.create(paste("models/dag/", method, "/", fromMethod, "/", test, sep=""), recursive = TRUE, showWarnings = FALSE)
  
  save(dag, file=paste("models/dag/", method, "/", fromMethod, "/", test, "/", filename, "_p", p, "_dag.rda", sep=""))
  save(time, file=paste("models/dag/", method, "/", fromMethod, "/", test, "/", filename, "_p", p, "_time.rda", sep=""))
  
}#LEARN.DAG
