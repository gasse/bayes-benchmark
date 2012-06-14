load("results/skeleton.node.result.rda")
load("results/skeleton.result.rda")
load("results/dag.result.rda")
load("results/truedag.result.rda")

make.samplesize.table = function(results, x, method) {
  
  detail = cbind(
        aggregate(
          x = x[results$method == method] /
            x[results$method == "mmpc"],
          by = list(results[results$method == method, "network"],
                    results[results$method == method, "samplesize"]),
          mean),
        y = aggregate(
          x = x[results$method == method] /
            x[results$method == "mmpc"],
          by = list(results[results$method == method, "network"],
                    results[results$method == method, "samplesize"]),
          sd)[, 3])

  average = cbind(
        x = aggregate(
          x = x[results$method == method] /
            x[results$method == "mmpc"],
          by = list(results[results$method == method, "samplesize"]),
          mean),
        y = aggregate(
          x = x[results$method == method] /
            x[results$method == "mmpc"],
          by = list(results[results$method == method, "samplesize"]),
          sd)[, 2])
  
  res = data.frame(
    net = c(as.character(detail[, 1]), rep("all", nrow(average))),
    ss = c(detail[, 2], average[, 1]),
    mean = c(detail[, 3], average[, 2]),
    sd = c(detail[, 4], average[, 3]))
  
  return(data.frame(
    "Network" = unique(res$net),
    "SS. 50" = sprintf("%1.2f \\(\\pm\\)%1.1f", res[res$ss == "50", "mean"], res[res$ss == "50", "sd"]),
    "SS. 100" = sprintf("%1.2f \\(\\pm\\)%1.1f", res[res$ss == "100", "mean"], res[res$ss == "100", "sd"]),
    "SS. 200" = sprintf("%1.2f \\(\\pm\\)%1.1f", res[res$ss == "200", "mean"], res[res$ss == "200", "sd"]),
    "SS. 500" = sprintf("%1.2f \\(\\pm\\)%1.1f", res[res$ss == "500", "mean"], res[res$ss == "500", "sd"]),
    "SS. 1500" = sprintf("%1.2f \\(\\pm\\)%1.1f", res[res$ss == "1500", "mean"], res[res$ss == "1500", "sd"]),
    "SS. 5000" = sprintf("%1.2f \\(\\pm\\)%1.1f", res[res$ss == "5000", "mean"], res[res$ss == "5000", "sd"])))    
}

table.samplesize.to.latex = function(table, label, caption) {
  
  res = ""
  res = paste(res, "\\begin{table}\n", sep="")
  res = paste(res, "  \\label{", label, "}\n", sep="")
  res = paste(res, "  \\caption{", caption, "}\n", sep="")
  res = paste(res, "  \\begin{tabularx}{\\textwidth}{l X X X X X X X}\n", sep="")
  res = paste(res, "  \\hline\n", sep="")
  res = paste(res, "  \\multicolumn{1}{c}{\\multirow{2}{*}{Network}} & \\multicolumn{6}{c}{Sample Size} \\\\ \\cline{2-7}\n", sep="")
  res = paste(res, "  \\multicolumn{1}{c}{} & \\multicolumn{1}{c}{50} & \\multicolumn{1}{c}{100} & \\multicolumn{1}{c}{200} & \\multicolumn{1}{c}{500} & \\multicolumn{1}{c}{1500} & \\multicolumn{1}{c}{5000} \\\\\n", sep="")
  res = paste(res, "  \\hline\n", sep="")
  for (i in 1:nrow(table)) {
    if(table[i, "Network"] == "all")
      res = paste(res, "  \\hline\n", sep="")
    res = paste(res, "  ", table[i, "Network"], sep="")
    for (col in names(table)[-1])
      res = paste(res, " & ", table[i, col], sep="")
    res = paste(res, " \\\\\n", sep="")
  }
  res = paste(res, "  \\hline\n", sep="")
  res = paste(res, "\\end{tabularx}\n", sep="")
  res = paste(res, "\\end{table}\n", sep="")
  
  return(res)
}

table.datasets.to.latex = function(table, label, caption) {
  
  res = ""
  res = paste(res, "\\begin{table}\n", sep="")
  res = paste(res, "  \\label{", label, "}\n", sep="")
  res = paste(res, "  \\caption{", caption, "}\n", sep="")
  res = paste(res, "  \\begin{tabularx}{\\textwidth}{l X X X X}\n", sep="")
  res = paste(res, "  \\hline\n", sep="")
  res = paste(res, "  Network & Nb.vars & Nb.edges & Max. in/out degree & Domain range \\\\\n", sep="")
  res = paste(res, "  \\hline\n", sep="")
  for (i in 1:nrow(table)) {
    res = paste(res, "  ", table[i, "Network"], sep="")
    for (col in names(table)[c(2, 3, 4, 6)])
      res = paste(res, " & ", table[i, col], sep="")
    res = paste(res, " \\\\\n", sep="")
  }
  res = paste(res, "  \\hline\n", sep="")
  res = paste(res, "  \\end{tabularx}\n", sep="")
  res = paste(res, "\n", sep="")
  res = paste(res, "\\end{table}\n", sep="")
  res = paste(res, "\\begin{table}\n", sep="")
  res = paste(res, "  \\label{", label, "_2}\n", sep="")
  res = paste(res, "  \\caption{", caption, "}\n", sep="")
  res = paste(res, "  \\begin{tabularx}{\\textwidth}{l X X X}\n", sep="")
  res = paste(res, "  \\hline\n", sep="")
  res = paste(res, "  Network & Min/med/max PC set & Min/med/max MB set & Min/med/max cont. table \\\\\n", sep="")
  res = paste(res, "  \\hline\n", sep="")
  for (i in 1:nrow(table)) {
    res = paste(res, "  ", table[i, "Network"], sep="")
    for (col in names(table)[c(5, 7, 8)])
      res = paste(res, " & ", table[i, col], sep="")
    res = paste(res, " \\\\\n", sep="")
  }
  res = paste(res, "  \\hline\n", sep="")
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
      return(length(x$arcs)/2)
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

method = "hpc-and"
result.tables[["error"]] = make.samplesize.table(skeleton.result, skeleton.result[, "error"], method)
result.tables[["recall"]] = make.samplesize.table(skeleton.result, skeleton.result[, "recall"], method)
result.tables[["precision"]] = make.samplesize.table(skeleton.result, skeleton.result[, "precision"], method)

result.tables[["bde.train"]] = make.samplesize.table(dag.result, dag.result[, "bde.train"], method)
result.tables[["bic.train"]] = make.samplesize.table(dag.result, dag.result[, "bic.train"], method)
result.tables[["bde.test"]] = make.samplesize.table(dag.result, dag.result[, "bde.test"], method)
result.tables[["bic.test"]] = make.samplesize.table(dag.result, dag.result[, "bic.test"], method)
result.tables[["shd"]] = make.samplesize.table(dag.result, dag.result[, "shd"], method)
result.tables[["nbscores"]] = make.samplesize.table(dag.result, dag.result[, "nbscores"], method)
result.tables[["nbtests"]] = make.samplesize.table(dag.result, dag.result[, "nbtests"], method)
result.tables[["constraint.time"]] = make.samplesize.table(dag.result, dag.result[, "constraint.time.user"], method)
result.tables[["search.time"]] = make.samplesize.table(dag.result, dag.result[, "search.time.user"], method)
result.tables[["total.time"]] = make.samplesize.table(dag.result, dag.result[, "search.time.user"] + dag.result[, "constraint.time.user"], method)

sink("tables_hpc-and.tex")
cat(table.datasets.to.latex(result.tables$datasets, "tab:datasets", "Datasets"))
cat(table.samplesize.to.latex(result.tables$nbtests, "tab:nbtests", "Number of CI tests (constraint-based)"))
cat(table.samplesize.to.latex(result.tables$error, "tab:error", "Skeleton error"))
cat(table.samplesize.to.latex(result.tables$recall, "tab:recall", "Skeleton recall"))
cat(table.samplesize.to.latex(result.tables$precision, "tab:precision", "Skeleton precision"))
cat(table.samplesize.to.latex(result.tables$nbscores, "tab:nbscores", "Number of scores (search-and-score)"))
cat(table.samplesize.to.latex(result.tables$bde.train, "tab:bde.train", "DBe score (train data)"))
cat(table.samplesize.to.latex(result.tables$bic.train, "tab:bic.train", "BIC score (train data)"))
cat(table.samplesize.to.latex(result.tables$bde.test, "tab:bde.test", "BDe score (test data)"))
cat(table.samplesize.to.latex(result.tables$bic.test, "tab:bic.test", "BIC score (test data)"))
cat(table.samplesize.to.latex(result.tables$shd, "tab:shd", "Structural Hamming Distance"))
cat(table.samplesize.to.latex(result.tables$constraint.time, "tab:constraint.time", "Restriction time (constraint-based)"))
cat(table.samplesize.to.latex(result.tables$search.time, "tab:search.time", "Maximization time (search-and-score)"))
cat(table.samplesize.to.latex(result.tables$total.time, "tab:total.time", "Total time"))
sink()

method = "hpc"
result.tables[["error"]] = make.samplesize.table(skeleton.result, skeleton.result[, "error"], method)
result.tables[["recall"]] = make.samplesize.table(skeleton.result, skeleton.result[, "recall"], method)
result.tables[["precision"]] = make.samplesize.table(skeleton.result, skeleton.result[, "precision"], method)

result.tables[["bde.train"]] = make.samplesize.table(dag.result, dag.result[, "bde.train"], method)
result.tables[["bic.train"]] = make.samplesize.table(dag.result, dag.result[, "bic.train"], method)
result.tables[["bde.test"]] = make.samplesize.table(dag.result, dag.result[, "bde.test"], method)
result.tables[["bic.test"]] = make.samplesize.table(dag.result, dag.result[, "bic.test"], method)
result.tables[["shd"]] = make.samplesize.table(dag.result, dag.result[, "shd"], method)
result.tables[["nbscores"]] = make.samplesize.table(dag.result, dag.result[, "nbscores"], method)
result.tables[["nbtests"]] = make.samplesize.table(dag.result, dag.result[, "nbtests"], method)
result.tables[["constraint.time"]] = make.samplesize.table(dag.result, dag.result[, "constraint.time.user"], method)
result.tables[["search.time"]] = make.samplesize.table(dag.result, dag.result[, "search.time.user"], method)
result.tables[["total.time"]] = make.samplesize.table(dag.result, dag.result[, "search.time.user"] + dag.result[, "constraint.time.user"], method)

sink("tables_hpc-or.tex")
cat(table.datasets.to.latex(result.tables$datasets, "tab:datasets", "Datasets"))
cat(table.samplesize.to.latex(result.tables$nbtests, "tab:nbtests", "Number of CI tests (constraint-based)"))
cat(table.samplesize.to.latex(result.tables$error, "tab:error", "Skeleton error"))
cat(table.samplesize.to.latex(result.tables$recall, "tab:recall", "Skeleton recall"))
cat(table.samplesize.to.latex(result.tables$precision, "tab:precision", "Skeleton precision"))
cat(table.samplesize.to.latex(result.tables$nbscores, "tab:nbscores", "Number of scores (search-and-score)"))
cat(table.samplesize.to.latex(result.tables$bde.train, "tab:bde.train", "DBe score (train data)"))
cat(table.samplesize.to.latex(result.tables$bic.train, "tab:bic.train", "BIC score (train data)"))
cat(table.samplesize.to.latex(result.tables$bde.test, "tab:bde.test", "BDe score (test data)"))
cat(table.samplesize.to.latex(result.tables$bic.test, "tab:bic.test", "BIC score (test data)"))
cat(table.samplesize.to.latex(result.tables$shd, "tab:shd", "Structural Hamming Distance"))
cat(table.samplesize.to.latex(result.tables$constraint.time, "tab:constraint.time", "Restriction time (constraint-based)"))
cat(table.samplesize.to.latex(result.tables$search.time, "tab:search.time", "Maximization time (search-and-score)"))
cat(table.samplesize.to.latex(result.tables$total.time, "tab:total.time", "Total time"))
sink()
