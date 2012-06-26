source("functions.R")

alarm = get(load("networks/alarm.rda"))
bn = gen.rep.bn.fit(alarm, 3)
save(bn, file = "networks/alarm3.rda")
bn = gen.rep.bn.fit(alarm, 5)
save(bn, file ="networks/alarm5.rda")
bn = gen.rep.bn.fit(alarm, 10)
save(bn, file ="networks/alarm10.rda")

insurance = get(load("networks/insurance.rda"))
bn = gen.rep.bn.fit(insurance, 3)
save(bn, file = "networks/insurance3.rda")
bn = gen.rep.bn.fit(insurance, 5)
save(bn, file ="networks/insurance5.rda")
bn = gen.rep.bn.fit(insurance, 10)
save(bn, file ="networks/insurance10.rda")

child = get(load("networks/child.rda"))
bn = gen.rep.bn.fit(child, 3)
save(bn, file = "networks/child3.rda")
bn = gen.rep.bn.fit(child, 5)
save(bn, file ="networks/child5.rda")
bn = gen.rep.bn.fit(child, 10)
save(bn, file ="networks/child10.rda")

conf.networks = list()
conf.dags = list()

# c("alarm", "insurance", "child", "hailfinder", "mildew", "munin", "pigs", "link")
# for (network in c("alarm", "insurance", "child", "hailfinder", "mildew", "munin", "pigs", "link")) {
#   tmp = gen.network.from.file(network)
#   conf.networks[[network]] = tmp[["bn.fitted"]]
#   conf.dags[[network]] = tmp[["bn"]]
# }

# "alarm", "andes", "asia", "barley", "diabetes", "hailfinder", "hepar2",
# "insurance", "link", "mildew", "munin", "munin1","munin2", "munin3", "munin4",
# "pigs", "water", "win95pts"

# "alarm", "alarm3", "alarm5", "alarm10",
# "insurance", "insurance3", "insurance5", "insurance10",
# "child", "child3", "child5", "child10"

# "alarm", "insurance", "child", "hailfinder", "mildew", "munin1", "pigs", "link"

for (network in c("child", "insurance", "alarm", "mildew", "hailfinder", "munin1", "pigs", "link")) {
  conf.networks[[network]] = get(load(file=paste("./networks/", network, ".rda", sep="")))
  conf.dags[[network]] = bn.net(conf.networks[[network]])
}

conf.trainingsizes =  c(50, 100, 200, 500, 1500, 5000) # c(50, 100, 200, 500, 1500, 5000) c(1000, 10000)
conf.pc.methods = c("hpc-and", "mmpc")# c("mmpc", "hpc", "hpc-and") c("truedag")
conf.tests = "mi-h"# c("mi-h", "pf-mi-h")
conf.alphas = c(0.05) # c(0.01, 0.02, 0.05) c(0)
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

conf.pc.colors = list(
  "mmpc" = c("red", "red"),
  "hpc" = c("blue", "dodgerblue4"),
  "hpc-and" = c("darkgreen", "forestgreen"),
  "none" = c("darkmagenta", "deeppink4"))

conf.pc.labels = list(
  "mmpc" = "MMPC",
  "hpc" = "HPC-OR",
  "hpc-and" = "HPC",
  "none" = "none")