source("conf.R")
global.result = read.csv(file="./results/global.result.csv")
global.result$network = factor(global.result$network, levels=unique(global.result$network[order(global.result$nbnodes)]))

make.samplesize.ratio.table = function(results, x, method) {
  
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
  
#   return(data.frame(
#     "Network" = unique(res$net),
#     "SS. 50" = sprintf("%1.2f \\(\\pm\\)%1.1f", res[res$ss == "50", "mean"], res[res$ss == "50", "sd"]),
#     "SS. 100" = sprintf("%1.2f \\(\\pm\\)%1.1f", res[res$ss == "100", "mean"], res[res$ss == "100", "sd"]),
#     "SS. 200" = sprintf("%1.2f \\(\\pm\\)%1.1f", res[res$ss == "200", "mean"], res[res$ss == "200", "sd"]),
#     "SS. 500" = sprintf("%1.2f \\(\\pm\\)%1.1f", res[res$ss == "500", "mean"], res[res$ss == "500", "sd"]),
#     "SS. 1000" = sprintf("%1.2f \\(\\pm\\)%1.1f", res[res$ss == "1000", "mean"], res[res$ss == "1000", "sd"]),
#     "SS. 2000" = sprintf("%1.2f \\(\\pm\\)%1.1f", res[res$ss == "2000", "mean"], res[res$ss == "2000", "sd"]),
#     "SS. 5000" = sprintf("%1.2f \\(\\pm\\)%1.1f", res[res$ss == "5000", "mean"], res[res$ss == "5000", "sd"]),
#     "SS. 10000" = sprintf("%1.2f \\(\\pm\\)%1.1f", res[res$ss == "10000", "mean"], res[res$ss == "10000", "sd"]),
#     "SS. 20000" = sprintf("%1.2f \\(\\pm\\)%1.1f", res[res$ss == "20000", "mean"], res[res$ss == "20000", "sd"]),
#     "SS. 50000" = sprintf("%1.2f \\(\\pm\\)%1.1f", res[res$ss == "50000", "mean"], res[res$ss == "50000", "sd"])))  
  
  df = data.frame(
      "Network" = rep(unique(res$net), 2),
      "SS. 50" = c(sprintf("%1.2f", res[res$ss == "50", "mean"]),
                   sprintf("\\(\\pm\\)%1.1f", res[res$ss == "50", "sd"])),
      "SS. 100" = c(sprintf("%1.2f", res[res$ss == "100", "mean"]),
                   sprintf("\\(\\pm\\)%1.1f", res[res$ss == "50", "sd"])),
      "SS. 200" = c(sprintf("%1.2f", res[res$ss == "200", "mean"]),
                   sprintf("\\(\\pm\\)%1.1f", res[res$ss == "200", "sd"])),
      "SS. 500" = c(sprintf("%1.2f", res[res$ss == "500", "mean"]),
                   sprintf("\\(\\pm\\)%1.1f", res[res$ss == "500", "sd"])),
      "SS. 1000" = c(sprintf("%1.2f", res[res$ss == "1000", "mean"]),
                   sprintf("\\(\\pm\\)%1.1f", res[res$ss == "1000", "sd"])),
      "SS. 2000" = c(sprintf("%1.2f", res[res$ss == "2000", "mean"]),
                   sprintf("\\(\\pm\\)%1.1f", res[res$ss == "2000", "sd"])),
      "SS. 5000" = c(sprintf("%1.2f", res[res$ss == "5000", "mean"]),
                   sprintf("\\(\\pm\\)%1.1f", res[res$ss == "5000", "sd"])),
      "SS. 10000" = c(sprintf("%1.2f", res[res$ss == "10000", "mean"]),
                   sprintf("\\(\\pm\\)%1.1f", res[res$ss == "10000", "sd"])),
      "SS. 20000" = c(sprintf("%1.2f", res[res$ss == "20000", "mean"]),
                   sprintf("\\(\\pm\\)%1.1f", res[res$ss == "20000", "sd"])),
      "SS. 50000" = c(sprintf("%1.2f", res[res$ss == "50000", "mean"]),
                   sprintf("\\(\\pm\\)%1.1f", res[res$ss == "50000", "sd"])))

  return(df[order(rep(1:(nrow(df)/2), 2)), ])
}

make.samplesize.raw.table = function(results, x, method) {
  
  detail = cbind(
    aggregate(
      x = x[results$method == method],
      by = list(results[results$method == "mmpc", "network"],
                results[results$method == "mmpc", "samplesize"]),
      mean),
    y = aggregate(
      x = x[results$method == method],
      by = list(results[results$method == "mmpc", "network"],
                results[results$method == "mmpc", "samplesize"]),
      sd)[, 3])
  
  average = cbind(
    x = aggregate(
      x = x[results$method == method],
      by = list(results[results$method == "mmpc", "samplesize"]),
      mean),
    y = aggregate(
      x = x[results$method == method],
      by = list(results[results$method == "mmpc", "samplesize"]),
      sd)[, 2])
  
  res = data.frame(
    net = c(as.character(detail[, 1]), rep("all", nrow(average))),
    ss = c(detail[, 2], average[, 1]),
    mean = c(detail[, 3], average[, 2]),
    sd = c(detail[, 4], average[, 3]))
  
  return(data.frame(
    "Network" = unique(res$net),
    "SS. 50" = sprintf("%1.0f \\(\\pm\\)%1.0f", res[res$ss == "50", "mean"], res[res$ss == "50", "sd"]),
    "SS. 100" = sprintf("%1.0f \\(\\pm\\)%1.0f", res[res$ss == "100", "mean"], res[res$ss == "100", "sd"]),
    "SS. 200" = sprintf("%1.0f \\(\\pm\\)%1.0f", res[res$ss == "200", "mean"], res[res$ss == "200", "sd"]),
    "SS. 500" = sprintf("%1.0f \\(\\pm\\)%1.0f", res[res$ss == "500", "mean"], res[res$ss == "500", "sd"]),
    "SS. 1000" = sprintf("%1.0f \\(\\pm\\)%1.0f", res[res$ss == "1000", "mean"], res[res$ss == "1000", "sd"]),
    "SS. 2000" = sprintf("%1.0f \\(\\pm\\)%1.0f", res[res$ss == "2000", "mean"], res[res$ss == "2000", "sd"]),
    "SS. 5000" = sprintf("%1.0f \\(\\pm\\)%1.0f", res[res$ss == "5000", "mean"], res[res$ss == "5000", "sd"]),
    "SS. 10000" = sprintf("%1.0f \\(\\pm\\)%1.0f", res[res$ss == "10000", "mean"], res[res$ss == "10000", "sd"]),
    "SS. 20000" = sprintf("%1.0f \\(\\pm\\)%1.0f", res[res$ss == "20000", "mean"], res[res$ss == "20000", "sd"]),
    "SS. 50000" = sprintf("%1.0f \\(\\pm\\)%1.0f", res[res$ss == "50000", "mean"], res[res$ss == "50000", "sd"])))    
}

table.samplesize.to.latex = function(table, label, caption) {
  
  res = ""
  res = paste(res, "\\begin{table}\n", sep="")
  res = paste(res, "  \\label{", label, "}\n", sep="")
  res = paste(res, "  \\caption{", caption, "}\n", sep="")
  res = paste(res, "  \\begin{tabularx}{\\textwidth}{lXXXXXXXXXX}\n", sep="")
  res = paste(res, "    \\hline\n", sep="")
  res = paste(res, "    \\multicolumn{1}{c}{\\multirow{2}{*}{Network}} & \\multicolumn{10}{c}{Sample Size} \\\\\n", sep="")
  res = paste(res, "    \\hhline{~----------}\n", sep="")
  res = paste(res, "    \\multicolumn{1}{c}{} & \\multicolumn{1}{c}{50} & \\multicolumn{1}{c}{100} & \\multicolumn{1}{c}{200} & \\multicolumn{1}{c}{500} & \\multicolumn{1}{c}{1000} & \\multicolumn{1}{c}{2000} & \\multicolumn{1}{c}{5000} & \\multicolumn{1}{c}{10000} & \\multicolumn{1}{c}{20000} & \\multicolumn{1}{c}{50000} \\\\\n", sep="")
  res = paste(res, "    \\hline\n", sep="")
  for (i in 1:nrow(table)) {
    if(table[i, "Network"] == "all")
      res = paste(res, "    \\hline\n", sep="")
    res = paste(res, "    ", table[i, "Network"], sep="")
    for (col in names(table)[-1])
      res = paste(res, " & ", table[i, col], sep="")
    res = paste(res, " \\\\\n", sep="")
  }
  res = paste(res, "    \\hline\n", sep="")
  res = paste(res, "  \\end{tabularx}\n", sep="")
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


tmp.res = global.result
tmp.res = tmp.res[tmp.res[, "alpha"] == 0.05, ]
tmp.res = tmp.res[tmp.res[, "network"] %in% names(conf.networks), ]

method = "hpc"
result.tables[["error"]] = make.samplesize.ratio.table(tmp.res, tmp.res[, "error"], method)
result.tables[["recall"]] = make.samplesize.ratio.table(tmp.res, tmp.res[, "recall"], method)
result.tables[["precision"]] = make.samplesize.ratio.table(tmp.res, tmp.res[, "precision"], method)

result.tables[["bde.train"]] = make.samplesize.ratio.table(tmp.res, tmp.res[, "bde.train"], method)
result.tables[["bic.train"]] = make.samplesize.ratio.table(tmp.res, tmp.res[, "bic.train"], method)
result.tables[["bde.test"]] = make.samplesize.ratio.table(tmp.res, tmp.res[, "bde.test"], method)
result.tables[["bic.test"]] = make.samplesize.ratio.table(tmp.res, tmp.res[, "bic.test"], method)
result.tables[["shd"]] = make.samplesize.ratio.table(tmp.res, tmp.res[, "shd"], method)
result.tables[["nbscores"]] = make.samplesize.ratio.table(tmp.res, tmp.res[, "nbscores"], method)
result.tables[["nbtests"]] = make.samplesize.ratio.table(tmp.res, tmp.res[, "nbtests"], method)
result.tables[["constraint.time"]] = make.samplesize.ratio.table(tmp.res, tmp.res[, "constraint.time.user"], method)
result.tables[["search.time"]] = make.samplesize.ratio.table(tmp.res, tmp.res[, "search.time.user"], method)
result.tables[["total.time"]] = make.samplesize.ratio.table(tmp.res, tmp.res[, "search.time.user"] + tmp.res[, "constraint.time.user"], method)

result.tables[["total.time.raw"]] = make.samplesize.raw.table(tmp.res, tmp.res[, "search.time.user"] + tmp.res[, "constraint.time.user"], method)
result.tables[["constraint.time.raw"]] = make.samplesize.raw.table(tmp.res, tmp.res[, "constraint.time.user"], method)
result.tables[["search.time.raw"]] = make.samplesize.raw.table(tmp.res, tmp.res[, "search.time.user"], method)

sink("tables_ecml.tex")
cat(table.datasets.to.latex(result.tables$datasets, "tab:datasets", "Datasets"))
cat(table.samplesize.to.latex(result.tables$nbtests, "tab:nbtests", "Number of CI tests increase factor (constraint-based)"))
cat(table.samplesize.to.latex(result.tables$error, "tab:error", "Skeleton error increase factor"))
cat(table.samplesize.to.latex(result.tables$recall, "tab:recall", "Skeleton recall increase factor"))
cat(table.samplesize.to.latex(result.tables$precision, "tab:precision", "Skeleton precision increase factor"))
cat(table.samplesize.to.latex(result.tables$nbscores, "tab:nbscores", "Number of scores increase factor (search-and-score)"))
cat(table.samplesize.to.latex(result.tables$bde.train, "tab:bde.train", "DBe score increase factor (train data)"))
cat(table.samplesize.to.latex(result.tables$bic.train, "tab:bic.train", "BIC score increase factor (train data)"))
cat(table.samplesize.to.latex(result.tables$bde.test, "tab:bde.test", "BDe score increase factor (test data)"))
cat(table.samplesize.to.latex(result.tables$bic.test, "tab:bic.test", "BIC score increase factor (test data)"))
cat(table.samplesize.to.latex(result.tables$shd, "tab:shd", "Structural Hamming Distance increase factor"))
cat(table.samplesize.to.latex(result.tables$constraint.time, "tab:constraint.time", "Restriction time increase factor (constraint-based)"))
cat(table.samplesize.to.latex(result.tables$search.time, "tab:search.time", "Maximization time increase factor (search-and-score)"))
cat(table.samplesize.to.latex(result.tables$total.time, "tab:total.time", "Total time increase factor"))
cat(table.samplesize.to.latex(result.tables$total.time.raw, "tab:total.time.raw", "Total time"))
cat(table.samplesize.to.latex(result.tables$constraint.time.raw, "tab:constraint.time.raw", "CB time"))
cat(table.samplesize.to.latex(result.tables$search.time.raw, "tab:search.time.raw", "SS time"))
sink()
