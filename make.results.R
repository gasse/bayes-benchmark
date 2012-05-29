source("conf.R")

skeleton.node.result = data.frame(
  method = vector(),
  network = vector(),
  samplesize = vector(),
  rep = vector(),
  p = vector(),
  node = vector(),
  nodecard = vector(),
  nbtests = vector(),
  time.user = vector(),
  time.sys = vector(),
  nbnodes = vector(),
  nbarcs = vector(),
  tp = vector(),
  tn = vector(),
  fp = vector(),
  fn = vector(),
  recall = vector(),
  precision = vector(),
  error = vector(),
  specificity = vector())

skeleton.result = data.frame(
  method = vector(),
  network = vector(),
  samplesize = vector(),
  rep = vector(),
  p = vector(),
  nbtests = vector(),
  time.user = vector(),
  time.sys = vector(),
  nbnodes = vector(),
  nbarcs = vector(),
  tp = vector(),
  tn = vector(),
  fp = vector(),
  fn = vector(),
  recall = vector(),
  precision = vector(),
  error = vector(),
  specificity = vector())

dag.result = data.frame(
  method = vector(),
  search = vector(),
  network = vector(),
  samplesize = vector(),
  rep = vector(),
  p = vector(),
  constraint.nbarcs = vector(),
  nbtests = vector(),
  nbscores = vector(),
  constraint.time.user = vector(),
  constraint.time.sys = vector(),
  search.time.user = vector(),
  search.time.sys = vector(),
  nbnodes = vector(),
  nbarcs = vector(),
  bde = vector(),
  bic = vector(),
  shd = vector())

truedag.result = data.frame(
  network = vector(),
  samplesize = vector(),
  rep = vector(),
  p = vector(),
  nbnodes = vector(),
  nbarcs = vector(),
  bde.test = vector(),
  bde.train = vector(),
  bic.test = vector(),
  bic.train = vector(),
  shd = vector())

# Make skeleton per-node results
# for (network in names(conf.networks)) {
# 
#   truedag = conf.dags[[network]]
#   nbnodes = length(truedag$nodes)
# 
#   for (samplesize in conf.trainingsizes) {
#     for (rep in 1:conf.trainingreps) {
#       for (p in 1:conf.trainingpermuts) {
#         
#         filename = paste(network, "_", samplesize, "_", rep, "_p", p, sep="")
#         cat("skeleton.node", filename, "\n")
#   
#         for (method in conf.pc.methods) {
#           for (test in conf.tests) {
#             
#             skeleton = get(load(paste("models/skeleton/", method, "/", test, "/", filename, "_skeleton.rda", sep="")))
#             time = get(load(paste("models/skeleton/", method, "/", test, "/", filename, "_time.rda", sep="")))
#             
#             for (node in names(truedag$nodes)) {
#               
#               tnbr = truedag$nodes[[node]]$nbr
#               rnbr = skeleton$nodes[[node]]$nbr
#               tp = 0
#               fp = 0
#               tn = nbnodes - 1 - length(tnbr)
#               fn = length(tnbr)
#               
#               for (n in rnbr) {
#                 if(n %in% tnbr) {
#                   fn = fn - 1
#                   tp = tp + 1
#                 }
#                 else {
#                   tn = tn - 1
#                   fp = fp + 1
#                 }
#               }
#               
#               recall = ifelse(fn == 0, 1, tp / (tp + fn))
#               precision = ifelse(fp == 0, 1, tp / (tp + fp))
#               error = sqrt((1 - recall)^2 + (1 - precision)^2)
#               
#               specificity = ifelse(fp == 0, 1, tn / (tn + fp))
#               
#               skeleton.node.result = rbind(skeleton.node.result, data.frame(
#                 method = method,
#                 network = network,
#                 samplesize = samplesize,
#                 rep = rep,
#                 p = p,
#                 node = node,
#                 nodecard = length(tnbr),
#                 nbtests = skeleton$learning$ntests,
#                 nbnodes = nbnodes,
#                 time.user = time["user.self"],
#                 time.sys = time["sys.self"],
#                 nbarcs = nrow(truedag$arcs),
#                 tp = tp,
#                 tn = tn,
#                 fp = fp,
#                 fn = fn,
#                 recall = recall,
#                 precision = precision,
#                 error = error,
#                 specificity = specificity))
#             }
#           }
#         }
#       }
#     }
#   }
# }

# Make skeleton results
for (network in names(conf.networks)) {

  truedag = conf.dags[[network]]

  for (samplesize in conf.trainingsizes) {
    for (rep in 1:conf.trainingreps) {
      for (p in 1:conf.trainingpermuts) {

        filename = paste(network, "_", samplesize, "_", rep, "_p", p, sep="")
        cat("skeleton", filename, "\n")
        
        for (method in conf.pc.methods) {
          for (test in conf.tests) {
            
            skeleton = get(load(paste("models/skeleton/", method, "/", test, "/", filename, "_skeleton.rda", sep="")))
            time = get(load(paste("models/skeleton/", method, "/", test, "/", filename, "_time.rda", sep="")))
            
            tp = 0
            tn = 0
            fp = 0
            fn = 0
            
            done = vector()
            for (node in names(truedag$nodes)) {
              
              done = c(done, node)
              tnbr = setdiff(truedag$nodes[[node]]$nbr, done)
              rnbr = setdiff(skeleton$nodes[[node]]$nbr, done)
              
              fn = fn + length(tnbr)
              for(n in tnbr) {
                if(n %in% rnbr) {
                  tp = tp + 1
                  fn = fn - 1
                }
              }
              
              for(n in rnbr) {
                if(!(n %in% tnbr)) {
                  fp = fp + 1
                }
              }
            }
            
            nbnodes = length(truedag$nodes)
            tn = nbnodes * (nbnodes - 1) - tp - fn - fp
            
            recall = ifelse(fn == 0, 1, tp / (tp + fn)) # Couverture d'arcs (1=tous 0=aucun)
            precision = ifelse(fp == 0, 1, tp / (tp + fp)) # Arcs en trop (1=tous 0=aucun)
            error = sqrt((1 - recall)^2 + (1 - precision)^2)
            
            specificity = ifelse(fp == 0, 1, tn / (tn + fp)) # Couverture des non-arcs (1=tous 0=aucun)
            
            skeleton.result = rbind(skeleton.result, data.frame(
              method = method,
              network = network,
              samplesize = samplesize,
              rep = rep,
              p = p,
              nbtests = skeleton$learning$ntests,
              nbnodes = nbnodes,
              time.user = time["user.self"],
              time.sys = time["sys.self"],
              nbarcs = nrow(truedag$arcs),
              tp = tp,
              tn = tn,
              fp = fp,
              fn = fn,
              recall = recall,
              precision = precision,
              error = error,
              specificity = specificity))
          }
        }
      }
    }
  }
}

# Make DAG results
for (network in names(conf.networks)) {

  truedag = conf.dags[[network]]

  for (samplesize in conf.trainingsizes) {
    for (rep in 1:conf.trainingreps) {

      filename = paste(network, "_", samplesize, "_", rep, sep="")
      test.data = get(load(paste("samples/", filename, "_test.rda", sep="")))
      train.data = get(load(paste("samples/", filename, "_training.rda", sep="")))

      for (p in 1:conf.trainingpermuts) {

        cat("dag ", filename, "_p", p, "\n", sep = "")

        truedag.result = rbind(truedag.result, data.frame(
          network = network,
          samplesize = samplesize,
          rep = rep,
          p = p,
          nbnodes = length(truedag$nodes),
          nbarcs = nrow(truedag$arcs),
          bde.test = score(truedag, test.data, type = "bde", iss = 10),
          bde.train = score(truedag, train.data, type = "bde", iss = 10),
          bic.test = score(truedag, test.data, type = "bic", k = log(nrow(test.data))/2),
          bic.train = score(truedag, train.data, type = "bic", k = log(nrow(train.data))/2)))

        for (method in conf.pc.methods) {
          for (search in conf.ss.methods) {
            for (ci.test in conf.tests) {
                
                skeleton = get(load(paste("models/skeleton/", method, "/", ci.test, "/", filename, "_p", p, "_skeleton.rda", sep="")))
                skeleton.time = get(load(paste("models/skeleton/", method, "/", ci.test, "/", filename, "_p", p, "_time.rda", sep="")))
                
                dag = get(load(paste("models/dag/", search, "/", method, "/", ci.test, "/", filename, "_p", p, "_dag.rda", sep="")))
                dag.time = get(load(paste("models/dag/", search, "/", method, "/", ci.test, "/", filename, "_p", p, "_time.rda", sep="")))
                
                dag.result = rbind(dag.result, data.frame(
                  method = method,
                  search = search,
                  network = network,
                  samplesize = samplesize,
                  rep = rep,
                  p = p,
                  constraint.nbarcs = nrow(skeleton$arcs),
                  nbtests = skeleton$learning$ntests,
                  nbscores = dag$learning$nscores,
                  constraint.time.user = skeleton.time["user.self"],
                  constraint.time.sys = skeleton.time["sys.self"],
                  search.time.user = dag.time["user.self"],
                  search.time.sys = dag.time["sys.self"],
                  nbnodes = length(truedag$nodes),
                  nbarcs = nrow(truedag$arcs),
                  bde.test = score(dag, test.data, type = "bde", iss = 10),
                  bde.train = score(dag, train.data, type = "bde", iss = 10),
                  bic.test = score(dag, test.data, type = "bic", k = log(nrow(test.data))/2),
                  bic.train = score(dag, train.data, type = "bic", k = log(nrow(train.data))/2),
                  shd = shd(dag, truedag)))
  
            }
          }
        }
      }
    }
  }
}

save(skeleton.node.result, file="results/skeleton.node.result.rda")
save(skeleton.result, file="results/skeleton.result.rda")
save(dag.result, file="results/dag.result.rda")
save(truedag.result, file="results/truedag.result.rda")

# Check the results
#aggregate(skeleton.node.result$network, list(skeleton.node.result$network, skeleton.node.result$method, skeleton.node.result$samplesize), length)
aggregate(skeleton.result$network, list(skeleton.result$network, skeleton.result$method, skeleton.result$samplesize), length)
aggregate(dag.result$network, list(dag.result$search, dag.result$network, dag.result$method, dag.result$samplesize), length)
aggregate(truedag.result$network, list(truedag.result$network, truedag.result$samplesize, truedag.result$rep, truedag.result$p), length)
