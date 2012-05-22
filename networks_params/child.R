vars = vector()
dims = list()
probs = list()
parents = list()

vars = c(vars, "BirthAsphyxia")
dims[["BirthAsphyxia"]] = c("yes", "no")

vars = c(vars, "Disease")
dims[["Disease"]] = c("TFC", "TGA", "Fallot", "PAIVS", "TAPVD", "Lung")

vars = c(vars, "AgeAtPresentation")
dims[["AgeAtPresentation"]] = c("0-3 days", "4-10 days", "11-30 days")

vars = c(vars, "LVH")
dims[["LVH"]] = c("yes", "no")

vars = c(vars, "DuctFlow")
dims[["DuctFlow"]] = c("Rt_to_Lt", "None", "Lt_to_Rt")

vars = c(vars, "CardiacMixing")
dims[["CardiacMixing"]] = c("None", "Mild", "Complete", "Transp.")

vars = c(vars, "LungParenchyma")
dims[["LungParenchyma"]] = c("Normal", "Oedema", "Abnormal")

vars = c(vars, "LungFlow")
dims[["LungFlow"]] = c("Normal", "Low", "High")

vars = c(vars, "Sick")
dims[["Sick"]] = c("yes", "no")

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
  # "yes" "no"
  c(0.10, 0.90))

#1 0.104907
#2 0.895093

parents[["Disease"]] = c("BirthAsphyxia")
probs[["Disease"]] = list(
  # "TFC" "TGA" "Fallot" "PAIVS" "TAPVD" "Lung"
  c(0.20, 0.30, 0.25, 0.15, 0.05, 0.05),  # "yes"
  c(0.03, 0.33, 0.30, 0.24, 0.05, 0.05))  # "no"

#0 0.20177344 0.02848086
#1 0.29394813 0.33055678
#2 0.25670583 0.29952974
#3 0.14475726 0.23950739
#4 0.06353358 0.04900101
#5 0.03928176 0.05292421

parents[["AgeAtPresentation"]] = c("Disease", "Sick")
probs[["AgeAtPresentation"]] = list(
  # 0-3 days" "4-10 days" "11-30 days
  c(0.92, 0.04, 0.04),  # "TFC"    "yes"
  c(0.80, 0.15, 0.05),  # "TGA"    "yes"
  c(0.70, 0.15, 0.15),  # "Fallot" "yes"
  c(0.80, 0.15, 0.05),  # "PAIVS"  "yes"
  c(0.80, 0.15, 0.05),  # "TAPVD"  "yes"
  c(0.90, 0.05, 0.05),  # "Lung"   "yes"
  c(0.80, 0.15, 0.05),  # "TFC"    "no"
  c(0.70, 0.20, 0.10),  # "TGA"    "no"
  c(0.25, 0.25, 0.50),  # "Fallot" "no"
  c(0.80, 0.15, 0.05),  # "PAIVS"  "no"
  c(0.70, 0.25, 0.05),  # "TAPVD"  "no"
  c(0.80, 0.15, 0.05))  # "Lung"   "no"

#0 0.92074849 0.79513514 0.66609294 0.77969909 0.80261137 0.90450686 0.82306971 0.69681725 0.25031230 0.80070959 0.66175025 0.77576112
#1 0.04265272 0.14633907 0.17359233 0.15487780 0.14426523 0.07629001 0.13551110 0.19908205 0.24855559 0.15192685 0.27171419 0.18676815
#2 0.03659879 0.05852580 0.16031473 0.06542311 0.05312340 0.01920314 0.04141919 0.10410069 0.50113210 0.04736356 0.06653556 0.03747073

parents[["LVH"]] = c("Disease")
probs[["LVH"]] = list(
  # "yes" "no"
  c(0.10, 0.90),  # "TFC"
  c(0.10, 0.90),  # "TGA"
  c(0.10, 0.90),  # "Fallot"
  c(0.90, 0.10),  # "PAIVS"
  c(0.05, 0.95),  # "TAPVD"
  c(0.10, 0.90))  # "Lung"

#0 0.11413477 0.09521098 0.09403623 0.90341795 0.06812115 0.10947521
#1 0.88586523 0.90478902 0.90596377 0.09658205 0.93187885 0.89052479

parents[["DuctFlow"]] = c("Disease")
probs[["DuctFlow"]] = list(
  # "Rt_to_Lt" "None" "Lt_to_Rt"
  c(0.15, 0.05, 0.80),  #  "TFC"
  c(0.10, 0.80, 0.10),  #  "TGA"
  c(0.80, 0.20, 0.00),  #  "Fallot"
  c(1.00, 0.00, 0.00),  #  "PAIVS"
  c(0.34, 0.33, 0.33),  #  "TAPVD"
  c(0.20, 0.40, 0.40))  #  "Lung"

#0 0.16457337 0.10289847 0.81802847 1.00000000 0.34042161 0.21687291
#1 0.03159888 0.80747110 0.18197153 0.00000000 0.32688944 0.36988529
#2 0.80382775 0.08963043 0.00000000 0.00000000 0.33268894 0.41324180

parents[["CardiacMixing"]] = c("Disease")
probs[["CardiacMixing"]] = list(
  # "None" "Mild" "Complete" "Transp."
  c(0.40, 0.40, 0.15, 0.05),  #  "TFC"
  c(0.05, 0.10, 0.10, 0.75),  #  "TGA"
  c(0.02, 0.16, 0.80, 0.02),  #  "Fallot"
  c(0.01, 0.02, 0.95, 0.02),  #  "PAIVS"
  c(0.01, 0.03, 0.95, 0.01),  #  "TAPVD"
  c(0.35, 0.55, 0.05, 0.05))  #  "Lung"

#0 0.390251196 0.021952053 0.017136191 0.009400896 0.007640615 0.382711589
#1 0.429226475 0.084263425 0.153264074 0.021496444 0.040044187 0.557763526
#2 0.154206539 0.082270372 0.810067315 0.953623599 0.938322747 0.041640322
#3 0.026315789 0.811514151 0.019532420 0.015479061 0.013992451 0.017884563

parents[["LungParenchyma"]] = c("Disease")
probs[["LungParenchyma"]] = list(
  # "Normal" "Oedema" "Abnormal"
  c(0.60, 0.15, 0.25),  #  "TFC"
  c(0.80, 0.05, 0.15),  #  "TGA"
  c(0.80, 0.05, 0.15),  #  "Fallot"
  c(0.80, 0.05, 0.15),  #  "PAIVS"
  c(0.10, 0.60, 0.30),  #  "TAPVD"
  c(0.05, 0.30, 0.65))  #  "Lung"

#0 0.60625997 0.80576277 0.79122854 0.81036125 0.07935193 0.01887815
#1 0.12091308 0.04211036 0.05303233 0.04516077 0.61649636 0.29365008
#2 0.27282695 0.15212687 0.15573913 0.14447799 0.30415171 0.68747177

parents[["LungFlow"]] = c("Disease")
probs[["LungFlow"]] = list(
  # "Normal" "Low" "High"
  c(0.30, 0.65, 0.05),  #  "TFC"
  c(0.20, 0.05, 0.75),  #  "TGA"
  c(0.15, 0.80, 0.05),  #  "Fallot"
  c(0.10, 0.85, 0.05),  #  "PAIVS"
  c(0.25, 0.10, 0.65),  #  "TAPVD"
  c(0.70, 0.10, 0.20))  #  "Lung"

#0 0.29196571 0.20226639 0.14976432 0.09028101 0.25747952 0.68611688
#1 0.65779506 0.05050965 0.80142828 0.85884474 0.09739483 0.10757836
#2 0.05023923 0.74722396 0.04880740 0.05087424 0.64512566 0.20630476

parents[["Sick"]] = c("Disease")
probs[["Sick"]] = list(
  # "yes" "no
  c(0.35, 0.65),  #  "TFC"
  c(0.30, 0.70),  #  "TGA"
  c(0.20, 0.80),  #  "Fallot"
  c(0.30, 0.70),  #  "PAIVS"
  c(0.70, 0.30),  #  "TAPVD"
  c(0.70, 0.30))  #  "Lung"

#0 0.3622408 0.2897045 0.1923447 0.2976072 0.7191384 0.6914461
#1 0.6377592 0.7102955 0.8076553 0.7023928 0.2808616 0.3085539

parents[["HypoxiaDistribution"]] = c("DuctFlow", "CardiacMixing")
probs[["HypoxiaDistribution"]] = list(
  # "Equal" "Unequal"
  c(0.95, 0.05),  # "Rt_to_Lt" "None"
  c(0.95, 0.05),  # "None"     "None"
  c(0.05, 0.95),  # "Lt_to_Rt" "None"
  c(0.95, 0.05),  # "Rt_to_Lt" "Mild"
  c(0.95, 0.05),  # "None"     "Mild"
  c(0.45, 0.55),  # "Lt_to_Rt" "Mild"
  c(0.95, 0.05),  # "Rt_to_Lt" "Complete"
  c(0.95, 0.05),  # "None"     "Complete"
  c(0.95, 0.05),  # "Lt_to_Rt" "Complete"
  c(0.95, 0.05),  # "Rt_to_Lt" "Transp."
  c(0.95, 0.05),  # "None"     "Transp."
  c(0.50, 0.50))  # "Lt_to_Rt" "Transp."

#0 0.96888889 0.93912760 0.03920465 0.94001150 0.94582043 0.46010929 0.95177575 0.94750597 0.97331616 0.95151280 0.94714888 0.48001487
#1 0.03111111 0.06087240 0.96079535 0.05998850 0.05417957 0.53989071 0.04822425 0.05249403 0.02668384 0.04848720 0.05285112 0.51998513

parents[["HypoxiaInO2"]] = c("CardiacMixing", "LungParenchyma")
probs[["HypoxiaInO2"]] = list(
  # "None" "Moderate" "Severe"
  c(0.90, 0.05, 0.05),  # "None"     "Normal"
  c(0.10, 0.80, 0.10),  # "Mild"     "Normal"
  c(0.10, 0.70, 0.20),  # "Complete" "Normal"
  c(0.02, 0.18, 0.80),  # "Transp."  "Normal"
  c(0.15, 0.75, 0.10),  # "None"     "Oedema"
  c(0.10, 0.75, 0.15),  # "Mild"     "Oedema"
  c(0.05, 0.65, 0.30),  # "Complete" "Oedema"
  c(0.05, 0.25, 0.70),  # "Transp."  "Oedema"
  c(0.75, 0.15, 0.10),  # "None"     "Abnormal"
  c(0.10, 0.60, 0.30),  # "Mild"     "Abnormal"
  c(0.10, 0.50, 0.40),  # "Complete" "Abnormal"
  c(0.05, 0.20, 0.75))  # "Transp."  "Abnormal"

#0 0.92011354 0.08015482 0.09674436 0.02459637 0.17575083 0.10837711 0.04343712 0.04717334 0.73988691 0.11889251 0.10012380 0.02824558
#1 0.06062449 0.81721705 0.70918158 0.17999495 0.74805339 0.73845729 0.63882677 0.24223137 0.17833841 0.61275370 0.48617559 0.21637178
#2 0.01926196 0.10262813 0.19407406 0.79540868 0.07619577 0.15316561 0.31773611 0.71059528 0.08177468 0.26835380 0.41370061 0.75538265

parents[["CO2"]] = c("LungParenchyma")
probs[["CO2"]] = list(
  # "Normal" "Low" "High"
  c(0.80, 0.10, 0.10), # "Normal"
  c(0.70, 0.05, 0.25), # "Oedema"
  c(0.45, 0.05, 0.50)) # "Abnormal"

#0 0.80141614 0.68374594 0.43112122
#1 0.09614785 0.04991883 0.05535939
#2 0.10243601 0.26633523 0.51351940

parents[["ChestXRay"]] = c("LungParenchyma", "LungFlow")
probs[["ChestXRay"]] = list(
  # "Normal" "Oligaemic" "Plethoric" "Grd.Class" "Asy/Patchy"
  c(0.90, 0.03, 0.03, 0.01, 0.03), # "Normal" "Normal"
  c(0.05, 0.02, 0.10, 0.73, 0.10), # "Low"    "Normal"
  c(0.05, 0.05, 0.05, 0.05, 0.80), # "High"   "Normal"
  c(0.15, 0.80, 0.02, 0.02, 0.01), # "Normal" "Low"
  c(0.05, 0.20, 0.05, 0.50, 0.20), # "Low"    "Low"
  c(0.05, 0.15, 0.05, 0.05, 0.70), # "High"   "Low"
  c(0.15, 0.01, 0.80, 0.03, 0.01), # "Normal" "High"
  c(0.05, 0.02, 0.36, 0.41, 0.16), # "Low"    "High"
  c(0.25, 0.30, 0.03, 0.35, 0.07)) # "High"   "High"

#0 0.891948116 0.064399794 0.060195568 0.135304659 0.045640018 0.042194093 0.148844774 0.051567657 0.243228303
#1 0.028919889 0.019062339 0.047187584 0.807470418 0.190418619 0.163302543 0.006839603 0.015676568 0.309405354
#2 0.031815957 0.100463679 0.043240334 0.021382629 0.064530754 0.057703273 0.795833681 0.365649065 0.028903104
#3 0.015622451 0.730894728 0.061720642 0.018510335 0.501586822 0.048865321 0.039869881 0.409928493 0.345415778
#4 0.031693588 0.085179461 0.787655872 0.017331959 0.197823787 0.687934770 0.008612061 0.157178218 0.073047461

parents[["Grunting"]] = c("LungParenchyma", "Sick")
probs[["Grunting"]] = list( #
  # "yes" "no"
  c(0.20, 0.80), # "Normal" "yes"
  c(0.38, 0.62), # "Low"    "yes"
  c(0.80, 0.20), # "High"   "yes"
  c(0.05, 0.95), # "Normal" "no"
  c(0.20, 0.80), # "Low"    "no"
  c(0.62, 0.38)) # "High"   "no"

#0 0.20311413 0.37975760 0.79611905 0.05077544 0.20172715 0.61631026
#1 0.79688587 0.62024240 0.20388095 0.94922456 0.79827285 0.38368974

parents[["LVHReport"]] = c("LVH")
probs[["LVHReport"]] = list(
  # "yes" "no"
  c(0.90, 0.10),  # "yes"
  c(0.05, 0.95))  # "no"

#0 0.90409347 0.05425449
#1 0.09590653 0.94574551

parents[["LowerBodyO2"]] = c("HypoxiaDistribution", "HypoxiaInO2")
probs[["LowerBodyO2"]] = list(
  # "<5" "5-12" "12+"
  c(0.10, 0.33, 0.57), # "Equal"   "None"
  c(0.42, 0.52, 0.06), # "Unequal" "None"
  c(0.30, 0.60, 0.10), # "Equal"   "Moderate"
  c(0.50, 0.46, 0.04), # "Unequal" "Moderate"
  c(0.50, 0.40, 0.10), # "Equal"   "Severe"
  c(0.60, 0.37, 0.03)) # "Unequal" "Severe"

#0 0.08935445 0.42690294 0.30234446 0.48742929 0.50900508 0.61042990 0.50900508 0.61042990
#1 0.33652260 0.51510270 0.60486498 0.46804944 0.60486498 0.46804944 0.39844731 0.36681932
#2 0.57412295 0.05799436 0.09279056 0.04452127 0.09279056 0.04452127 0.09254762 0.02275078

parents[["RightUpQuadO2"]] = c("HypoxiaInO2")
probs[["RightUpQuadO2"]] = list(
  # "<5", "5-12", "12+"
  c(0.08, 0.28, 0.64), # "None"
  c(0.30, 0.60, 0.10), # "Moderate"
  c(0.50, 0.40, 0.10)) # "Severe"

#0 0.08435556 0.30466870 0.49604676
#1 0.27872322 0.59769920 0.40385456
#2 0.63692122 0.09763210 0.10009867

parents[["CO2Report"]] = c("CO2")
probs[["CO2Report"]] = list(
  # "<7.5" ">=7.5"
  c(0.90, 0.10), # "Normal"
  c(0.90, 0.10), # "Low"
  c(0.10, 0.90)) # "High"

#0 0.90290547 0.89338276 0.11012496
#1 0.09709453 0.10661724 0.88987504

parents[["XRayReport"]] = c("ChestXRay")
probs[["XRayReport"]] = list(
  # "Normal" "Oligaemic" "Plethoric" "Grd.Class" "Asy/Patchy"
  c(0.80, 0.05, 0.05, 0.04, 0.06), # "Normal"
  c(0.10, 0.80, 0.02, 0.02, 0.06), # "Oligaemic"
  c(0.10, 0.02, 0.80, 0.02, 0.06), # "Plethoric"
  c(0.10, 0.02, 0.08, 0.62, 0.18), # "Grd.Class"
  c(0.09, 0.01, 0.10, 0.10, 0.70)) # "Asy/Patchy"

#0 0.811744311 0.106939283 0.098446493 0.090294901 0.083345534
#1 0.053389217 0.794638488 0.024168073 0.020071013 0.009077599
#2 0.051216783 0.017959875 0.796680947 0.083242923 0.091691069
#3 0.021987668 0.021795194 0.017482366 0.625308216 0.099890190
#4 0.061662022 0.058667160 0.063222121 0.181082947 0.715995608

parents[["GruntingReport"]] = c("Grunting")
probs[["GruntingReport"]] = list(
  # "yes" "no"
  c(0.82, 0.18), # "yes"
  c(0.10, 0.90)) # "no"

#0 0.8199946 0.1057398
#1 0.1800054 0.8942602
