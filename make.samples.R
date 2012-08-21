source("conf.R")

# Generate random samples
for (target in names(conf.networks)) {
  
  set.seed(conf.seed)
  for (size in conf.trainingsizes) {
    for (rep in conf.trainingreps) {
      
      filename = paste(target, "_", size, "_", rep, "_training", sep="")

      cat(filename, "\n", sep="")
      
      training = gen.dataset.from.fitted.bn(conf.networks[[target]], size)
      save(training, file=paste("samples/", filename, ".rda", sep=""))
    }
  }
  for (size in conf.trainingsizes) {
    for (rep in conf.trainingreps) {
      
      filename = paste(target, "_", size, "_", rep, "_test", sep="")
      
      cat(filename, "\n", sep="")
      
      test = gen.dataset.from.fitted.bn(conf.networks[[target]], conf.testsize)
      save(test, file=paste("samples/", filename, ".rda", sep=""))
    }
  }
}

# Generate random column orders
for (target in names(conf.networks)) {
  set.seed(conf.seed)
  for (size in conf.trainingsizes) {
    for (rep in conf.trainingreps) {
      for (i in conf.trainingpermuts) {
        order = sample(1:length(conf.networks[[target]]))
        save(order, file=paste("samples/", target, "_", size, "_", rep, "_order_", i, ".rda", sep=""))
      }
    }
  }
}
