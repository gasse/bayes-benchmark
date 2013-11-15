source("functions.R")

conf.networks = list()
conf.dags = list()

# BNLEARN networks
# "alarm", "andes", "asia", "barley", "diabetes", "hailfinder", "hepar2",
# "insurance", "link", "mildew", "munin", "munin1","munin2", "munin3", "munin4",
# "pigs", "water", "win95pts"

# ECML
# "child", "insurance", "alarm", "mildew", "hailfinder", "munin1", "pigs", "link"
# conf.trainingsizes = c(50, 100, 200, 500, 1500, 5000)
# conf.testsize = 5000

# KOJIMA
# "alarm", "alarm3", "alarm5", "alarm10",
# "insurance", "insurance3", "insurance5", "insurance10",
# "child", "child3", "child5", "child10"
# conf.alphas = c(0.01, 0.02, 0.05)
# conf.trainingsizes = c(1000, 10000)
# conf.testsize = 10000

# KOJIMA - his datasets
# "koj.alarm01", "koj.alarm03", "koj.alarm05", "koj.alarm10",
# "koj.insurance01", "koj.insurance03", "koj.insurance05", "koj.insurance10",
# "koj.child01", "koj.child03", "koj.child05", "koj.child10"
# conf.alphas = c(0.01, 0.02, 0.05)
# conf.trainingsizes = c(500, 1000, 10000)
# conf.testsize = 10000

# Tsamardinos - his datasets
# "tsam.alarm1", "tsam.alarm3", "tsam.alarm5", "tsam.alarm10"
# "tsam.barley", "tsam.child1", "tsam.child3", "tsam.child5",
# "tsam.child10", "tsam.gene", "tsam.hailfinder1", "tsam.hailfinder3",
# "tsam.hailfinder5", "tsam.hailfinder10", "tsam.insurance1",
# "tsam.insurance3", "tsam.insurance5", "tsam.insurance10",
# "tsam.link", "tsam.mildew", "tsam.munin1", "tsam.pigs"
# conf.trainingsizes = c(500, 1000, 5000)
# conf.testsize = 5000

for (network in c(
  "child", "insurance", "alarm", "mildew", "hailfinder", "munin1", "pigs", "link"
  )) {
  conf.networks[[network]] = get(load(file=paste("networks/", network, ".rda", sep="")))
  conf.dags[[network]] = bn.net(conf.networks[[network]])
}

conf.trainingsizes =  c(50, 100, 200, 500, 1000, 2000, 5000, 10000, 20000, 50000)
conf.pc.methods = c(
  "hpc-fdr", "mmpc"
#   "rpc", "rpc2-and", "iambfdr", "mmpc", "pc", "hpc", "hpc-fdr"
#   "truedag", "hpc.cached"
#   "none"
#   "hpc", "hpc-or", "fast-hpc", "hpc-fdr", "hpc.cached", "hpc.cached-fdr"
#   "mmpc", "mmpc-bt"
#   "none", "truedag"
#   "iamb", "inter-iamb", "fast-iamb"
  )
conf.tests = "mi" # "mi-h
conf.alphas = c(0.05) # c(0.01, 0.02, 0.05) c(0)
conf.trainingreps = 1:10
conf.trainingpermuts = 1:1
conf.testsize = 50000
conf.seed = 0
conf.nbcores = 2

conf.ss.methods = c("tabu")# "tabu", "2p"
conf.score = "bde"#"bde"
conf.tabu = 100
conf.max.tabu = 15
conf.restart = 0
conf.perturb = 0

conf.progress.tracking = TRUE
conf.fig.format = "png"

if (length(conf.pc.methods) == 2) {
  conf.pc.colors = c("darkgreen", "red")
} else {
  conf.pc.colors = as.list(rainbow(length(conf.pc.methods)))
}
names(conf.pc.colors) = conf.pc.methods

conf.pc.labels = list(
  "iamb" = "IAMB",
  "inter-iamb" = "Inter-IAMB",
  "fast-iamb" = "Fast-IAMB",
  "mmpc" = "MMPC",
  "mmpc-bt" = "MMPC-BT",
  "pc" = "PC",
  "rpc" = "R-MMPC-OR",
  "rpc-and" = "R_MMPC-AND",
  "rpc2" = "R-IAPC-OR",
  "rpc2-and" = "R-IAPC-AND",
  "iambfdr" = "IAMBFDR",
  "iambfdr-and" = "IAMBFDR-AND",
  "hpc" = "HPC",
  "hpc-or" = "HPC-OR",
  "hpc-fdr" = "HPC-FDR",
  "hpc-fdr-or" = "HPC-FDR-OR",
  "hpc-fdr-bt" = "HPC-FDR-BT",
  "fast-hpc" = "HPC-fast",
  "hpc.cached" = "HPC-cached",
  "hpc.cached-fdr" = "HPC-cached-FDR",
  "none" = "none",
  "truedag" = "truedag")

conf.pc.base.method = "mmpc" # NULL "mmpc"