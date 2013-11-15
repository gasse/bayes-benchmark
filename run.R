source("make.samples.R")
source("make.models.R")
source("make.results.R")
source("make.figures.1.R")
source("make.figures.2.R")


# for (f in dir("../bnlearn-clone-3.2/R"))
#   source(paste("../bnlearn-clone-3.2/R/", f, sep="/"))
# 
# params=list(
#   method="rpc",
#   target="child",
#   size=50,
#   rep=1,
#   seed=1596841,
#   test="mi",
#   p=1,
#   alpha=0.05)
# 
# method = params$method
# target = params$target
# size = params$size
# rep = params$rep
# seed = params$seed
# test = params$test
# p = params$p
# alpha = params$alpha
# 
# set.seed(seed)
# filename = paste(target, "_", size, "_", rep, sep="")
# training = get(load(paste("samples/", filename, "_training.rda", sep="")))
# order = get(load(paste("samples/", filename, "_order_", p, ".rda", sep="")))
# 
# x = training[, order]
# 
# mb = rpc.global(targets = colnames(x), data = x, levels=1,
#                 test = test, alpha = alpha, B = 100, debug=TRUE)
