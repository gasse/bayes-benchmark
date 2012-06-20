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
  file = paste(file, "_ph2", sep="")
  
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
  
  yaxises = list()
  
  ylab = "Maximisation time (SS)"; measure = "time_search"; y = res_disp[, "search.time.user"]
  ylim = c(0, max(aggregate(y, list(x, res_disp$method), mean)$x) * 1.05)
  yaxises[[length(yaxises) + 1]] = list(ylab = ylab, measure = measure, y = y, ylim = ylim)
  
  ylab = "Total time"; measure = "time_total"; y = res_disp[, "constraint.time.user"] + res_disp[, "search.time.user"]; y[is.na(y)] = res_disp$search.time.user[is.na(y)]
  ylim = c(0, max(aggregate(y, list(x, res_disp$method), mean)$x) * 1.05)
  yaxises[[length(yaxises) + 1]] = list(ylab = ylab, measure = measure, y = y, ylim = ylim)
  
  ylab = "Number of scores"; measure = "nbscores"; y = res_disp[, "nbscores"]
  ylim = c(0, max(aggregate(y, list(x, res_disp$method), mean)$x) * 1.05)
  yaxises[[length(yaxises) + 1]] = list(ylab = ylab, measure = measure, y = y, ylim = ylim)
  
  ylab = "Strustural Hamming Distance\n(lower is better)"; measure = "score_SHD"; y = res_disp[, "shd"]
  ylim = c(0, max(aggregate(y, list(x, res_disp$method), mean)$x) * 1.05)
  yaxises[[length(yaxises) + 1]] = list(ylab = ylab, measure = measure, y = y, ylim = ylim)
  
  ylab = "BDe on train data\n(lower is better)"; measure = "score_BDe_train"; y = res_disp[, "bde.train"]
  ylim = c(min(aggregate(y, list(x, res_disp$method), mean)$x), max(aggregate(y, list(x, res_disp$method), mean)$x)) # ylim = c(min(aggregate(y, list(x, res_disp$method), mean)$x) * 1.05, 0)
  y_truedag = truedag_disp[, "bde.train"]
  if (!is.null(x_truedag)) {
    ylim[1] = min(ylim[1], min(aggregate(y_truedag, list(x_truedag), mean)$x))
    ylim[2] = max(ylim[2], max(aggregate(y_truedag, list(x_truedag), mean)$x))
  }
  yaxises[[length(yaxises) + 1]] = list(ylab = ylab, measure = measure, y = y, ylim = ylim, y_truedag = y_truedag)
  
  ylab = "BIC on train data\n(lower is better)"; measure = "score_BIC_train"; y = res_disp[, "bic.train"]
  ylim = c(min(aggregate(y, list(x, res_disp$method), mean)$x), max(aggregate(y, list(x, res_disp$method), mean)$x)) # ylim = c(min(aggregate(y, list(x, res_disp$method), mean)$x) * 1.05, 0)
  y_truedag = truedag_disp[, "bic.train"]
  if (!is.null(x_truedag)) {
    ylim[1] = min(ylim[1], min(aggregate(y_truedag, list(x_truedag), mean)$x))
    ylim[2] = max(ylim[2], max(aggregate(y_truedag, list(x_truedag), mean)$x))
  }
  yaxises[[length(yaxises) + 1]] = list(ylab = ylab, measure = measure, y = y, ylim = ylim, y_truedag = y_truedag)
  
  ylab = "BDe on test data\n(lower is better)"; measure = "score_BDe_test"; y = res_disp[, "bde.test"]
  ylim = c(min(aggregate(y, list(x, res_disp$method), mean)$x), max(aggregate(y, list(x, res_disp$method), mean)$x)) # ylim = c(min(aggregate(y, list(x, res_disp$method), mean)$x) * 1.05, 0)
  y_truedag = truedag_disp[, "bde.test"]
  if (!is.null(x_truedag)) {
    ylim[1] = min(ylim[1], min(aggregate(y_truedag, list(x_truedag), mean)$x))
    ylim[2] = max(ylim[2], max(aggregate(y_truedag, list(x_truedag), mean)$x))
  }
  yaxises[[length(yaxises) + 1]] = list(ylab = ylab, measure = measure, y = y, ylim = ylim, y_truedag = y_truedag)
  
  ylab = "BIC on test data\n(lower is better)"; measure = "score_BIC_test"; y = res_disp[, "bic.test"]
  ylim = c(min(aggregate(y, list(x, res_disp$method), mean)$x), max(aggregate(y, list(x, res_disp$method), mean)$x)) # ylim = c(min(aggregate(y, list(x, res_disp$method), mean)$x) * 1.05, 0)
  y_truedag = truedag_disp[, "bic.test"]
  if (!is.null(x_truedag)) {
    ylim[1] = min(ylim[1], min(aggregate(y_truedag, list(x_truedag), mean)$x))
    ylim[2] = max(ylim[2], max(aggregate(y_truedag, list(x_truedag), mean)$x))
  }
  yaxises[[length(yaxises) + 1]] = list(ylab = ylab, measure = measure, y = y, ylim = ylim, y_truedag = y_truedag)
  
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
