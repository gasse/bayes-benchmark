source("conf.R")
source("functions.R")
library("snow")

cat("", file="models/progress")

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
    clusterEvalQ(cl, library("synchronicity"))
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
    clusterEvalQ(cl, library("synchronicity"))
    clusterEvalQ(cl, source("functions.R"))
    clusterApplyLB(cl, todo, learn.dag)
    stopCluster(cl)
  }
}
