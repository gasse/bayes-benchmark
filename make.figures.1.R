source("conf.R")

load(file="./results/truedag.result.rda")
global.result = read.csv(file="./results/global.result.csv")

#list(oma=c(0, 0, 0, 0), mar=c(3, 2, 0.5, 0.5) + 0.1, cex = 1.3, mgp = c(1.7, 0.5, 0))
disp.pars.png = list(cex = 1.4, lwd = 1.2, las=2, oma=c(0, 0, 0, 0))
disp.pars.eps = list(cex = 1.4, las=2, oma=c(0, 0, 0, 0))

folder = "figures"
base.method = "mmpc"

# c("alarm", "insurance", "hailfinder", "mildew", "munin", "pigs", "link", "all")
for(target in c(names(conf.networks), "all")) {
  
  if(target == "all") {
    file = "_allnets"
    networks = names(conf.networks)
  }
  else {
    file = target
    networks = target
  }
  file = paste(file, "_ph1", sep="")
  
  #res_disp = skeleton.node.result
  res_disp = global.result
  res_disp = res_disp[res_disp$network %in% networks, ]
  res_disp = res_disp[res_disp$method %in% setdiff(conf.pc.methods, "none"), ]
  res_disp = res_disp[res_disp$alpha %in% 0.05, ]
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
  
  ylab = "Euclidian distance\n(lower is better)"; measure = "skel_error"; y = res_disp[, "error"]
  ylim = c(0, max(aggregate(y, list(x, res_disp$method), mean)$x)) # ylim = c(0, sqrt(2))
  yaxises[[length(yaxises) + 1]] = list(ylab = ylab, measure = measure, y = y, ylim = ylim)
  
  ylab = "Recall\n(higher is better)"; measure = "skel_recall"; y = res_disp[, "recall"]
  ylim = c(min(aggregate(y, list(x, res_disp$method), mean)$x), 1) # ylim = c(0, 1)
  yaxises[[length(yaxises) + 1]] = list(ylab = ylab, measure = measure, y = y, ylim = ylim)
  
  ylab = "Precision\n(higher is better)"; measure = "skel_precision"; y = res_disp[, "precision"]
  ylim = c(min(aggregate(y, list(x, res_disp$method), mean)$x), 1) # ylim = c(0, 1)
  yaxises[[length(yaxises) + 1]] = list(ylab = ylab, measure = measure, y = y, ylim = ylim)
  
  ylab = "Specificity\n(higher is better)"; measure = "skel_specificity"; y = res_disp[, "specificity"]
  ylim = c(min(aggregate(y, list(x, res_disp$method), mean)$x), 1) # ylim = c(0, 1)
  yaxises[[length(yaxises) + 1]] = list(ylab = ylab, measure = measure, y = y, ylim = ylim)
  
  ylab = "False potisive rate\n(lower is better)"; measure = "skel_fpr"; y = 1 - res_disp[, "specificity"]
  ylim = c(0, max(aggregate(y, list(x, res_disp$method), mean)$x)) # ylim = c(0, 1)
  yaxises[[length(yaxises) + 1]] = list(ylab = ylab, measure = measure, y = y, ylim = ylim)
  
  ylab = "Fales negative rate\n(lower is better)"; measure = "skel_fnr"; y = 1 - res_disp[, "recall"]
  ylim = c(0, max(aggregate(y, list(x, res_disp$method), mean)$x)) # ylim = c(0, 1)
  yaxises[[length(yaxises) + 1]] = list(ylab = ylab, measure = measure, y = y, ylim = ylim)
  
  ylab = "Restriction time (CB)"; measure = "time_constraint"; y = res_disp[, "constraint.time.user"]
  ylim = c(0, max(aggregate(y, list(x, res_disp$method), mean)$x) * 1.05)
  yaxises[[length(yaxises) + 1]] = list(ylab = ylab, measure = measure, y = y, ylim = ylim)
  
  ylab = "Number of CI tests"; measure = "nbtests"; y = res_disp[, "nbtests"]
  ylim = c(0, max(aggregate(y, list(x, res_disp$method), mean)$x) * 1.05)
  yaxises[[length(yaxises) + 1]] = list(ylab = ylab, measure = measure, y = y, ylim = ylim)

  for (axis in yaxises) {
    
    y = axis$y
    ylab = axis$ylab
    measure = axis$measure
    ylim = axis$ylim
    y_truedag = axis$y_truedag
    
    cat(target, measure, "\n")

    graph.plot.all = function() {
      
      plot(rep(ylim[1]-ylim[2], length(x)) ~ x,
           type = "n",
           ylim=ylim,
           xlab=xlab,
           ylab="measure"
      #     ylab=""
      )
      title(ylab)
  
      if (!is.null(y_truedag) && !is.null(x_truedag)) {
        plot.fig.lines(res = truedag.result, x_truedag, y_truedag, color = "black", pch = 3, lty = 2, seps = list())
      }
      
      for (method in unique(res_disp$method)) {
        plot.fig.lines(res = res_disp, x, y, color = conf.pc.colors[[method]][1], pch = 2, seps = list(
          method = method
          #  ,search = "tabu"
          #  ,samplesize = c("50", "100", "200", "500", "1500", "5000")
          #  ,network = c("alarm", "insurance", "hailfinder", "mildew", "munin", "pigs", "link")
          #  ,p = 1:5
        ))
      }
    }
    
    # Raw lines, all methods
    png(paste(folder, "/", file, "_all_", measure, ".png", sep=""))
    par(disp.pars.png)
    graph.plot.all()
    dev.off()
    postscript(paste(folder, "/", file, "_all_", measure, ".eps", sep=""),
               horizontal=FALSE, pointsize=1/1200, paper="special", width=2.5, height=2.5)
    par(disp.pars.eps)
    graph.plot.all()
    dev.off()
    
    # Raw boxplots
    for (method in unique(res_disp$method)) {
      png(paste(folder, "/", file, "_", method, "_", measure, ".png", sep=""))
      par(disp.pars.png)
      by = y[res_disp$method == method]
      bx = x[res_disp$method == method]
      boxplot.fig(bx, by, xlab, ylab, color = conf.pc.colors[[method]][1])
      dev.off()
    }
    
    # Increase factor boxplots
    for (method in setdiff(unique(res_disp$method), base.method)) {
      png(paste(folder, "/", file, "_%inc_", method, "_", measure, ".png", sep=""))
      par(disp.pars.png)
      by = (y[res_disp$method == method] / y[res_disp$method == base.method])
      bx = x[res_disp$method == method]
      boxplot.factor.fig(bx, by, xlab, ylab, conf.pc.colors[[method]][2])
      dev.off()
    }
  }
}
