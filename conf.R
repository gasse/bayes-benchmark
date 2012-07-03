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

# "child", "insurance", "alarm", "mildew", "hailfinder", "munin1", "pigs", "link"

for (network in c("alarm")) {
  conf.networks[[network]] = get(load(file=paste("./networks/", network, ".rda", sep="")))
  conf.dags[[network]] = bn.net(conf.networks[[network]])
}

conf.trainingsizes =  c(1500, 5000) # c(50, 100, 200, 500, 1500, 5000) c(1000, 10000)
conf.pc.methods = c("iamb", "inter-iamb", "fast-iamb")# c("truedag", "none", "mmpc", "hpc", "hpc-and")
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
  "iamb" = c("yellow2", "yellow3"),
  "inter-iamb" = c("turquoise3", "turquoise4"),
  "fast-iamb" = c("orangered4", "orangered3"),
  "mmpc" = c("red", "red"),
  "hpc" = c("darkgreen", "forestgreen"),
  "hpc-iamb" = c("blue", "dodgerblue4"),
  "none" = c("darkmagenta", "deeppink4"),
  "truedag" = c("darkorange", "darkorange3"))

conf.pc.labels = list(
  "iamb" = "IAMB",
  "inter-iamb" = "Inter-IAMB",
  "fast-iamb" = "Fast-IAMB",
  "mmpc" = "MMPC",
  "hpc" = "HPC",
  "hpc-iamb" = "HPC-3",
  "none" = "none",
  "truedag" = "truedag")

conf.pc.base.method = NULL # "mmpc"