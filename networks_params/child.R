vars = vector()
dims = list()
probs = list()
parents = list()

vars = c(vars, "BirthAsphyxia")
dims[["BirthAsphyxia"]] = c("yes", "no")

vars = c(vars, "Disease")
dims[["Disease"]] = c("TFC", "TGA", "Fallot", "PAIVS", "TAPVD", "Lung")

vars = c(vars, "AgeAtPresentation")
dims[["AgeAtPresentation"]] = c()

vars = c(vars, "LVH")
dims[["LVH"]] = c("yes", "no")

vars = c(vars, "DuctFlow")
dims[["DuctFlow"]] = c("Rt_to_Lt", "None", "Lt_to_Rt")

vars = c(vars, "CardiacMixing")
dims[["CardiacMixing"]] = c("None", "Mild", "Complete", "Transp.")

vars = c(vars, "Sick")
dims[["Sick"]] = c("yes", "no")

vars = c(vars, "LungParenchyma")
dims[["LungParenchyma"]] = c("Normal", "Oedema", "Abnormal")

vars = c(vars, "LungFlow")
dims[["LungFlow"]] = c("Normal", "Low", "High")

vars = c(vars, "HypoxiaDistribution")
dims[["HypoxiaDistribution"]] = c("Equal", "Unequal")

vars = c(vars, "HypoxiaInO2")
dims[["HypoxiaInO2"]] = c("None", "Moderate", "Severe")

vars = c(vars, "CO2")
dims[["CO2"]] = c("Normal", "Low", "High")

vars = c(vars, "ChestXRay")
dims[["ChestXRay"]] = c("Normal", "Oligaemic", "Plethoric", "Grd.Class", "Asy/Patchy")

vars = c(vars, "Grunting")
dims[["Grunting"]] = c("yes", "no")

vars = c(vars, "LVHReport")
dims[["LVHReport"]] = c("yes", "no")

vars = c(vars, "LowerBodyO2")
dims[["LowerBodyO2"]] = c("<5", "5-12", "12+")

vars = c(vars, "RightUpQuadO2")
dims[["RightUpQuadO2"]] = c("<5", "5-12", "12+")

vars = c(vars, "CO2Report")
dims[["CO2Report"]] = c("<7.5", ">=7.5")

vars = c(vars, "XRayReport")
dims[["XRayReport"]] = c("Normal", "Oligaemic", "Plethoric", "Grd.Class", "Asy/Patchy")

vars = c(vars, "GruntingReport")
dims[["GruntingReport"]] = c("yes", "no")

parents[["BirthAsphyxia"]] = c()
probs[["BirthAsphyxia"]] = list(
  c(0., 0.),
  c(0., 0.))

parents[["Disease"]] = c("BirthAsphyxia")
probs[["Disease"]] = list(
  c(0., 0., 0., 0., 0., 0.),
  c(0., 0., 0., 0., 0., 0.))

parents[["LVH"]] = c("Disease")
probs[["LVH"]] = list(
  c(0.10, 0.90),
  c(0.10, 0.90),
  c(0.10, 0.90),
  c(0.90, 0.10),
  c(0.05, 0.95),
  c(0.10, 0.90))

parents[["DuctFlow"]] = c("Disease")
probs[["DuctFlow"]] = list(
  c(0., 0., 0.),
  c(0., 0., 0.),
  c(0., 0., 0.),
  c(0., 0., 0.),
  c(0., 0., 0.),
  c(0., 0., 0.))

parents[["CardiacMixing"]] = c("Disease")
probs[["CardiacMixing"]] = list(
  c(0., 0., 0., 0.),
  c(0., 0., 0., 0.),
  c(0., 0., 0., 0.),
  c(0., 0., 0., 0.),
  c(0., 0., 0., 0.),
  c(0., 0., 0., 0.))

parents[["LungParenchyma"]] = c("Disease")
probs[["LungParenchyma"]] = list(
  c(0., 0., 0.),
  c(0., 0., 0.),
  c(0., 0., 0.),
  c(0., 0., 0.),
  c(0., 0., 0.),
  c(0., 0., 0.))

parents[["LungFlow"]] = c("Disease")
probs[["LungFlow"]] = list(
  c(0., 0., 0.),
  c(0., 0., 0.),
  c(0., 0., 0.),
  c(0., 0., 0.),
  c(0., 0., 0.),
  c(0., 0., 0.))

parents[["Sick"]] = c("Disease")
probs[["Sick"]] = list(
  c(0., 0.),
  c(0., 0.),
  c(0., 0.),
  c(0., 0.),
  c(0., 0.),
  c(0., 0.))

parents[["Age"]] = c("Disease", "Sick")
probs[["Age"]] = list(
  c(0., 0., 0.),
  c(0., 0., 0.),
  c(0., 0., 0.),
  c(0., 0., 0.),
  c(0., 0., 0.),
  c(0., 0., 0.),
  c(0., 0., 0.),
  c(0., 0., 0.),
  c(0., 0., 0.),
  c(0., 0., 0.),
  c(0., 0., 0.),
  c(0., 0., 0.))

parents[["LVHReport"]] = c("LVH")
probs[["LVHReport"]] = list(
  c(0.9, 0.1),
  c(0.05, 0.95))
