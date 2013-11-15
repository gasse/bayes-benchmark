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
  
  y.ax = list()
  
  i = length(y.ax) + 1
  y.ax[[i]] = list()
  y.ax[[i]]$title = "Euclidian distance\n(lower is better)"
  y.ax[[i]]$title.ratio = "Euclidian distance\n(lower is better)"
  y.ax[[i]]$measure = "skel_error"
  y.ax[[i]]$ylab = "mean distance"
  y.ax[[i]]$y = res_disp[, "error"]
  y.values = aggregate(y.ax[[i]]$y, list(x, res_disp$method), mean)$x
  y.ax[[i]]$ylim = c(0, max(y.values))
#   y.ax[[i]]$ylim = c(min(y.values), max(y.values))
  # y.ax[[i]]$ylim = c(0, sqrt(2))
  
  i = length(y.ax) + 1
  y.ax[[i]] = list()
  y.ax[[i]]$title = "Recall\n(higher is better)"
  y.ax[[i]]$title.ratio = "Recall\n(higher is better)"
  y.ax[[i]]$measure = "skel_recall"
  y.ax[[i]]$ylab="mean rate"
  y.ax[[i]]$y = res_disp[, "recall"]
  y.values = aggregate(y.ax[[i]]$y, list(x, res_disp$method), mean)$x
  y.ax[[i]]$ylim = c(min(y.values), 1)
#   y.ax[[i]]$ylim = c(min(y.values), max(y.values))
  # y.ax[[i]]$ylim = c(0, 1)
  
  i = length(y.ax) + 1
  y.ax[[i]] = list()
  y.ax[[i]]$title = "Precision\n(higher is better)"
  y.ax[[i]]$title.ratio = "Precision\n(higher is better)"
  y.ax[[i]]$measure = "skel_precision"
  y.ax[[i]]$ylab="mean rate"
  y.ax[[i]]$y = res_disp[, "precision"]
  y.values = aggregate(y.ax[[i]]$y, list(x, res_disp$method), mean)$x
  y.ax[[i]]$ylim = c(min(y.values), 1)
#   y.ax[[i]]$ylim = c(min(y.values), max(y.values))
  # y.ax[[i]]$ylim = c(0, 1)
  
#   i = length(y.ax) + 1
#   y.ax[[i]] = list()
#   y.ax[[i]]$title = "Specificity\n(higher is better)"
#   y.ax[[i]]$title.ratio = "Specificity\n(higher is better)"
#   y.ax[[i]]$measure = "skel_specificity"
#   y.ax[[i]]$ylab="mean rate"
#   y.ax[[i]]$y = res_disp[, "specificity"]
#   y.values = aggregate(y.ax[[i]]$y, list(x, res_disp$method), mean)$x
#   y.ax[[i]]$ylim = c(min(y.values), 1)
# #   y.ax[[i]]$ylim = c(min(y.values), max(y.values))
#   # y.ax[[i]]$ylim = c(0, 1)
  
#   i = length(y.ax) + 1
#   y.ax[[i]] = list()
#   y.ax[[i]]$title = "False positive rate\n(lower is better)"
#   y.ax[[i]]$title.ratio = "False positive rate\n(lower is better)"
#   y.ax[[i]]$measure = "skel_fpr"
#   y.ax[[i]]$ylab="mean rate"
#   y.ax[[i]]$y = 1 - res_disp[, "specificity"]
#   y.values = aggregate(y.ax[[i]]$y, list(x, res_disp$method), mean)$x
#   y.ax[[i]]$ylim = c(0, max(y.values))
# #   y.ax[[i]]$ylim = c(min(y.values), max(y.values))
#   # y.ax[[i]]$ylim = c(0, 1)
  
#   i = length(y.ax) + 1
#   y.ax[[i]] = list()
#   y.ax[[i]]$title = "False negative rate\n(lower is better)"
#   y.ax[[i]]$title.ratio = "False negative rate\n(lower is better)"
#   y.ax[[i]]$measure = "skel_fnr"
#   y.ax[[i]]$ylab="mean rate"
#   y.ax[[i]]$y = 1 - res_disp[, "recall"]
#   y.values = aggregate(y.ax[[i]]$y, list(x, res_disp$method), mean)$x
#   y.ax[[i]]$ylim = c(0, max(y.values))
# #   y.ax[[i]]$ylim = c(min(y.values), max(y.values))
#   # y.ax[[i]]$ylim = c(0, 1)
  
  i = length(y.ax) + 1
  y.ax[[i]] = list()
  y.ax[[i]]$title = "Restriction time (CB)"
  y.ax[[i]]$title.ratio = "Restriction time (CB)"
  y.ax[[i]]$measure = "time_constraint"
  y.ax[[i]]$ylab="mean time in seconds"
  y.ax[[i]]$y = res_disp[, "constraint.time.user"]
  y.values = aggregate(y.ax[[i]]$y, list(x, res_disp$method), mean)$x
  y.ax[[i]]$ylim = c(0, max(y.values) * 1.05)
#   y.ax[[i]]$ylim = c(min(y.values), max(y.values) * 1.05)
  
  i = length(y.ax) + 1
  y.ax[[i]] = list()
  y.ax[[i]]$title = "Number of statistical tests"
  y.ax[[i]]$title.ratio = "Number of statistical tests"
  y.ax[[i]]$measure = "nbtests"
  y.ax[[i]]$ylab="mean nb calls"
  y.ax[[i]]$y = res_disp[, "nbtests"]
  y.values = aggregate(y.ax[[i]]$y, list(x, res_disp$method), mean)$x
  y.ax[[i]]$ylim = c(0, max(y.values) * 1.05)
#   y.ax[[i]]$ylim = c(min(y.values), max(y.values) * 1.05)

  for (axis in y.ax) {
    
    y = axis$y
    title = axis$title
    title.ratio = axis$title.ratio
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
        plot.fig.lines(res = res_disp, x, y, color = conf.pc.colors[[method]], pch = pch, seps = list(
          method = method
          #  ,search = "tabu"
          #  ,samplesize = c("50", "100", "200", "500", "1500", "5000")
          #  ,network = c("alarm", "insurance", "hailfinder", "mildew", "munin", "pigs", "link")
          #  ,p = 1:5
        ))
        legend.col = c(legend.col, conf.pc.colors[[method]])
        legend.pch = c(legend.pch, pch)
        legend.label = c(legend.label, conf.pc.labels[[method]])
        pch = pch+1
      }
      # au milieu: ylim[2]/2 + ylim[2]/5
      legend(max(x) - 2*max(x)/5, ylim[2], legend.label, cex=0.8, col=legend.col, pch=legend.pch);
    }
    
    if (target == "all") {
      
      # Increase factor boxplots
      if(!is.null(conf.pc.base.method)) {
        for (method in setdiff(unique(res_disp$method), conf.pc.base.method)) {
          
          by = (y[res_disp$method == method] / y[res_disp$method == conf.pc.base.method])
          bx = x[res_disp$method == method]
          
          output.file = paste(folder, "/", file, "_%inc_", method, "_", phase,
                              "_", measure, ".", conf.fig.format, sep="")
          if (conf.fig.format == "png") {
            png(output.file)
            par(disp.pars.png)
          }
          if (conf.fig.format == "eps") {
            postscript(output.file, horizontal=FALSE, pointsize=1/1200, paper="special", width=2.5, height=2.5)
            par(disp.pars.eps)
          }
          
          boxplot.factor.fig(bx, by, xlab, ylab, title.ratio, conf.pc.colors[[method]])
          dev.off()
        }
      }
      
    }
      
    # Raw lines, all methods
    output.file = paste(folder, "/", file, "__all_", phase, "_", measure, ".", conf.fig.format, sep="")
    if (conf.fig.format == "png") {
      png(output.file)
      par(disp.pars.png)
    }
    if (conf.fig.format == "eps") {
      postscript(output.file, horizontal=FALSE, pointsize=1/1200, paper="special", width=2.5, height=2.5)
      par(disp.pars.eps)
    }
    graph.plot.all()
    dev.off()

#     # Raw boxplots
#     for (method in unique(res_disp$method)) {
#       png(paste(folder, "/", file, "_", method, "_", phase, "_", measure, ".png", sep=""))
#       par(disp.pars.png)
#       by = y[res_disp$method == method]
#       bx = x[res_disp$method == method]
#       boxplot.fig(bx, by, xlab, ylab, title, color = conf.pc.colors[[method]])
#       dev.off()
#     }
  }
}
