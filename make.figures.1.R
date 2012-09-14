source("conf.R")

load(file="./results/truedag.result.rda")
global.result = read.csv(file="./results/global.result.csv")

#list(oma=c(0, 0, 0, 0), mar=c(3, 2, 0.5, 0.5) + 0.1, cex = 1.3, mgp = c(1.7, 0.5, 0))
disp.pars.png = list(cex = 1.4, lwd = 1.2, las=2, oma=c(0, 0, 0, 0))
disp.pars.eps = list(cex = 1.4, las=2, oma=c(0, 0, 0, 0))

folder = "figures"

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
  phase = "ph1"
  
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
  
  title = "Euclidian distance\n(lower is better)"; measure = "skel_error"; ylab="measure"
  y = res_disp[, "error"]
  y.values = aggregate(y, list(x, res_disp$method), mean)$x
  ylim = c(min(y.values), max(y.values)) # ylim = c(0, sqrt(2))
  yaxises[[length(yaxises) + 1]] = list(title = title, ylab = ylab, measure = measure, y = y, ylim = ylim)
  
  title = "Recall\n(higher is better)"; measure = "skel_recall"; ylab="measure"
  y = res_disp[, "recall"]
  y.values = aggregate(y, list(x, res_disp$method), mean)$x
  ylim = c(min(y.values), max(y.values)) # ylim = c(0, 1)
  yaxises[[length(yaxises) + 1]] = list(title = title, ylab = ylab, measure = measure, y = y, ylim = ylim)
  
  title = "Precision\n(higher is better)"; measure = "skel_precision"; ylab="measure"
  y = res_disp[, "precision"]
  y.values = aggregate(y, list(x, res_disp$method), mean)$x
  ylim = c(min(y.values), max(y.values)) # ylim = c(0, 1)
  yaxises[[length(yaxises) + 1]] = list(title = title, ylab = ylab, measure = measure, y = y, ylim = ylim)
  
  title = "Specificity\n(higher is better)"; measure = "skel_specificity"; ylab="measure"
  y = res_disp[, "specificity"]
  y.values = aggregate(y, list(x, res_disp$method), mean)$x
  ylim = c(min(y.values), max(y.values)) # ylim = c(0, 1)
  yaxises[[length(yaxises) + 1]] = list(title = title, ylab = ylab, measure = measure, y = y, ylim = ylim)
  
  title = "False positive rate\n(lower is better)"; measure = "skel_fpr"; ylab="rate"
  y = 1 - res_disp[, "specificity"]
  y.values = aggregate(y, list(x, res_disp$method), mean)$x
  ylim = c(min(y.values), max(y.values)) # ylim = c(0, 1)
  yaxises[[length(yaxises) + 1]] = list(title = title, ylab = ylab, measure = measure, y = y, ylim = ylim)
  
  title = "False negative rate\n(lower is better)"; measure = "skel_fnr"; ylab="rate"
  y = 1 - res_disp[, "recall"]
  y.values = aggregate(y, list(x, res_disp$method), mean)$x
  ylim = c(min(y.values), max(y.values)) # ylim = c(0, 1)
  yaxises[[length(yaxises) + 1]] = list(title = title, ylab = ylab, measure = measure, y = y, ylim = ylim)
  
  title = "Restriction time (CB)"; measure = "time_constraint"; ylab="time in seconds"
  y = res_disp[, "constraint.time.user"]
  y.values = aggregate(y, list(x, res_disp$method), mean)$x
  ylim = c(min(y.values), max(y.values) * 1.05)
  yaxises[[length(yaxises) + 1]] = list(title = title, ylab = ylab, measure = measure, y = y, ylim = ylim)
  
  title = "Number of statistical tests"; measure = "nbtests"; ylab="calls"
  y = res_disp[, "nbtests"]
  y.values = aggregate(y, list(x, res_disp$method), mean)$x
  ylim = c(min(y.values), max(y.values) * 1.05)
  yaxises[[length(yaxises) + 1]] = list(title = title, ylab = ylab, measure = measure, y = y, ylim = ylim)

  for (axis in yaxises) {
    
    y = axis$y
    title = axis$title
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
           ylab=ylab
      )
      title(title)
  
      if (!is.null(y_truedag) && !is.null(x_truedag)) {
        plot.fig.lines(res = truedag.result, x_truedag, y_truedag, color = "black", pch = 3, lty = 2, seps = list())
      }
      
      legend.col = c()
      legend.pch = c()
      legend.label = c()
      pch = 0
      for (method in unique(res_disp$method)) {
        plot.fig.lines(res = res_disp, x, y, color = conf.pc.colors[[method]][1], pch = pch, seps = list(
          method = method
          #  ,search = "tabu"
          #  ,samplesize = c("50", "100", "200", "500", "1500", "5000")
          #  ,network = c("alarm", "insurance", "hailfinder", "mildew", "munin", "pigs", "link")
          #  ,p = 1:5
        ))
        legend.col = c(legend.col, conf.pc.colors[[method]][1])
        legend.pch = c(legend.pch, pch)
        legend.label = c(legend.label, conf.pc.labels[[method]][1])
        pch = pch+1
      }
      # au milieu: ylim[2]/2 + ylim[2]/5
      legend(max(x) - 2*max(x)/5, ylim[2], legend.label, cex=0.8, col=legend.col, pch=legend.pch);
    }
    
    # Raw lines, all methods
    png(paste(folder, "/", file, "__all_", phase, "_", measure, ".png", sep=""))
    par(disp.pars.png)
    graph.plot.all()
    dev.off()
    postscript(paste(folder, "/", file, "__all_", phase, "_", measure, ".eps", sep=""),
               horizontal=FALSE, pointsize=1/1200, paper="special", width=2.5, height=2.5)
    par(disp.pars.eps)
    graph.plot.all()
    dev.off()
    
#     # Raw boxplots
#     for (method in unique(res_disp$method)) {
#       png(paste(folder, "/", file, "_", method, "_", phase, "_", measure, ".png", sep=""))
#       par(disp.pars.png)
#       by = y[res_disp$method == method]
#       bx = x[res_disp$method == method]
#       boxplot.fig(bx, by, xlab, ylab, title, color = conf.pc.colors[[method]][1])
#       dev.off()
#     }
    
    # Increase factor boxplots
    if(!is.null(conf.pc.base.method))
      for (method in setdiff(unique(res_disp$method), conf.pc.base.method)) {
        png(paste(folder, "/", file, "_%inc_", method, "_", phase, "_", measure, ".png", sep=""))
        par(disp.pars.png)
        by = (y[res_disp$method == method] / y[res_disp$method == conf.pc.base.method])
        bx = x[res_disp$method == method]
        boxplot.factor.fig(bx, by, xlab, ylab, title, conf.pc.colors[[method]][2])
        dev.off()
        postscript(paste(folder, "/", file, "_%inc_", method, "_", phase, "_", measure, ".eps", sep=""),
                   horizontal=FALSE, pointsize=1/1200, paper="special", width=2.5, height=2.5)
        par(disp.pars.eps)
        by = (y[res_disp$method == method] / y[res_disp$method == conf.pc.base.method])
        bx = x[res_disp$method == method]
        boxplot.factor.fig(bx, by, xlab, ylab, title, conf.pc.colors[[method]][2])
        dev.off()
      }
  }
}
