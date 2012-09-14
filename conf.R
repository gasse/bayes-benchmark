source("functions.R")

conf.networks = list()
conf.dags = list()

# "alarm", "andes", "asia", "barley", "diabetes", "hailfinder", "hepar2",
# "insurance", "link", "mildew", "munin", "munin1","munin2", "munin3", "munin4",
# "pigs", "water", "win95pts"

# KOJIMA
# "alarm", "alarm3", "alarm5", "alarm10",
# "insurance", "insurance3", "insurance5", "insurance10",
# "child", "child3", "child5", "child10"
# c(1000, 10000)
# 10000

# ECML
# "child", "insurance", "alarm", "mildew", "hailfinder", "munin1", "pigs", "link"
# c(50, 100, 200, 500, 1500, 5000)
# 5000

# Tsamardinos'
# "tsam.alarm1", "tsam.alarm3", "tsam.alarm5", "tsam.alarm10"
# "tsam.barley", "tsam.child1", "tsam.child3", "tsam.child5",
# "tsam.child10", "tsam.gene", "tsam.hailfinder1", "tsam.hailfinder3",
# "tsam.hailfinder5", "tsam.hailfinder10", "tsam.insurance1",
# "tsam.insurance3", "tsam.insurance5", "tsam.insurance10",
# "tsam.link", "tsam.mildew", "tsam.munin1", "tsam.pigs"
# c(500, 1000, 5000)
# 5000

for (network in c(
  "child", "insurance", "alarm", "mildew", "hailfinder", "munin1"
#   "alarm", "alarm3", "alarm5", "alarm10",
#   "child", "child3", "child5", "child10",
#   "insurance", "insurance3", "insurance5", "insurance10",
#   "tsam.alarm1" , "tsam.alarm3", "tsam.alarm5", "tsam.alarm10",
#   "tsam.child1", "tsam.child3", "tsam.child5", "tsam.child10",
#   "tsam.insurance1", "tsam.insurance3", "tsam.insurance5", "tsam.insurance10"
  )) {
  conf.networks[[network]] = get(load(file=paste("networks/", network, ".rda", sep="")))
  conf.dags[[network]] = bn.net(conf.networks[[network]])
}

conf.trainingsizes =  c(50, 100, 200, 500, 1500, 5000)
conf.pc.methods = c("mmpc", "hpc")# c("truedag", "none", "mmpc", "hpc", "hpc-or", "fast-hpc", "hpc.cached", "hpc3", "hpc4", "iamb", "inter-iamb", "fast-iamb")
conf.tests = "mi-h"# c("mi-h", "pf-mi-h")
conf.alphas = c(0.05) # c(0.01, 0.02, 0.05) c(0)
conf.trainingreps = 1:10
conf.trainingpermuts = 1:1
conf.testsize = 5000
conf.seed = 1596841
conf.nbcores = 4

conf.ss.methods = c("tabu")# c("tabu", "2p")
conf.score = "bde"
conf.tabu = 100
conf.max.tabu = 15
conf.restart = 0
conf.perturb = 0

conf.progress.tracking = TRUE

conf.pc.colors = list(
  "iamb" = c("burlywood4", "burlywood3"),
  "inter-iamb" = c("turquoise3", "turquoise4"),
  "fast-iamb" = c("orangered4", "orangered3"),
  "mmpc" = c("red", "red"),
  "hpc" = c("darkgreen", "forestgreen"),
  "hpc-or" = c("turquoise3", "turquoise4"),
  "fast-hpc" = c("burlywood4", "burlywood3"),
  "hpc.cached" = c("orangered4", "orangered3"),
  "hpc3" = c("black", "grey"),
  "hpc4" = c("blue", "dodgerblue4"),
  "none" = c("darkmagenta", "deeppink4"),
  "truedag" = c("darkorange", "darkorange3"))

conf.pc.labels = list(
  "iamb" = "IAMB",
  "inter-iamb" = "Inter-IAMB",
  "fast-iamb" = "Fast-IAMB",
  "mmpc" = "MMPC",
  "hpc" = "HPC",
  "hpc-or" = "HPC-OR",
  "fast-hpc" = "HPC-fast",
  "hpc.cached" = "HPC-cached",
  "hpc3" = "HPC-mmpc",
  "hpc4" = "HPC-tabu",
  "none" = "none",
  "truedag" = "truedag")

conf.pc.base.method = NULL # NULL "mmpc"