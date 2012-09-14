source("conf.R")
source("functions.R")
library("snow")

if (conf.progress.tracking) {
  
  progress.file = paste("models/progress_", format(Sys.time(), "%Y%m%d_%H%M%S"), sep="")
  cat("", file=progress.file)
  cat("cb methods:", conf.pc.methods, "\n", file=progress.file, append=TRUE)
  cat("ci tests:", conf.tests, "\n", file=progress.file, append=TRUE)
  cat("ss methods:", conf.ss.methods, "\n", file=progress.file, append=TRUE)
  cat("networks:", names(conf.networks), "\n", file=progress.file, append=TRUE)
  cat("sample sizes:", conf.trainingsizes, "\n", file=progress.file, append=TRUE)
  cat("alpha thresholds:", conf.alphas, "\n", file=progress.file, append=TRUE)
  cat("repetitions:", conf.trainingreps, "\n", file=progress.file, append=TRUE)
  cat("permutations:", conf.trainingpermuts, "\n", file=progress.file, append=TRUE)
  cat("\n", file=progress.file, append=TRUE)
  
}

# Learn skeletons, constraint-based
for (target in names(conf.networks)) {
  
  todo = list()
  set.seed(conf.seed)
  for (method in conf.pc.methods) {
    for (test in conf.tests) {
      for (alpha in conf.alphas) {
        for (size in conf.trainingsizes) {
          for (rep in conf.trainingreps) {
            for (p in conf.trainingpermuts) {
              
              todo[[length(todo) + 1]] = list(
                method = method,
                target = target,
                size = size,
                rep = rep,
                seed = conf.seed,
                test = test,
                p = p,
                alpha = alpha)
              
            }
          }
        }
      }
    }
  }
  
  if(length(todo) > 0) {
    cl = makeCluster(conf.nbcores)
    clusterEvalQ(cl, library("bnlearn"))
    clusterExport(cl, "conf.progress.tracking")
    if (conf.progress.tracking) {
      clusterEvalQ(cl, library("synchronicity"))
      clusterExport(cl, "progress.file")
    }
    clusterApplyLB(cl, todo, learn.skeleton)
    stopCluster(cl)
  }
}

# Learn DAGs
for (target in names(conf.networks)) {
  
  todo = list()
  for (fromMethod in conf.pc.methods) {
    for (method in conf.ss.methods) {
      for (test in conf.tests) {
        for (alpha in conf.alphas) {
          for (size in conf.trainingsizes) {
            for (rep in conf.trainingreps) {
              for (p in conf.trainingpermuts) {
              
                todo[[length(todo) + 1]] = list(
                  fromMethod = fromMethod,
                  method = method,
                  target = target,
                  size = size,
                  rep = rep,
                  seed = conf.seed,
                  test = test,
                  score = conf.score,
                  tabu = conf.tabu,
                  max.tabu = conf.max.tabu,
                  restart = conf.restart,
                  perturb = conf.perturb,
                  p = p,
                  alpha = alpha)
              
              }
            }
          }
        }
      }
    }
  }
  
  if(length(todo) > 0) {
    cl = makeCluster(conf.nbcores)
    clusterEvalQ(cl, library("bnlearn"))
    clusterEvalQ(cl, source("functions.R"))
    clusterExport(cl, "conf.progress.tracking")
    if (conf.progress.tracking) {
      clusterEvalQ(cl, library("synchronicity"))
      clusterExport(cl, "progress.file")
    }
    clusterApplyLB(cl, todo, learn.dag)
    stopCluster(cl)
  }
}
