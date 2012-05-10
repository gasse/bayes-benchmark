vars = vector()
dims = list()
probs = list()
parents = list()

vars = c(vars, "HISTORY")
dims[["HISTORY"]] = c("TRUE", "FALSE")

vars = c(vars, "CVP")
dims[["CVP"]] = c("LOW", "NORMAL", "HIGH")

vars = c(vars, "PCWP")
dims[["PCWP"]] = c("LOW", "NORMAL", "HIGH")

vars = c(vars, "HYPOVOLEMIA")
dims[["HYPOVOLEMIA"]] = c("TRUE", "FALSE")

vars = c(vars, "LVEDVOLUME")
dims[["LVEDVOLUME"]] = c("LOW", "NORMAL", "HIGH")

vars = c(vars, "LVFAILURE")
dims[["LVFAILURE"]] = c("TRUE", "FALSE")

vars = c(vars, "STROKEVOLUME")
dims[["STROKEVOLUME"]] = c("LOW", "NORMAL", "HIGH")

vars = c(vars, "ERRLOWOUTPUT")
dims[["ERRLOWOUTPUT"]] = c("TRUE", "FALSE")

vars = c(vars, "HRBP")
dims[["HRBP"]] = c("LOW", "NORMAL", "HIGH")

vars = c(vars, "HREKG")
dims[["HREKG"]] = c("LOW", "NORMAL", "HIGH")

vars = c(vars, "ERRCAUTER")
dims[["ERRCAUTER"]] = c("TRUE", "FALSE")

vars = c(vars, "HRSAT")
dims[["HRSAT"]] = c("LOW", "NORMAL", "HIGH")

vars = c(vars, "INSUFFANESTH")
dims[["INSUFFANESTH"]] = c("TRUE", "FALSE")

vars = c(vars, "ANAPHYLAXIS")
dims[["ANAPHYLAXIS"]] = c("TRUE", "FALSE")

vars = c(vars, "TPR")
dims[["TPR"]] = c("LOW", "NORMAL", "HIGH")

vars = c(vars, "EXPCO2")
dims[["EXPCO2"]] = c("ZERO", "LOW", "NORMAL", "HIGH")

vars = c(vars, "KINKEDTUBE")
dims[["KINKEDTUBE"]] = c("TRUE", "FALSE")

vars = c(vars, "MINVOL")
dims[["MINVOL"]] = c("ZERO", "LOW", "NORMAL", "HIGH")

vars = c(vars, "FIO2")
dims[["FIO2"]] = c("LOW", "NORMAL")

vars = c(vars, "PVSAT")
dims[["PVSAT"]] = c("LOW", "NORMAL", "HIGH")

vars = c(vars, "SAO2")
dims[["SAO2"]] = c("LOW", "NORMAL", "HIGH")

vars = c(vars, "PAP")
dims[["PAP"]] = c("LOW", "NORMAL", "HIGH")

vars = c(vars, "PULMEMBOLUS")
dims[["PULMEMBOLUS"]] = c("TRUE", "FALSE")

vars = c(vars, "SHUNT")
dims[["SHUNT"]] = c("NORMAL", "HIGH")

vars = c(vars, "INTUBATION")
dims[["INTUBATION"]] = c("NORMAL", "ESOPHAGEAL", "ONESIDED")

vars = c(vars, "PRESS")
dims[["PRESS"]] = c("ZERO", "LOW", "NORMAL", "HIGH")

vars = c(vars, "DISCONNECT")
dims[["DISCONNECT"]] = c("TRUE", "FALSE")

vars = c(vars, "MINVOLSET")
dims[["MINVOLSET"]] = c("LOW", "NORMAL", "HIGH")

vars = c(vars, "VENTMACH")
dims[["VENTMACH"]] = c("ZERO", "LOW", "NORMAL", "HIGH")

vars = c(vars, "VENTTUBE")
dims[["VENTTUBE"]] = c("ZERO", "LOW", "NORMAL", "HIGH")

vars = c(vars, "VENTLUNG")
dims[["VENTLUNG"]] = c("ZERO", "LOW", "NORMAL", "HIGH")

vars = c(vars, "VENTALV")
dims[["VENTALV"]] = c("ZERO", "LOW", "NORMAL", "HIGH")

vars = c(vars, "ARTCO2")
dims[["ARTCO2"]] = c("LOW", "NORMAL", "HIGH")

vars = c(vars, "CATECHOL")
dims[["CATECHOL"]] = c("NORMAL", "HIGH")

vars = c(vars, "HR")
dims[["HR"]] = c("LOW", "NORMAL", "HIGH")

vars = c(vars, "CO")
dims[["CO"]] = c("LOW", "NORMAL", "HIGH")

vars = c(vars, "BP")
dims[["BP"]] = c("LOW", "NORMAL", "HIGH")

parents[["HISTORY"]] = c("LVFAILURE")
probs[["HISTORY"]] = list(
  c(0.9, 0.1),
  c(0.01, 0.99))

parents[["CVP"]] = c("LVEDVOLUME")
probs[["CVP"]] = list(
  c(0.95, 0.04, 0.01),
  c(0.04, 0.95, 0.01),
  c(0.01, 0.29, 0.7))

parents[["PCWP"]] = c("LVEDVOLUME")
probs[["PCWP"]] = list(
  c(0.95, 0.04, 0.01),
  c(0.04, 0.95, 0.01),
  c(0.01, 0.04, 0.95))

parents[["HYPOVOLEMIA"]] = c()
probs[["HYPOVOLEMIA"]] = list(
  c(0.2, 0.8))

parents[["LVEDVOLUME"]] = c("HYPOVOLEMIA", "LVFAILURE")
probs[["LVEDVOLUME"]] = list(
  c(0.95, 0.04, 0.01),
  c(0.98, 0.01, 0.01),
  c(0.01, 0.09, 0.9),
  c(0.05, 0.9, 0.05))

parents[["LVFAILURE"]] = c()
probs[["LVFAILURE"]] = list(
  c(0.05, 0.95))

parents[["STROKEVOLUME"]] = c("HYPOVOLEMIA", "LVFAILURE")
probs[["STROKEVOLUME"]] = list(
  c(0.98, 0.01, 0.01),
  c(0.95, 0.04, 0.01),
  c(0.5, 0.49, 0.01),
  c(0.05, 0.9, 0.05))

parents[["ERRLOWOUTPUT"]] = c()
probs[["ERRLOWOUTPUT"]] = list(
  c(0.05, 0.95))

parents[["HRBP"]] = c("ERRLOWOUTPUT", "HR")
probs[["HRBP"]] = list(
  c(0.98, 0.01, 0.01),
  c(0.4, 0.59, 0.01),
  c(0.3, 0.4, 0.3),
  c(0.98, 0.01, 0.01),
  c(0.01, 0.98, 0.01),
  c(0.01, 0.01, 0.98))

parents[["HREKG"]] = c("ERRCAUTER", "HR")
probs[["HREKG"]] = list(
  c(0.33333334, 0.33333334, 0.33333334),
  c(0.33333334, 0.33333334, 0.33333334),
  c(0.33333334, 0.33333334, 0.33333334),
  c(0.98, 0.01, 0.01),
  c(0.01, 0.98, 0.01),
  c(0.01, 0.01, 0.98))

parents[["ERRCAUTER"]] = c()
probs[["ERRCAUTER"]] = list(
  c(0.1, 0.9))

parents[["HRSAT"]] = c("ERRCAUTER", "HR")
probs[["HRSAT"]] = list(
  c(0.33333334, 0.33333334, 0.33333334),
  c(0.33333334, 0.33333334, 0.33333334),
  c(0.33333334, 0.33333334, 0.33333334),
  c(0.98, 0.01, 0.01),
  c(0.01, 0.98, 0.01),
  c(0.01, 0.01, 0.98))

parents[["INSUFFANESTH"]] = c()
probs[["INSUFFANESTH"]] = list(
  c(0.1, 0.9))

parents[["ANAPHYLAXIS"]] = c()
probs[["ANAPHYLAXIS"]] = list(
  c(0.01, 0.99))

parents[["TPR"]] = c("ANAPHYLAXIS")
probs[["TPR"]] = list(
  c(0.98, 0.01, 0.01),
  c(0.3, 0.4, 0.3))

parents[["EXPCO2"]] = c("ARTCO2", "VENTLUNG")
probs[["EXPCO2"]] = list(
  c(0.97, 0.01, 0.01, 0.01),
  c(0.01, 0.97, 0.01, 0.01),
  c(0.01, 0.97, 0.01, 0.01),
  c(0.01, 0.97, 0.01, 0.01),
  c(0.97, 0.01, 0.01, 0.01),
  c(0.01, 0.01, 0.97, 0.01),
  c(0.01, 0.01, 0.97, 0.01),
  c(0.01, 0.01, 0.97, 0.01),
  c(0.97, 0.01, 0.01, 0.01),
  c(0.01, 0.01, 0.01, 0.97),
  c(0.01, 0.01, 0.01, 0.97),
  c(0.01, 0.01, 0.01, 0.97))

parents[["KINKEDTUBE"]] = c()
probs[["KINKEDTUBE"]] = list(
  c(0.04, 0.96))

parents[["MINVOL"]] = c("INTUBATION", "VENTLUNG")
probs[["MINVOL"]] = list(
  c(0.97, 0.01, 0.01, 0.01),
  c(0.01, 0.97, 0.01, 0.01),
  c(0.01, 0.01, 0.97, 0.01),
  c(0.01, 0.01, 0.01, 0.97),
  c(0.97, 0.01, 0.01, 0.01),
  c(0.6, 0.38, 0.01, 0.01),
  c(0.5, 0.48, 0.01, 0.01),
  c(0.5, 0.48, 0.01, 0.01),
  c(0.97, 0.01, 0.01, 0.01),
  c(0.01, 0.97, 0.01, 0.01),
  c(0.01, 0.01, 0.97, 0.01),
  c(0.01, 0.01, 0.01, 0.97))

parents[["FIO2"]] = c()
probs[["FIO2"]] = list(
  c(0.05, 0.95))

parents[["PVSAT"]] = c("FIO2", "VENTALV")
probs[["PVSAT"]] = list(
  c(1.0, 0.0, 0.0),
  c(0.99, 0.01, 0.0),
  c(0.95, 0.04, 0.01),
  c(0.95, 0.04, 0.01),
  c(1.0, 0.0, 0.0),
  c(0.95, 0.04, 0.01),
  c(0.01, 0.95, 0.04),
  c(0.01, 0.01, 0.98))

parents[["SAO2"]] = c("PVSAT", "SHUNT")
probs[["SAO2"]] = list(
  c(0.98, 0.01, 0.01),
  c(0.01, 0.98, 0.01),
  c(0.01, 0.01, 0.98),
  c(0.98, 0.01, 0.01),
  c(0.98, 0.01, 0.01),
  c(0.69, 0.3, 0.01))

parents[["PAP"]] = c("PULMEMBOLUS")
probs[["PAP"]] = list(
  c(0.01, 0.19, 0.8),
  c(0.05, 0.9, 0.05))

parents[["PULMEMBOLUS"]] = c()
probs[["PULMEMBOLUS"]] = list(
  c(0.01, 0.99))

parents[["SHUNT"]] = c("INTUBATION", "PULMEMBOLUS")
probs[["SHUNT"]] = list(
  c(0.1, 0.9),
  c(0.1, 0.9),
  c(0.01, 0.99),
  c(0.95, 0.05),
  c(0.95, 0.05),
  c(0.05, 0.95))

parents[["INTUBATION"]] = c()
probs[["INTUBATION"]] = list(
  c(0.92, 0.03, 0.05))

parents[["PRESS"]] = c("INTUBATION", "KINKEDTUBE", "VENTTUBE")
probs[["PRESS"]] = list(
  c(0.97, 0.01, 0.01, 0.01),
  c(0.01, 0.3, 0.49, 0.2),
  c(0.01, 0.01, 0.08, 0.9),
  c(0.01, 0.01, 0.01, 0.97),
  c(0.97, 0.01, 0.01, 0.01),
  c(0.1, 0.84, 0.05, 0.01),
  c(0.05, 0.25, 0.25, 0.45),
  c(0.01, 0.15, 0.25, 0.59),
  c(0.97, 0.01, 0.01, 0.01),
  c(0.01, 0.29, 0.3, 0.4),
  c(0.01, 0.01, 0.08, 0.9),
  c(0.01, 0.01, 0.01, 0.97),
  c(0.97, 0.01, 0.01, 0.01),
  c(0.01, 0.97, 0.01, 0.01),
  c(0.01, 0.01, 0.97, 0.01),
  c(0.01, 0.01, 0.01, 0.97),
  c(0.97, 0.01, 0.01, 0.01),
  c(0.4, 0.58, 0.01, 0.01),
  c(0.2, 0.75, 0.04, 0.01),
  c(0.2, 0.7, 0.09, 0.01),
  c(0.97, 0.01, 0.01, 0.01),
  c(0.010000001, 0.90000004, 0.080000006, 0.010000001),
  c(0.01, 0.01, 0.38, 0.6),
  c(0.01, 0.01, 0.01, 0.97))

parents[["DISCONNECT"]] = c()
probs[["DISCONNECT"]] = list(
  c(0.1, 0.9))

parents[["MINVOLSET"]] = c()
probs[["MINVOLSET"]] = list(
  c(0.05, 0.9, 0.05))

parents[["VENTMACH"]] = c("MINVOLSET")
probs[["VENTMACH"]] = list(
  c(0.05, 0.93, 0.01, 0.01),
  c(0.05, 0.01, 0.93, 0.01),
  c(0.05, 0.01, 0.01, 0.93))

parents[["VENTTUBE"]] = c("DISCONNECT", "VENTMACH")
probs[["VENTTUBE"]] = list(
  c(0.97, 0.01, 0.01, 0.01),
  c(0.97, 0.01, 0.01, 0.01),
  c(0.97, 0.01, 0.01, 0.01),
  c(0.97, 0.01, 0.01, 0.01),
  c(0.97, 0.01, 0.01, 0.01),
  c(0.01, 0.97, 0.01, 0.01),
  c(0.01, 0.01, 0.97, 0.01),
  c(0.01, 0.01, 0.01, 0.97))

parents[["VENTLUNG"]] = c("INTUBATION", "KINKEDTUBE", "VENTTUBE")
probs[["VENTLUNG"]] = list(
  c(0.97, 0.01, 0.01, 0.01),
  c(0.95000005, 0.030000001, 0.010000001, 0.010000001),
  c(0.4, 0.58, 0.01, 0.01),
  c(0.3, 0.68, 0.01, 0.01),
  c(0.97, 0.01, 0.01, 0.01),
  c(0.97, 0.01, 0.01, 0.01),
  c(0.97, 0.01, 0.01, 0.01),
  c(0.97, 0.01, 0.01, 0.01),
  c(0.97, 0.01, 0.01, 0.01),
  c(0.95000005, 0.030000001, 0.010000001, 0.010000001),
  c(0.5, 0.48, 0.01, 0.01),
  c(0.3, 0.68, 0.01, 0.01),
  c(0.97, 0.01, 0.01, 0.01),
  c(0.01, 0.97, 0.01, 0.01),
  c(0.01, 0.01, 0.97, 0.01),
  c(0.01, 0.01, 0.01, 0.97),
  c(0.97, 0.01, 0.01, 0.01),
  c(0.97, 0.01, 0.01, 0.01),
  c(0.97, 0.01, 0.01, 0.01),
  c(0.97, 0.01, 0.01, 0.01),
  c(0.97, 0.01, 0.01, 0.01),
  c(0.01, 0.97, 0.01, 0.01),
  c(0.01, 0.01, 0.97, 0.01),
  c(0.01, 0.01, 0.01, 0.97))

parents[["VENTALV"]] = c("INTUBATION", "VENTLUNG")
probs[["VENTALV"]] = list(
  c(0.97, 0.01, 0.01, 0.01),
  c(0.01, 0.97, 0.01, 0.01),
  c(0.01, 0.01, 0.97, 0.01),
  c(0.01, 0.01, 0.01, 0.97),
  c(0.97, 0.01, 0.01, 0.01),
  c(0.01, 0.97, 0.01, 0.01),
  c(0.01, 0.01, 0.97, 0.01),
  c(0.01, 0.01, 0.01, 0.97),
  c(0.97, 0.01, 0.01, 0.01),
  c(0.030000001, 0.95000005, 0.010000001, 0.010000001),
  c(0.01, 0.94, 0.04, 0.01),
  c(0.01, 0.88, 0.1, 0.01))

parents[["ARTCO2"]] = c("VENTALV")
probs[["ARTCO2"]] = list(
  c(0.01, 0.01, 0.98),
  c(0.01, 0.01, 0.98),
  c(0.04, 0.92, 0.04),
  c(0.9, 0.09, 0.01))

parents[["CATECHOL"]] = c("ARTCO2", "INSUFFANESTH", "SAO2", "TPR")
probs[["CATECHOL"]] = list(
  c(0.01, 0.99),
  c(0.01, 0.99),
  c(0.01, 0.99),
  c(0.01, 0.99),
  c(0.01, 0.99),
  c(0.01, 0.99),
  c(0.01, 0.99),
  c(0.01, 0.99),
  c(0.01, 0.99),
  c(0.01, 0.99),
  c(0.01, 0.99),
  c(0.01, 0.99),
  c(0.01, 0.99),
  c(0.01, 0.99),
  c(0.01, 0.99),
  c(0.05, 0.95),
  c(0.05, 0.95),
  c(0.01, 0.99),
  c(0.01, 0.99),
  c(0.01, 0.99),
  c(0.01, 0.99),
  c(0.05, 0.95),
  c(0.05, 0.95),
  c(0.01, 0.99),
  c(0.05, 0.95),
  c(0.05, 0.95),
  c(0.01, 0.99),
  c(0.05, 0.95),
  c(0.05, 0.95),
  c(0.01, 0.99),
  c(0.05, 0.95),
  c(0.05, 0.95),
  c(0.01, 0.99),
  c(0.05, 0.95),
  c(0.05, 0.95),
  c(0.01, 0.99),
  c(0.7, 0.3),
  c(0.7, 0.3),
  c(0.1, 0.9),
  c(0.7, 0.3),
  c(0.7, 0.3),
  c(0.1, 0.9),
  c(0.7, 0.3),
  c(0.7, 0.3),
  c(0.1, 0.9),
  c(0.95, 0.05),
  c(0.99, 0.01),
  c(0.3, 0.7),
  c(0.95, 0.05),
  c(0.99, 0.01),
  c(0.3, 0.7),
  c(0.95, 0.05),
  c(0.99, 0.01),
  c(0.3, 0.7))

parents[["HR"]] = c("CATECHOL")
probs[["HR"]] = list(
  c(0.05, 0.9, 0.05),
  c(0.01, 0.09, 0.9))

parents[["CO"]] = c("HR", "STROKEVOLUME")
probs[["CO"]] = list(
  c(0.98, 0.01, 0.01),
  c(0.95, 0.04, 0.01),
  c(0.8, 0.19, 0.01),
  c(0.95, 0.04, 0.01),
  c(0.04, 0.95, 0.01),
  c(0.01, 0.04, 0.95),
  c(0.3, 0.69, 0.01),
  c(0.01, 0.3, 0.69),
  c(0.01, 0.01, 0.98))

parents[["BP"]] = c("CO", "TPR")
probs[["BP"]] = list(
  c(0.98, 0.01, 0.01),
  c(0.98, 0.01, 0.01),
  c(0.9, 0.09, 0.01),
  c(0.98, 0.01, 0.01),
  c(0.1, 0.85, 0.05),
  c(0.05, 0.2, 0.75),
  c(0.3, 0.6, 0.1),
  c(0.05, 0.4, 0.55),
  c(0.01, 0.09, 0.9))
