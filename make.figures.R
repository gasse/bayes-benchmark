load("results/skeleton.node.result.rda")
load("results/skeleton.result.rda")
load("results/dag.result.rda")
load("results/truedag.result.rda")

global.result = cbind(dag.result, data.frame(
  "tp" = rep(NA, nrow(dag.result)),
  "tn" = rep(NA, nrow(dag.result)),
  "fp" = rep(NA, nrow(dag.result)),
  "fn" = rep(NA, nrow(dag.result)),
  "recall" = rep(NA, nrow(dag.result)),
  "precision" = rep(NA, nrow(dag.result)),
  "error" = rep(NA, nrow(dag.result)),
  "specificity" = rep(NA, nrow(dag.result))))

for (search in unique(dag.result$search)) {
  global.result[global.result$search == search, "tp"] = skeleton.result[, "tp"]
  global.result[global.result$search == search, "tn"] = skeleton.result[, "tn"]
  global.result[global.result$search == search, "fp"] = skeleton.result[, "fp"]
  global.result[global.result$search == search, "fn"] = skeleton.result[, "fn"]
  global.result[global.result$search == search, "recall"] = skeleton.result[, "recall"]
  global.result[global.result$search == search, "precision"] = skeleton.result[, "precision"]
  global.result[global.result$search == search, "error"] = skeleton.result[, "error"]
  global.result[global.result$search == search, "specificity"] = skeleton.result[, "specificity"]
}

pc.plot = function(res, x, y, seps, color = "red", pch = 3, lty = 1) {
  if (length(seps) > 0) {
    for (sep in seps[[1]]) {
      pc.plot(res = res[res[, names(seps)[1]] == sep, ],
      x = x[res[, names(seps)[1]] == sep],
      y = y[res[, names(seps)[1]] == sep],
      seps = seps[-1], color = color, pch = pch)
    }
  }
  else {
    points(aggregate(y, list(x), mean), pch = pch, col = color)
    lines(aggregate(y, list(x), mean), type = "l", col = color, lwd = 1.5, lty = lty)
  }
}

pc.boxplot = function(x, y, xlab, ylab, color) {
  y = y[y != NA | y != Inf]
  x = x[y != NA | y != Inf]
  #  plot(aggregate(y, list(x), mean), pch = 16, xlab = xlab, ylab = paste(ylab, "% improvement"))
  #  lines(aggregate(y, list(x), mean), type = "l")
  boxplot(y ~ x,
          xlab = xlab,
          ylab = "measure",
#          ylab = "",
          boxwex = 0.5)
#          xlab="",
#          ylab="",
#          at = aggregate(bx, list(bx), mean)[, "x"],
#          add = TRUE)
  title(ylab)
  grid(nx = NA, ny = NULL)
  points(aggregate(y, list(factor(x)), mean), pch = 16, col = color)
  lines(aggregate(y, list(factor(x)), mean), type = "l", col = color)
}

pc.boxplot.imp = function(x, y, xlab, ylab, color) {
  y = y[y != NA | y != Inf]
  x = x[y != NA | y != Inf]
  #  plot(aggregate(y, list(x), mean), pch = 16, xlab = xlab, ylab = paste(ylab, "% improvement"))
  #  lines(aggregate(y, list(x), mean), type = "l")
  boxplot(y ~ x,
          xlab = xlab,
          #          xlab="",
          ylab = "evolution ratio",
#          ylab = "",
          border = color,
          boxwex = 0.5,
          ylim = c(min(0, min(ifelse(by == Inf, NA, by), na.rm=TRUE)), max(0, max(ifelse(by == Inf, NA, by), na.rm=TRUE)))
#          at = aggregate(bx, list(bx), mean)[, "x"],
#          add = TRUE)
  )
  title(ylab)
  grid(nx = NA, ny = NULL)
  lines(c(0, length(levels(factor(x))) + 1), c(0, 0), type = "l", lty = "solid", col = "red")
  points(aggregate(y, list(factor(x)), mean), pch = 16)
  lines(aggregate(y, list(factor(x)), mean), type = "l")
}

#-------------------------------------------------------------------------------

folder = "figures"
disp.pars = list(cex = 1.4)
#list(oma=c(0, 0, 0, 0), mar=c(3, 2, 0.5, 0.5) + 0.1, cex = 1.3, mgp = c(1.7, 0.5, 0))

for(target in c(names(conf.networks), "all")) {
  # c("alarm", "insurance", "hailfinder", "mildew", "munin", "pigs", "link", "all")
  
  if(target == "all") {
    file = "global"
    networks = names(conf.networks)
  }
  else {
    file = target
    networks = target
  }
  
  #res_disp = skeleton.node.result
  res_disp = global.result
  res_disp = res_disp[res_disp$network %in% networks, ]
  #res_disp = res_disp[res_disp$samplesize %in% 5000, ] #c("50", "100", "200", "500", "1500", "5000")
  #res_disp = res_disp[res_disp$rep %in% c(1:5), ]
  
  truedag_disp = truedag.result[truedag.result$network %in% networks, ]
  
  #-------------------------------------------------------------------------------
  
  #xlab = "node"; x = res_disp[, "node"]; x_truedag = NULL
  #xlab = "nodecard"; x = res_disp[, "nodecard"]; x_truedag = NULL
  
  #xlab = "network"; x = res_disp[, "network"]; x = factor(x); x_truedag = truedag_disp[, "network"]
  xlab = "sample size"; x = res_disp[, "samplesize"]; x_truedag = truedag_disp[, "samplesize"]
  #xlab = "nbnodes"; x = res_disp[, "nbnodes"]; x_truedag = truedag_disp[, "nbnodes"]
  #xlab = "p"; x = res_disp[, "p"]; x = factor(x); x_truedag = truedag_disp[, "p"]
  #xlab = "rep"; x = res_disp[, "rep"]; x = factor(x); x_truedag = truedag_disp[, "rep"]
  
  #-------------------------------------------------------------------------------
  
  yaxises = list()
  
  ylab = "Skeleton Euclidian distance"; measure = "skel_error"; y = res_disp[, "error"]
  ylim = c(0, sqrt(2))
  yaxises[[length(yaxises) + 1]] = list(ylab = ylab, measure = measure, y = y, ylim = ylim)
  
  ylab = "Skeleton Recall"; measure = "skel_recall"; y = res_disp[, "recall"]
  ylim = c(0, 1)
  yaxises[[length(yaxises) + 1]] = list(ylab = ylab, measure = measure, y = y, ylim = ylim)
  
  ylab = "Skeleton Precision"; measure = "skel_precision"; y = res_disp[, "precision"]
  ylim = c(0, 1)
  yaxises[[length(yaxises) + 1]] = list(ylab = ylab, measure = measure, y = y, ylim = ylim)
  
  ylab = "Skeleton Specificity"; measure = "skel_specificity"; y = res_disp[, "specificity"]
  ylim = c(0, 1)
  yaxises[[length(yaxises) + 1]] = list(ylab = ylab, measure = measure, y = y, ylim = ylim)
  
  ylab = "Skeleton False positive rate"; measure = "skel_fpr"; y = 1 - res_disp[, "specificity"]
  ylim = c(0, 1)
  yaxises[[length(yaxises) + 1]] = list(ylab = ylab, measure = measure, y = y, ylim = ylim)
  
  ylab = "Skeleton False negative rate"; measure = "skel_fnr"; y = 1 - res_disp[, "recall"]
  ylim = c(0, 1)
  yaxises[[length(yaxises) + 1]] = list(ylab = ylab, measure = measure, y = y, ylim = ylim)
  
  ylab = "Constraint time"; measure = "time_constraint"; y = res_disp[, "constraint.time.user"]
  ylim = c(0, ifelse(length(networks) > 1, max(aggregate(y, list(x, res_disp$method), mean)$x), max(y)) * 1.05)
  yaxises[[length(yaxises) + 1]] = list(ylab = ylab, measure = measure, y = y, ylim = ylim)
  
  ylab = "Search time"; measure = "time_search"; y = res_disp[, "search.time.user"]
  ylim = c(0, ifelse(length(networks) > 1, max(aggregate(y, list(x, res_disp$method), mean)$x), max(y)) * 1.05)
  yaxises[[length(yaxises) + 1]] = list(ylab = ylab, measure = measure, y = y, ylim = ylim)
  
  ylab = "Total time"; measure = "time_total"; y = res_disp[, "constraint.time.user"] + res_disp[, "search.time.user"]
  ylim = c(0, ifelse(length(networks) > 1, max(aggregate(y, list(x, res_disp$method), mean)$x), max(y)) * 1.05)
  yaxises[[length(yaxises) + 1]] = list(ylab = ylab, measure = measure, y = y, ylim = ylim)
  
  ylab = "Number of statistical tests"; measure = "nbtests"; y = res_disp[, "nbtests"]
  ylim = c(0, ifelse(length(networks) > 1, max(aggregate(y, list(x, res_disp$method), mean)$x), max(y)) * 1.05)
  yaxises[[length(yaxises) + 1]] = list(ylab = ylab, measure = measure, y = y, ylim = ylim)
  
  ylab = "Number of scores"; measure = "nbscores"; y = res_disp[, "nbscores"]
  ylim = c(0, ifelse(length(networks) > 1, max(aggregate(y, list(x, res_disp$method), mean)$x), max(y)) * 1.05)
  yaxises[[length(yaxises) + 1]] = list(ylab = ylab, measure = measure, y = y, ylim = ylim)
  
  ylab = "SHD"; measure = "score_SHD"; y = res_disp[, "shd"]
  ylim = c(0, ifelse(length(networks) > 1, max(aggregate(y, list(x, res_disp$method), mean)$x), max(y)) * 1.05)
  yaxises[[length(yaxises) + 1]] = list(ylab = ylab, measure = measure, y = y, ylim = ylim)
  
  ylab = "BDe on train data"; measure = "score_BDe_train"; y = res_disp[, "bde.train"]
  ylim = c(ifelse(length(networks) > 1, min(aggregate(y, list(x, res_disp$method), mean)$x), min(y)) * 1.05, 0)
  y_truedag = truedag_disp[, "bde.train"]
  if (!is.null(x_truedag))
    ylim[1] = min(ylim[1], min(aggregate(y_truedag, list(x_truedag), mean)) * 1.05)
  yaxises[[length(yaxises) + 1]] = list(ylab = ylab, measure = measure, y = y, ylim = ylim, y_truedag = y_truedag)
  
  ylab = "BIC on train data"; measure = "score_BIC_train"; y = res_disp[, "bic.train"]
  ylim = c(ifelse(length(networks) > 1, min(aggregate(y, list(x, res_disp$method), mean)$x), min(y)) * 1.05, 0)
  y_truedag = truedag_disp[, "bic.train"]
  if (!is.null(x_truedag))
    ylim[1] = min(ylim[1], min(aggregate(y_truedag, list(x_truedag), mean)) * 1.05)
  yaxises[[length(yaxises) + 1]] = list(ylab = ylab, measure = measure, y = y, ylim = ylim, y_truedag = y_truedag)
  
  ylab = "BDe on test data"; measure = "score_BDe_test"; y = res_disp[, "bde.test"]
  ylim = c(ifelse(length(networks) > 1, min(aggregate(y, list(x, res_disp$method), mean)$x), min(y)) * 1.05, 0)
  y_truedag = truedag_disp[, "bde.test"]
  if (!is.null(x_truedag))
    ylim[1] = min(ylim[1], min(aggregate(y_truedag, list(x_truedag), mean)) * 1.05)
  yaxises[[length(yaxises) + 1]] = list(ylab = ylab, measure = measure, y = y, ylim = ylim, y_truedag = y_truedag)
  
  ylab = "BIC on test data"; measure = "score_BIC_test"; y = res_disp[, "bic.test"]
  ylim = c(ifelse(length(networks) > 1, min(aggregate(y, list(x, res_disp$method), mean)$x), min(y)) * 1.05, 0)
  y_truedag = truedag_disp[, "bic.test"]
  if (!is.null(x_truedag))
    ylim[1] = min(ylim[1], min(aggregate(y_truedag, list(x_truedag), mean)) * 1.05)
  yaxises[[length(yaxises) + 1]] = list(ylab = ylab, measure = measure, y = y, ylim = ylim, y_truedag = y_truedag)
  
  for (axis in yaxises) {
    
    y = axis$y
    ylab = axis$ylab
    measure = axis$measure
    ylim = axis$ylim
    y_truedag = axis$y_truedag
    
    cat(target, ylab, "\n")
    
    #-------------------------------------------------------------------------------
    
    png(paste(folder, "/", file, "_all_", measure, ".png", sep=""))
    par(disp.pars)
    plot(rep(ylim[1]-ylim[2], length(x)) ~ x,
         type = "n",
         ylim=ylim,
         xlab=xlab,
         ylab="measure"
    #     ylab=""
    )
    title(ylab)

    if (!is.null(y_truedag) && !is.null(x_truedag)) {
      pc.plot(res = truedag.result, x_truedag, y_truedag, color = "black", pch = 3, lty = 2, seps = list())
    }
    
    # hpc
    pc.plot(res = res_disp, x, y, color = "blue", pch = 0, seps = list(
      method = "hpc"
    #  ,search = "tabu"
    #  ,samplesize = c("50", "100", "200", "500", "1500", "5000")
    #  ,network = c("alarm", "insurance", "hailfinder", "mildew", "munin", "pigs", "link")
    #  ,p = 1:5
    ))
    
    # hpc-and
    pc.plot(res = res_disp, x, y, color = "darkgreen", pch = 1, seps = list(
      method = "hpc-and"
      #  ,search = "tabu"
      #  ,samplesize = c("50", "100", "200", "500", "1500", "5000")
      #  ,network = c("alarm", "insurance", "hailfinder", "mildew", "munin", "pigs", "link")
      #  ,p = 1:5
      ))
    
    # mmpc
    pc.plot(res = res_disp, x, y, color = "red", pch = 2, seps = list(
      method = "mmpc"
    #  ,search = "tabu"
    #  ,samplesize = c("50", "100", "200", "500", "1500", "5000")
    #  ,network = c("alarm", "insurance", "hailfinder", "mildew", "munin", "pigs", "link")
    #  ,p = 1:5
    ))
    
    dev.off()
    
    # Raw boxplot (hpc)
    png(paste(folder, "/", file, "_hpc_", measure, ".png", sep=""))
    par(disp.pars)
    by = y[res_disp[, "method"] == "hpc"]
    bx = x[res_disp[, "method"] == "hpc"]
    pc.boxplot(bx, by, xlab, ylab, color = "blue")
    dev.off()
    
    # Raw boxplot (hpc-and)
    png(paste(folder, "/", file, "_hpc-and_", measure, ".png", sep=""))
    par(disp.pars)
    by = y[res_disp[, "method"] == "hpc-and"]
    bx = x[res_disp[, "method"] == "hpc-and"]
    pc.boxplot(bx, by, xlab, ylab, color = "darkgreen")
    dev.off()
    
    # Raw boxplot (mmpc)
    png(paste(folder, "/", file, "_mmpc_", measure, ".png", sep=""))
    par(disp.pars)
    by = y[res_disp[, "method"] == "mmpc"]
    bx = x[res_disp[, "method"] == "mmpc"]
    pc.boxplot(bx, by, xlab, ylab, color = "red")
    dev.off()
    
    # Improvement boxplot (hpc)
    png(paste(folder, "/", file, "_ratio_hpc_", measure, ".png", sep=""))
    par(disp.pars)
    by = (y[res_disp[, "method"] == "hpc"] / y[res_disp[, "method"] == "mmpc"] - 1)
    bx = x[res_disp[, "method"] == "hpc"]
    pc.boxplot.imp(bx, by, xlab, ylab, "dodgerblue4")
    dev.off()
    
    # Improvement boxplot (hpc-and)
    png(paste(folder, "/", file, "_ratio_hpc-and_", measure, ".png", sep=""))
    par(disp.pars)
    by = (y[res_disp[, "method"] == "hpc-and"] / y[res_disp[, "method"] == "mmpc"] - 1)
    bx = x[res_disp[, "method"] == "hpc-and"]
    pc.boxplot.imp(bx, by, xlab, ylab, "forestgreen")
    dev.off()

  }
}
