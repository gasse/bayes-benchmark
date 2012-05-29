source("conf.R")
source("functions.R")

for (network in names(conf.networks)) {
  gen.hugin(conf.networks[[network]], network, paste("hugin/", network, ".hugin", sep=""))
  write.net(paste("hugin/", network, "_bis.hugin", sep=""), conf.networks[[network]])
}
