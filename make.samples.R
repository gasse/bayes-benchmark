source("conf.R")

# Generate random samples
for (target in names(conf.networks)) {
  
  set.seed(conf.seed)
  for (size in conf.trainingsizes) {
    for (rep in 1:conf.trainingreps) {
      
      filename = paste(target, "_", size, "_", rep, sep="")

      cat("sampling ", filename, "\n", sep="")
      
      training = gen.dataset.from.fitted.bn(conf.networks[[target]], size)
      save(training, file=paste("samples/", filename, "_training.rda", sep=""))
      
      test = gen.dataset.from.fitted.bn(conf.networks[[target]], conf.testsize)
      save(test, file=paste("samples/", filename, "_test.rda", sep=""))
    }
  }
}

# Generate random column orders
for (target in names(conf.networks)) {
  set.seed(conf.seed)
  for (size in conf.trainingsizes) {
    for (rep in 1:conf.trainingreps) {
      for (i in 1:conf.trainingpermuts) {
        order = sample(1:length(conf.networks[[target]]))
        save(order, file=paste("samples/", target, "_", size, "_", rep, "_order_", i, ".rda", sep=""))
      }
    }
  }
}
