source("functions.R")

conf.networks = list()
conf.dags = list()

#c("alarm", "insurance", "child", "hailfinder", "mildew", "munin", "pigs", "link")
for (network in c("alarm", "insurance", "child", "hailfinder", "mildew", "munin", "pigs", "link")) {
  tmp = gen.network.from.file(network)
  conf.networks[[network]] = tmp[["bn.fitted"]]
  conf.dags[[network]] = tmp[["bn"]]
}

conf.trainingsizes = c(50, 100, 200, 500, 1500, 5000)
conf.pc.methods = c("mmpc", "hpc", "hpc-and")# c("mmpc", "hpc", "hpc-and")
conf.tests = "mi-h"# c("mi-h", "pf-mi-h")
conf.trainingreps = 10
conf.trainingpermuts = 1
conf.testsize = 5000
conf.seed = 1596841
conf.nbcores = 4

conf.ss.methods = c("tabu")# c("tabu", "2p")
conf.score = "bde"
conf.tabu = 100
conf.max.tabu = 15
conf.restart = 0
conf.perturb = 0
