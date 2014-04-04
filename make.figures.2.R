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
  phase = "ph2"
  
  #res_disp = skeleton.node.result
  res_disp = global.result
  res_disp = res_disp[res_disp$network %in% networks, ]
  res_disp = res_disp[res_disp$method %in% conf.pc.methods, ]
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
  
  y.ax[[1]] = list()
  y.ax[[1]]$title = "Maximisation time (SS)"
  y.ax[[1]]$title.ratio = "Maximisation time (SS)"
  y.ax[[1]]$measure = "time_search"
  y.ax[[1]]$ylab = "mean time in seconds"
  y.ax[[1]]$y = res_disp[, "search.time.user"]
  y.ax[[1]]$ylim = c(0, max(aggregate(y.ax[[1]]$y, list(x, res_disp$method), mean)$x) * 1.05)
  y.ax[[1]]$legend.pos = "topleft"
  
  y.ax[[2]] = list()
  y.ax[[2]]$title = "Total time"
  y.ax[[2]]$title.ratio = "Total time"
  y.ax[[2]]$measure = "time_total"
  y.ax[[2]]$ylab = "mean time in seconds"
  y.ax[[2]]$y = res_disp[, "constraint.time.user"] + res_disp[, "search.time.user"]
  y.ax[[2]]$y[is.na(y.ax[[2]]$y)] = res_disp$search.time.user[is.na(y.ax[[2]]$y)]
  y.ax[[2]]$ylim = c(0, max(aggregate(y.ax[[2]]$y, list(x, res_disp$method), mean)$x) * 1.05)
  y.ax[[2]]$legend.pos = "topleft"
  
  y.ax[[3]] = list()
  y.ax[[3]]$title = "Number of scores"
  y.ax[[3]]$title.ratio = "Number of scores"
  y.ax[[3]]$measure = "nbscores"
  y.ax[[3]]$ylab = "mean nb calls"
  y.ax[[3]]$y = res_disp[, "nbscores"]
  y.ax[[3]]$ylim = c(0, max(aggregate(y.ax[[3]]$y, list(x, res_disp$method), mean)$x) * 1.05)
  y.ax[[3]]$legend.pos = "bottomright"
  
  y.ax[[4]] = list()
  y.ax[[4]]$title = "Structural Hamming Distance\n(lower is better)"
  y.ax[[4]]$title.ratio = "Structural Hamming Distance\n(lower is better)"
  y.ax[[4]]$measure = "score_SHD"
  y.ax[[4]]$ylab = "mean distance"
  y.ax[[4]]$y = res_disp[, "shd"]
  y.ax[[4]]$ylim = c(0, max(aggregate(y.ax[[4]]$y, list(x, res_disp$method), mean)$x) * 1.05)
  y.ax[[4]]$legend.pos = "bottomright"
  
  y.ax[[5]] = list()
  y.ax[[5]]$title = "log(BDeu post.) on train data\n(higher is better)"
  y.ax[[5]]$title.ratio = "log(BDeu post.) on train data\n(lower is better)"
  y.ax[[5]]$measure = "score_BDe_train"
  y.ax[[5]]$ylab = "mean score"
  y.ax[[5]]$y = res_disp[, "bde.train"]
  y.ax[[5]]$ylim = c(min(aggregate(y.ax[[5]]$y, list(x, res_disp$method), mean)$x), max(aggregate(y.ax[[5]]$y, list(x, res_disp$method), mean)$x)) # ylim = c(min(aggregate(y, list(x, res_disp$method), mean)$x) * 1.05, 0)
  y.ax[[5]]$y_truedag = truedag_disp[, "bde.train"]
  if (!is.null(x_truedag)) {
    y.ax[[5]]$ylim[1] = min(y.ax[[5]]$ylim[1], min(aggregate(y.ax[[5]]$y_truedag, list(x_truedag), mean)$x))
    y.ax[[5]]$ylim[2] = max(y.ax[[5]]$ylim[2], max(aggregate(y.ax[[5]]$y_truedag, list(x_truedag), mean)$x))
  }
  y.ax[[5]]$legend.pos = "bottomright"
  
  y.ax[[6]] = list()
  y.ax[[6]]$title = "BIC on train data\n(higher is better)"
  y.ax[[6]]$title.ratio = "BIC on train data\n(lower is better)"
  y.ax[[6]]$measure = "score_BIC_train"
  y.ax[[6]]$ylab = "mean score"
  y.ax[[6]]$y = res_disp[, "bic.train"]
  y.ax[[6]]$ylim = c(min(aggregate(y.ax[[6]]$y, list(x, res_disp$method), mean)$x), max(aggregate(y.ax[[6]]$y, list(x, res_disp$method), mean)$x)) # ylim = c(min(aggregate(y, list(x, res_disp$method), mean)$x) * 1.05, 0)
  y.ax[[6]]$y_truedag = truedag_disp[, "bic.train"]
  if (!is.null(x_truedag)) {
    y.ax[[6]]$ylim[1] = min(y.ax[[6]]$ylim[1], min(aggregate(y.ax[[6]]$y_truedag, list(x_truedag), mean)$x))
    y.ax[[6]]$ylim[2] = max(y.ax[[6]]$ylim[2], max(aggregate(y.ax[[6]]$y_truedag, list(x_truedag), mean)$x))
  }
  y.ax[[6]]$legend.pos = "bottomright"
  
  y.ax[[7]] = list()
  y.ax[[7]]$title = "log(BDeu post.) on test data\n(higher is better)"
  y.ax[[7]]$title.ratio = "log(BDeu post.) on test data\n(lower is better)"
  y.ax[[7]]$measure = "score_BDe_test"
  y.ax[[7]]$ylab = "mean score"
  y.ax[[7]]$y = res_disp[, "bde.test"]
  y.ax[[7]]$ylim = c(min(aggregate(y.ax[[7]]$y, list(x, res_disp$method), mean)$x), max(aggregate(y.ax[[7]]$y, list(x, res_disp$method), mean)$x)) # ylim = c(min(aggregate(y, list(x, res_disp$method), mean)$x) * 1.05, 0)
  y.ax[[7]]$y_truedag = truedag_disp[, "bde.test"]
  if (!is.null(x_truedag)) {
    y.ax[[7]]$ylim[1] = min(y.ax[[7]]$ylim[1], min(aggregate(y.ax[[7]]$y_truedag, list(x_truedag), mean)$x))
    y.ax[[7]]$ylim[2] = max(y.ax[[7]]$ylim[2], max(aggregate(y.ax[[7]]$y_truedag, list(x_truedag), mean)$x))
  }
  y.ax[[7]]$legend.pos = "bottomright"
  
  y.ax[[8]] = list()
  y.ax[[8]]$title = "BIC on test data\n(higher is better)"
  y.ax[[8]]$title.ratio = "BIC on test data\n(lower is better)"
  y.ax[[8]]$measure = "score_BIC_test"
  y.ax[[8]]$ylab = "mean score"
  y.ax[[8]]$y = res_disp[, "bic.test"]
  y.ax[[8]]$ylim = c(min(aggregate(y.ax[[8]]$y, list(x, res_disp$method), mean)$x), max(aggregate(y.ax[[8]]$y, list(x, res_disp$method), mean)$x)) # ylim = c(min(aggregate(y, list(x, res_disp$method), mean)$x) * 1.05, 0)
  y.ax[[8]]$y_truedag = truedag_disp[, "bic.test"]
  if (!is.null(x_truedag)) {
    y.ax[[8]]$ylim[1] = min(y.ax[[8]]$ylim[1], min(aggregate(y.ax[[8]]$y_truedag, list(x_truedag), mean)$x))
    y.ax[[8]]$ylim[2] = max(y.ax[[8]]$ylim[2], max(aggregate(y.ax[[8]]$y_truedag, list(x_truedag), mean)$x))
  }
  y.ax[[8]]$legend.pos = "bottomright"
  
  for (axis in y.ax) {
    
    y = axis$y
    title = axis$title
    title.ratio = axis$title.ratio
    measure = axis$measure
    ylab = axis$ylab
    ylim = axis$ylim
    y_truedag = axis$y_truedag
    legend.pos = axis$legend.pos
    
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
#       legend(max(x) - 2*max(x)/5, ylim[2], legend.label, cex=0.8, col=legend.col, pch=legend.pch)
      legend(legend.pos, "(x,y)", legend=legend.label, cex=0.8, col=legend.col, pch=legend.pch)
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
    else {
      
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

#       # Raw boxplots
#       for (method in unique(res_disp$method)) {
#         png(paste(folder, "/", file, "_", method, "_", phase, "_", measure, ".png", sep=""))
#         par(disp.pars.png)
#         by = y[res_disp$method == method]
#         bx = x[res_disp$method == method]
#         boxplot.fig(bx, by, xlab, ylab, title, color = conf.pc.colors[[method]])
#         dev.off()
#       }
    }
  }
}
