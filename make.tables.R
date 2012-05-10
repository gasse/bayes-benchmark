load("results/ug.node.result.rda")
load("results/ug.result.rda")
load("results/dag.result.rda")

make.samplesize.table = function(results, x) {
  
  detail = cbind(
        aggregate(
          x = x[results$method == "hpc"] /
            x[results$method == "mmpc"],
          by = list(results[results$method == "hpc", "network"],
                    results[results$method == "hpc", "samplesize"]),
          mean),
        y = aggregate(
          x = x[results$method == "hpc"] /
            x[results$method == "mmpc"],
          by = list(results[results$method == "hpc", "network"],
                    results[results$method == "hpc", "samplesize"]),
          sd)[, 3])

  average = cbind(
        x = aggregate(
          x = x[results$method == "hpc"] /
            x[results$method == "mmpc"],
          by = list(results[results$method == "hpc", "samplesize"]),
          mean),
        y = aggregate(
          x = x[results$method == "hpc"] /
            x[results$method == "mmpc"],
          by = list(results[results$method == "hpc", "samplesize"]),
          sd)[, 2])
  
  res = data.frame(
    net = c(as.character(detail[, 1]), rep("all", nrow(average))),
    ss = c(detail[, 2], average[, 1]),
    mean = c(detail[, 3], average[, 2]),
    sd = c(detail[, 4], average[, 3]))
  
  return(data.frame(
    "Network" = unique(res$net),
    "SS. 50" = sprintf("%1.2f (\\(\\pm\\)%1.2f)", res[res$ss == "50", "mean"], res[res$ss == "50", "sd"]),
    "SS. 100" = sprintf("%1.2f (\\(\\pm\\)%1.2f)", res[res$ss == "100", "mean"], res[res$ss == "100", "sd"]),
    "SS. 200" = sprintf("%1.2f (\\(\\pm\\)%1.2f)", res[res$ss == "200", "mean"], res[res$ss == "200", "sd"]),
    "SS. 500" = sprintf("%1.2f (\\(\\pm\\)%1.2f)", res[res$ss == "500", "mean"], res[res$ss == "500", "sd"]),
    "SS. 1500" = sprintf("%1.2f (\\(\\pm\\)%1.2f)", res[res$ss == "1500", "mean"], res[res$ss == "1500", "sd"]),
    "SS. 5000" = sprintf("%1.2f (\\(\\pm\\)%1.2f)", res[res$ss == "5000", "mean"], res[res$ss == "5000", "sd"])))    
}

table.samplesize.to.latex = function(table) {
  
  res = ""
  res = paste(res, "\\begin{table}[H]\n", sep="")
  res = paste(res, "\\begin{tabularx}{\\textwidth}{l X X X X X X X}\n", sep="")
  res = paste(res, "\\hline\n", sep="")
  res = paste(res, "\\multicolumn{1}{c}{\\multirow{2}{*}{Network}} & \\multicolumn{6}{c}{Sample size (SS)} \\\\ \\cline{2-7}\n", sep="")
  res = paste(res, "\\multicolumn{1}{c}{} & 50 & 100 & 200 & 500 & 1500 & 5000 \\\\\n", sep="")
  res = paste(res, "\\hline\n", sep="")
  for (i in 1:nrow(table)) {
    res = paste(res, table[i, "Network"], sep="")
    for (col in names(table)[-1])
      res = paste(res, " & ", table[i, col], sep="")
    res = paste(res, " \\\\\n", sep="")
  }
  res = paste(res, "\\hline\n", sep="")
  res = paste(res, "\\end{tabularx}\n", sep="")
  res = paste(res, "\\end{table}\n", sep="")
  
  return(res)
}

table.datasets.to.latex = function(table) {
  
  res = ""
  res = paste(res, "\\begin{table}[H]\n", sep="")
  res = paste(res, "\\begin{tabularx}{\\textwidth}{l X X X X}\n", sep="")
  res = paste(res, "\\hline\n", sep="")
  res = paste(res, "Network & Nb.vars & Nb.edges & Max. in/out degree & Domain range \\\\\n", sep="")
  res = paste(res, "\\hline\n", sep="")
  for (i in 1:nrow(table)) {
    res = paste(res, table[i, "Network"], sep="")
    for (col in names(table)[c(2, 3, 4, 6)])
      res = paste(res, " & ", table[i, col], sep="")
    res = paste(res, " \\\\\n", sep="")
  }
  res = paste(res, "\\hline\n", sep="")
  res = paste(res, "\\end{tabularx}\n", sep="")
  res = paste(res, "\n", sep="")
  res = paste(res, "\\end{table}\n", sep="")
  res = paste(res, "\\begin{table}[H]\n", sep="")
  res = paste(res, "\\begin{tabularx}{\\textwidth}{l X X X}\n", sep="")
  res = paste(res, "\\hline\n", sep="")
  res = paste(res, "Network & Min/med/max PC set & Min/med/max MB set & Min/med/max cont. table \\\\\n", sep="")
  res = paste(res, "\\hline\n", sep="")
  for (i in 1:nrow(table)) {
    res = paste(res, table[i, "Network"], sep="")
    for (col in names(table)[c(5, 7, 8)])
      res = paste(res, " & ", table[i, col], sep="")
    res = paste(res, " \\\\\n", sep="")
  }
  res = paste(res, "\\hline\n", sep="")
  res = paste(res, "\\end{tabularx}\n", sep="")
  res = paste(res, "\\end{table}\n", sep="")
  
  return(res)
}

result.tables = list()

result.tables[["datasets"]] = data.frame(
  "Network" = names(conf.networks),
  "Num. vars" = vapply(conf.dags, function(x) {
      return(length(x$nodes))
    }, numeric(1)),
  "Num. edges" = vapply(conf.dags, function(x) {
      return(length(x$arcs))
    }, numeric(1)),
  "Max In/Out degree" = vapply(conf.dags, function(x) {
    maxIn = max(vapply(x$nodes, function(y) {return(length(y$parents))}, numeric(1)))
    maxOut = max(vapply(x$nodes, function(y) {return(length(y$children))}, numeric(1)))
    return(paste(maxIn, "/", maxOut, sep=""))
  }, character(1)),
  "Min/Med/Max |PC set|" = vapply(conf.dags, function(x) {
    pcSizes = vapply(x$nodes, function(y) {return(length(y$nbr))}, numeric(1))
    return(paste(min(pcSizes), "/", median(pcSizes), "/", max(pcSizes), sep=""))
  }, character(1)),
  "Domain range" = vapply(conf.networks, function(x) {
    domRanges = vapply(x, function(y) {return(length(row.names(y$prob)))}, numeric(1))
    return(paste(min(domRanges), "-", max(domRanges), sep=""))
  }, character(1)),
  "Min/Med/Max |MB set|" = vapply(conf.networks, function(x) {
    mbSizes = vapply(x, function(y) {
      return(length(unique(c(
        y$parents, y$children,
        setdiff(unlist(lapply(y$children, function(z) {return(x[[z]]$parents)})), y$node)
    ))))}, numeric(1))
    return(paste(min(mbSizes), "/", median(mbSizes), "/", max(mbSizes), sep=""))
  }, character(1)),
  "Min/Med/Max cont. tab." = vapply(conf.networks, function(x) {
    sizes = vapply(x, function(y) {
      # for each node, it's dimension * the dimensions of it's MB nodes
      return(prod(vapply(unique(c(
          y$node,# the node
          y$parents, y$children,# its parents and children
          unlist(lapply(y$children, function(z) {return(x[[z]]$parents)}))#its spouses
        )), function(z) {
          return(length(row.names(x[[z]]$prob)))
        }, numeric(1))))}, numeric(1))
    return(paste(min(sizes), "/", median(sizes), "/", max(sizes), sep=""))
  }, character(1)))

result.tables[["error"]] = make.samplesize.table(ug.result, ug.result[, "error"])
result.tables[["recall"]] = make.samplesize.table(ug.result, ug.result[, "recall"])
result.tables[["precision"]] = make.samplesize.table(ug.result, ug.result[, "precision"])

result.tables[["bde.train"]] = make.samplesize.table(dag.result, dag.result[, "bde.train"])
result.tables[["bic.train"]] = make.samplesize.table(dag.result, dag.result[, "bic.train"])
result.tables[["bde.test"]] = make.samplesize.table(dag.result, dag.result[, "bde.test"])
result.tables[["bic.test"]] = make.samplesize.table(dag.result, dag.result[, "bic.test"])
result.tables[["shd"]] = make.samplesize.table(dag.result, dag.result[, "shd"])
result.tables[["nbscores"]] = make.samplesize.table(dag.result, dag.result[, "nbscores"])
result.tables[["nbtests"]] = make.samplesize.table(dag.result, dag.result[, "nbtests"])
result.tables[["constraint.time"]] = make.samplesize.table(dag.result, dag.result[, "constraint.time.user"])
result.tables[["search.time"]] = make.samplesize.table(dag.result, dag.result[, "search.time.user"])
result.tables[["total.time"]] = make.samplesize.table(dag.result, dag.result[, "search.time.user"] + dag.result[, "constraint.time.user"])

sink("output.txt")
cat("\ndatasets\n")
cat(table.datasets.to.latex(result.tables$datasets))
cat("\nnbtests\n")
cat(table.samplesize.to.latex(result.tables$nbtests))
cat("\nerror\n")
cat(table.samplesize.to.latex(result.tables$error))
cat("\nrecall\n")
cat(table.samplesize.to.latex(result.tables$recall))
cat("\nprecision\n")
cat(table.samplesize.to.latex(result.tables$precision))
cat("\nnbscores\n")
cat(table.samplesize.to.latex(result.tables$nbscores))
cat("\nbde.train\n")
cat(table.samplesize.to.latex(result.tables$bde.train))
cat("\nbic.train\n")
cat(table.samplesize.to.latex(result.tables$bic.train))
cat("\nbde.test\n")
cat(table.samplesize.to.latex(result.tables$bde.test))
cat("\nbic.test\n")
cat(table.samplesize.to.latex(result.tables$bic.test))
cat("\nshd\n")
cat(table.samplesize.to.latex(result.tables$shd))
cat("\nconstraint.time\n")
cat(table.samplesize.to.latex(result.tables$constraint.time))
cat("\nsearch.time\n")
cat(table.samplesize.to.latex(result.tables$search.time))
cat("\ntotal.time\n")
cat(table.samplesize.to.latex(result.tables$total.time))
sink()
