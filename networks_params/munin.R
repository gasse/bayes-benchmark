vars = vector()
dims = list()
probs = list()
parents = list()

vars = c(vars, "R_LNLT1_APB_DENERV")
dims[["R_LNLT1_APB_DENERV"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_LNLT1_APB_NEUR_ACT")
dims[["R_LNLT1_APB_NEUR_ACT"]] = c("NO", "FASCIC", "NEUROMYO", "MYOKYMIA", "TETANUS", "OTHER")

vars = c(vars, "R_LNLT1_APB_MUDENS")
dims[["R_LNLT1_APB_MUDENS"]] = c("NORMAL", "INCR", "V.INCR")

vars = c(vars, "R_LNLT1_APB_DE_REGEN")
dims[["R_LNLT1_APB_DE_REGEN"]] = c("NO", "YES")

vars = c(vars, "R_LNLT1_APB_MUSIZE")
dims[["R_LNLT1_APB_MUSIZE"]] = c("V.SMALL", "SMALL", "NORMAL", "INCR", "LARGE", "V.LARGE")

vars = c(vars, "R_LNLT1_APB_MALOSS")
dims[["R_LNLT1_APB_MALOSS"]] = c("NO", "MILD", "MOD", "SEV", "TOTAL")

vars = c(vars, "DIFFN_DUMMY_3")
dims[["DIFFN_DUMMY_3"]] = c("dummy")

vars = c(vars, "DIFFN_DUMMY_2")
dims[["DIFFN_DUMMY_2"]] = c("dummy")

vars = c(vars, "DIFFN_M_SEV_PROX")
dims[["DIFFN_M_SEV_PROX"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "DIFFN_DUMMY_1")
dims[["DIFFN_DUMMY_1"]] = c("dummy")

vars = c(vars, "DIFFN_TYPE")
dims[["DIFFN_TYPE"]] = c("MOTOR", "MIXED", "SENS")

vars = c(vars, "DIFFN_SEV")
dims[["DIFFN_SEV"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "DIFFN_MOT_SEV")
dims[["DIFFN_MOT_SEV"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "DIFFN_DISTR")
dims[["DIFFN_DISTR"]] = c("DIST", "PROX", "RANDOM")

vars = c(vars, "DIFFN_SENS_SEV")
dims[["DIFFN_SENS_SEV"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_LNLLP_APB_DENERV")
dims[["R_LNLLP_APB_DENERV"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_LNLLP_APB_NEUR_ACT")
dims[["R_LNLLP_APB_NEUR_ACT"]] = c("NO", "FASCIC", "NEUROMYO", "MYOKYMIA", "TETANUS", "OTHER")

vars = c(vars, "R_LNLLP_APB_MUDENS")
dims[["R_LNLLP_APB_MUDENS"]] = c("NORMAL", "INCR", "V.INCR")

vars = c(vars, "R_LNLLP_APB_DE_REGEN")
dims[["R_LNLLP_APB_DE_REGEN"]] = c("NO", "YES")

vars = c(vars, "R_LNLW_MED_TIME")
dims[["R_LNLW_MED_TIME"]] = c("ACUTE", "SUBACUTE", "CHRONIC", "OLD")

vars = c(vars, "DIFFN_TIME")
dims[["DIFFN_TIME"]] = c("ACUTE", "SUBACUTE", "CHRONIC", "OLD")

vars = c(vars, "DIFFN_M_SEV_DIST")
dims[["DIFFN_M_SEV_DIST"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_LNLBE_MED_TIME")
dims[["R_LNLBE_MED_TIME"]] = c("ACUTE", "SUBACUTE", "CHRONIC", "OLD")

vars = c(vars, "R_LNLLP_APB_MUSIZE")
dims[["R_LNLLP_APB_MUSIZE"]] = c("V.SMALL", "SMALL", "NORMAL", "INCR", "LARGE", "V.LARGE")

vars = c(vars, "R_LNLLP_APB_MALOSS")
dims[["R_LNLLP_APB_MALOSS"]] = c("NO", "MILD", "MOD", "SEV", "TOTAL")

vars = c(vars, "DIFFN_PATHO")
dims[["DIFFN_PATHO"]] = c("DEMY", "BLOCK", "AXONAL", "V.E.REIN", "E.REIN")

vars = c(vars, "DIFFN_S_SEV_DIST")
dims[["DIFFN_S_SEV_DIST"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_MYDY_APB_DENERV")
dims[["R_MYDY_APB_DENERV"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_MYOP_APB_DENERV")
dims[["R_MYOP_APB_DENERV"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_LNLW_APB_DENERV")
dims[["R_LNLW_APB_DENERV"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_DIFFN_APB_DENERV")
dims[["R_DIFFN_APB_DENERV"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_LNLBE_APB_DENERV")
dims[["R_LNLBE_APB_DENERV"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_LNLT1_LP_APB_DENERV")
dims[["R_LNLT1_LP_APB_DENERV"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_LNLW_APB_NEUR_ACT")
dims[["R_LNLW_APB_NEUR_ACT"]] = c("NO", "FASCIC", "NEUROMYO", "MYOKYMIA", "TETANUS", "OTHER")

vars = c(vars, "R_DIFFN_APB_NEUR_ACT")
dims[["R_DIFFN_APB_NEUR_ACT"]] = c("NO", "FASCIC", "NEUROMYO", "MYOKYMIA", "TETANUS", "OTHER")

vars = c(vars, "R_LNLBE_APB_NEUR_ACT")
dims[["R_LNLBE_APB_NEUR_ACT"]] = c("NO", "FASCIC", "NEUROMYO", "MYOKYMIA", "TETANUS", "OTHER")

vars = c(vars, "R_LNLT1_LP_APB_NEUR_ACT")
dims[["R_LNLT1_LP_APB_NEUR_ACT"]] = c("NO", "FASCIC", "NEUROMYO", "MYOKYMIA", "TETANUS", "OTHER")

vars = c(vars, "R_MYDY_APB_MUDENS")
dims[["R_MYDY_APB_MUDENS"]] = c("NORMAL", "INCR", "V.INCR")

vars = c(vars, "R_MYOP_APB_MUDENS")
dims[["R_MYOP_APB_MUDENS"]] = c("NORMAL", "INCR", "V.INCR")

vars = c(vars, "R_LNLW_APB_MUDENS")
dims[["R_LNLW_APB_MUDENS"]] = c("NORMAL", "INCR", "V.INCR")

vars = c(vars, "R_DIFFN_APB_MUDENS")
dims[["R_DIFFN_APB_MUDENS"]] = c("NORMAL", "INCR", "V.INCR")

vars = c(vars, "R_LNLBE_APB_MUDENS")
dims[["R_LNLBE_APB_MUDENS"]] = c("NORMAL", "INCR", "V.INCR")

vars = c(vars, "R_LNLT1_LP_APB_MUDENS")
dims[["R_LNLT1_LP_APB_MUDENS"]] = c("NORMAL", "INCR", "V.INCR")

vars = c(vars, "R_MYDY_APB_DE_REGEN")
dims[["R_MYDY_APB_DE_REGEN"]] = c("NO", "YES")

vars = c(vars, "R_MYOP_APB_DE_REGEN")
dims[["R_MYOP_APB_DE_REGEN"]] = c("NO", "YES")

vars = c(vars, "R_LNLW_APB_DE_REGEN")
dims[["R_LNLW_APB_DE_REGEN"]] = c("NO", "YES")

vars = c(vars, "R_DIFFN_APB_DE_REGEN")
dims[["R_DIFFN_APB_DE_REGEN"]] = c("NO", "YES")

vars = c(vars, "R_LNLBE_APB_DE_REGEN")
dims[["R_LNLBE_APB_DE_REGEN"]] = c("NO", "YES")

vars = c(vars, "R_LNLT1_LP_APB_DE_REGEN")
dims[["R_LNLT1_LP_APB_DE_REGEN"]] = c("NO", "YES")

vars = c(vars, "R_MYOP_APB_MUSIZE")
dims[["R_MYOP_APB_MUSIZE"]] = c("V.SMALL", "SMALL", "NORMAL", "INCR", "LARGE", "V.LARGE")

vars = c(vars, "R_MYDY_APB_MUSIZE")
dims[["R_MYDY_APB_MUSIZE"]] = c("V.SMALL", "SMALL", "NORMAL", "INCR", "LARGE", "V.LARGE")

vars = c(vars, "R_LNLW_MEDD2_DISP_WD")
dims[["R_LNLW_MEDD2_DISP_WD"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_DIFFN_MEDD2_SALOSS")
dims[["R_DIFFN_MEDD2_SALOSS"]] = c("NO", "MILD", "MOD", "SEV", "TOTAL")

vars = c(vars, "R_LNLW_MEDD2_SALOSS_WD")
dims[["R_LNLW_MEDD2_SALOSS_WD"]] = c("NO", "MILD", "MOD", "SEV", "TOTAL")

vars = c(vars, "R_NMT_APB_DENERV")
dims[["R_NMT_APB_DENERV"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_MYOP_MYDY_APB_DENERV")
dims[["R_MYOP_MYDY_APB_DENERV"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_DIFFN_LNLW_APB_DENERV")
dims[["R_DIFFN_LNLW_APB_DENERV"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_LNLT1_LP_BE_APB_DENERV")
dims[["R_LNLT1_LP_BE_APB_DENERV"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_MYAS_APB_MUDENS")
dims[["R_MYAS_APB_MUDENS"]] = c("NORMAL", "INCR", "V.INCR")

vars = c(vars, "R_MYOP_MYDY_APB_MUDENS")
dims[["R_MYOP_MYDY_APB_MUDENS"]] = c("NORMAL", "INCR", "V.INCR")

vars = c(vars, "R_DIFFN_LNLW_APB_MUDENS")
dims[["R_DIFFN_LNLW_APB_MUDENS"]] = c("NORMAL", "INCR", "V.INCR")

vars = c(vars, "R_LNLT1_LP_BE_APB_MUDENS")
dims[["R_LNLT1_LP_BE_APB_MUDENS"]] = c("NORMAL", "INCR", "V.INCR")

vars = c(vars, "R_DIFFN_LNLW_APB_DE_REGEN")
dims[["R_DIFFN_LNLW_APB_DE_REGEN"]] = c("NO", "YES")

vars = c(vars, "R_LNLT1_LP_BE_APB_DE_REGEN")
dims[["R_LNLT1_LP_BE_APB_DE_REGEN"]] = c("NO", "YES")

vars = c(vars, "R_DIFFN_APB_MUSIZE")
dims[["R_DIFFN_APB_MUSIZE"]] = c("V.SMALL", "SMALL", "NORMAL", "INCR", "LARGE", "V.LARGE")

vars = c(vars, "R_LNLW_APB_MUSIZE")
dims[["R_LNLW_APB_MUSIZE"]] = c("V.SMALL", "SMALL", "NORMAL", "INCR", "LARGE", "V.LARGE")

vars = c(vars, "R_DIFFN_APB_MALOSS")
dims[["R_DIFFN_APB_MALOSS"]] = c("NO", "MILD", "MOD", "SEV", "TOTAL")

vars = c(vars, "R_LNLW_APB_MALOSS")
dims[["R_LNLW_APB_MALOSS"]] = c("NO", "MILD", "MOD", "SEV", "TOTAL")

vars = c(vars, "R_LNLT1_LP_APB_MUSIZE")
dims[["R_LNLT1_LP_APB_MUSIZE"]] = c("V.SMALL", "SMALL", "NORMAL", "INCR", "LARGE", "V.LARGE")

vars = c(vars, "R_LNLBE_APB_MUSIZE")
dims[["R_LNLBE_APB_MUSIZE"]] = c("V.SMALL", "SMALL", "NORMAL", "INCR", "LARGE", "V.LARGE")

vars = c(vars, "R_LNLBE_APB_MALOSS")
dims[["R_LNLBE_APB_MALOSS"]] = c("NO", "MILD", "MOD", "SEV", "TOTAL")

vars = c(vars, "R_LNLT1_LP_APB_MALOSS")
dims[["R_LNLT1_LP_APB_MALOSS"]] = c("NO", "MILD", "MOD", "SEV", "TOTAL")

vars = c(vars, "R_LNLT1_LP_BE_APB_MUSIZE")
dims[["R_LNLT1_LP_BE_APB_MUSIZE"]] = c("V.SMALL", "SMALL", "NORMAL", "INCR", "LARGE", "V.LARGE")

vars = c(vars, "R_DIFFN_LNLW_APB_MUSIZE")
dims[["R_DIFFN_LNLW_APB_MUSIZE"]] = c("V.SMALL", "SMALL", "NORMAL", "INCR", "LARGE", "V.LARGE")

vars = c(vars, "R_LNL_DIFFN_APB_DENERV")
dims[["R_LNL_DIFFN_APB_DENERV"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_MUSCLE_APB_DENERV")
dims[["R_MUSCLE_APB_DENERV"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_DIFFN_LNLW_APB_NEUR_ACT")
dims[["R_DIFFN_LNLW_APB_NEUR_ACT"]] = c("NO", "FASCIC", "NEUROMYO", "MYOKYMIA", "TETANUS", "OTHER")

vars = c(vars, "R_LNLT1_LP_BE_APB_NEUR_ACT")
dims[["R_LNLT1_LP_BE_APB_NEUR_ACT"]] = c("NO", "FASCIC", "NEUROMYO", "MYOKYMIA", "TETANUS", "OTHER")

vars = c(vars, "R_MUSCLE_APB_MUDENS")
dims[["R_MUSCLE_APB_MUDENS"]] = c("NORMAL", "INCR", "V.INCR")

vars = c(vars, "R_LNL_DIFFN_APB_MUDENS")
dims[["R_LNL_DIFFN_APB_MUDENS"]] = c("NORMAL", "INCR", "V.INCR")

vars = c(vars, "R_MYOP_MYDY_APB_DE_REGEN")
dims[["R_MYOP_MYDY_APB_DE_REGEN"]] = c("NO", "YES")

vars = c(vars, "R_LNL_DIFFN_APB_DE_REGEN")
dims[["R_LNL_DIFFN_APB_DE_REGEN"]] = c("NO", "YES")

vars = c(vars, "R_LNLW_MED_SEV")
dims[["R_LNLW_MED_SEV"]] = c("NO", "MILD", "MOD", "SEV", "TOTAL")

vars = c(vars, "R_LNLW_MED_PATHO")
dims[["R_LNLW_MED_PATHO"]] = c("DEMY", "BLOCK", "AXONAL", "V.E.REIN", "E.REIN")

vars = c(vars, "R_LNLBE_MED_DIFSLOW")
dims[["R_LNLBE_MED_DIFSLOW"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_LNLW_MED_BLOCK")
dims[["R_LNLW_MED_BLOCK"]] = c("NO", "MILD", "MOD", "SEV", "TOTAL")

vars = c(vars, "R_MYAS_APB_NMT")
dims[["R_MYAS_APB_NMT"]] = c("NO", "MOD.PRE", "SEV.PRE", "MLD.POST", "MOD.POST", "SEV.POST", "MIXED")

vars = c(vars, "R_DE_REGEN_APB_NMT")
dims[["R_DE_REGEN_APB_NMT"]] = c("NO", "MOD.PRE", "SEV.PRE", "MLD.POST", "MOD.POST", "SEV.POST", "MIXED")

vars = c(vars, "R_LNL_DIFFN_APB_MUSIZE")
dims[["R_LNL_DIFFN_APB_MUSIZE"]] = c("V.SMALL", "SMALL", "NORMAL", "INCR", "LARGE", "V.LARGE")

vars = c(vars, "R_MYOP_MYDY_APB_MUSIZE")
dims[["R_MYOP_MYDY_APB_MUSIZE"]] = c("V.SMALL", "SMALL", "NORMAL", "INCR", "LARGE", "V.LARGE")

vars = c(vars, "R_DIFFN_LNLW_APB_MALOSS")
dims[["R_DIFFN_LNLW_APB_MALOSS"]] = c("NO", "MILD", "MOD", "SEV", "TOTAL")

vars = c(vars, "R_LNLT1_LP_BE_APB_MALOSS")
dims[["R_LNLT1_LP_BE_APB_MALOSS"]] = c("NO", "MILD", "MOD", "SEV", "TOTAL")

vars = c(vars, "R_DIFFN_MED_DIFSLOW")
dims[["R_DIFFN_MED_DIFSLOW"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_LNLBE_MED_SEV")
dims[["R_LNLBE_MED_SEV"]] = c("NO", "MILD", "MOD", "SEV", "TOTAL")

vars = c(vars, "R_LNLBE_MED_PATHO")
dims[["R_LNLBE_MED_PATHO"]] = c("DEMY", "BLOCK", "AXONAL", "V.E.REIN", "E.REIN")

vars = c(vars, "R_LNLBE_MED_BLOCK")
dims[["R_LNLBE_MED_BLOCK"]] = c("NO", "MILD", "MOD", "SEV", "TOTAL")

vars = c(vars, "R_DIFFN_MED_BLOCK")
dims[["R_DIFFN_MED_BLOCK"]] = c("NO", "MILD", "MOD", "SEV", "TOTAL")

vars = c(vars, "R_LNLW_MEDD2_RD_WD")
dims[["R_LNLW_MEDD2_RD_WD"]] = c("NO", "MOD", "SEV")

vars = c(vars, "R_LNLW_MEDD2_LD_WD")
dims[["R_LNLW_MEDD2_LD_WD"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_LNLBE_MEDD2_DIFSLOW_WD")
dims[["R_LNLBE_MEDD2_DIFSLOW_WD"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_LNLW_MEDD2_BLOCK_WD")
dims[["R_LNLW_MEDD2_BLOCK_WD"]] = c("NO", "MILD", "MOD", "SEV", "TOTAL")

vars = c(vars, "R_DIFFN_LNLW_MEDD2_DISP_WD")
dims[["R_DIFFN_LNLW_MEDD2_DISP_WD"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_LNLBE_MEDD2_SALOSS_EW")
dims[["R_LNLBE_MEDD2_SALOSS_EW"]] = c("NO", "MILD", "MOD", "SEV", "TOTAL")

vars = c(vars, "R_DIFFN_LNLW_MEDD2_SALOSS")
dims[["R_DIFFN_LNLW_MEDD2_SALOSS"]] = c("NO", "MILD", "MOD", "SEV", "TOTAL")

vars = c(vars, "R_DIFFN_MEDD2_DIFSLOW")
dims[["R_DIFFN_MEDD2_DIFSLOW"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_LNLBE_MEDD2_RD_EW")
dims[["R_LNLBE_MEDD2_RD_EW"]] = c("NO", "MOD", "SEV")

vars = c(vars, "R_LNLBE_MEDD2_LD_EW")
dims[["R_LNLBE_MEDD2_LD_EW"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_LNLBE_MEDD2_BLOCK_EW")
dims[["R_LNLBE_MEDD2_BLOCK_EW"]] = c("NO", "MILD", "MOD", "SEV", "TOTAL")

vars = c(vars, "R_DIFFN_MEDD2_BLOCK")
dims[["R_DIFFN_MEDD2_BLOCK"]] = c("NO", "MILD", "MOD", "SEV", "TOTAL")

vars = c(vars, "R_LNLBE_MEDD2_DISP_EW")
dims[["R_LNLBE_MEDD2_DISP_EW"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_DIFFN_MEDD2_DISP")
dims[["R_DIFFN_MEDD2_DISP"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_MED_RD_WA")
dims[["R_MED_RD_WA"]] = c("NO", "MOD", "SEV")

vars = c(vars, "R_MED_LD_WA")
dims[["R_MED_LD_WA"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_MED_DIFSLOW_WA")
dims[["R_MED_DIFSLOW_WA"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_MED_BLOCK_WA")
dims[["R_MED_BLOCK_WA"]] = c("NO", "MILD", "MOD", "SEV", "TOTAL")

vars = c(vars, "R_MED_DIFSLOW_EW")
dims[["R_MED_DIFSLOW_EW"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_MED_RD_EW")
dims[["R_MED_RD_EW"]] = c("NO", "MOD", "SEV")

vars = c(vars, "R_MED_LD_EW")
dims[["R_MED_LD_EW"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_MEDD2_RD_WD")
dims[["R_MEDD2_RD_WD"]] = c("NO", "MOD", "SEV")

vars = c(vars, "R_MEDD2_LD_WD")
dims[["R_MEDD2_LD_WD"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_MEDD2_DIFSLOW_WD")
dims[["R_MEDD2_DIFSLOW_WD"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_MEDD2_BLOCK_WD")
dims[["R_MEDD2_BLOCK_WD"]] = c("NO", "MILD", "MOD", "SEV", "TOTAL")

vars = c(vars, "R_MEDD2_DIFSLOW_EW")
dims[["R_MEDD2_DIFSLOW_EW"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_MEDD2_SALOSS")
dims[["R_MEDD2_SALOSS"]] = c("NO", "MILD", "MOD", "SEV", "TOTAL")

vars = c(vars, "R_MEDD2_RD_EW")
dims[["R_MEDD2_RD_EW"]] = c("NO", "MOD", "SEV")

vars = c(vars, "R_MEDD2_LD_EW")
dims[["R_MEDD2_LD_EW"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_MED_DCV_WA")
dims[["R_MED_DCV_WA"]] = c("M/S60", "M/S52", "M/S44", "M/S36", "M/S28", "M/S20", "M/S14", "M/S08", "M/S00")

vars = c(vars, "R_MED_RDLDDEL")
dims[["R_MED_RDLDDEL"]] = c("MS3.1", "MS3.9", "MS4.7", "MS10.1", "MS20.1")

vars = c(vars, "R_MED_RDLDCV_EW")
dims[["R_MED_RDLDCV_EW"]] = c("M/S60", "M/S52", "M/S44", "M/S27", "M/S15", "M/S07")

vars = c(vars, "R_MED_DCV_EW")
dims[["R_MED_DCV_EW"]] = c("M/S60", "M/S56", "M/S52", "M/S44", "M/S36", "M/S28", "M/S20", "M/S14", "M/S08", "M/S00")

vars = c(vars, "R_MEDD2_DSLOW_EW")
dims[["R_MEDD2_DSLOW_EW"]] = c("M/S60", "M/S52", "M/S44", "M/S36", "M/S28", "M/S20", "M/S14", "M/S08", "M/S00")

vars = c(vars, "R_MEDD2_LSLOW_EW")
dims[["R_MEDD2_LSLOW_EW"]] = c("NO", "MILD", "MOD", "SEV", "V.SEV")

vars = c(vars, "R_MEDD2_DSLOW_WD")
dims[["R_MEDD2_DSLOW_WD"]] = c("M/S60", "M/S52", "M/S44", "M/S36", "M/S28", "M/S20", "M/S14", "M/S08", "M/S00")

vars = c(vars, "R_MEDD2_LSLOW_WD")
dims[["R_MEDD2_LSLOW_WD"]] = c("NO", "MILD", "MOD", "SEV", "V.SEV")

vars = c(vars, "R_MEDD2_EFFAXLOSS")
dims[["R_MEDD2_EFFAXLOSS"]] = c("NO", "MILD", "MOD", "SEV", "TOTAL")

vars = c(vars, "R_MEDD2_DISP_EW")
dims[["R_MEDD2_DISP_EW"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_MEDD2_DISP_WD")
dims[["R_MEDD2_DISP_WD"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_APB_SPONT_INS_ACT")
dims[["R_APB_SPONT_INS_ACT"]] = c("NORMAL", "INCR")

vars = c(vars, "R_APB_SPONT_HF_DISCH")
dims[["R_APB_SPONT_HF_DISCH"]] = c("NO", "YES")

vars = c(vars, "R_APB_DENERV")
dims[["R_APB_DENERV"]] = c("NO", "MILD", "MOD", "SEV")

vars = c(vars, "R_APB_SPONT_DENERV_ACT")
dims[["R_APB_SPONT_DENERV_ACT"]] = c("NO", "SOME", "MOD", "ABUNDANT")

vars = c(vars, "R_APB_NEUR_ACT")
dims[["R_APB_NEUR_ACT"]] = c("NO", "FASCIC", "NEUROMYO", "MYOKYMIA", "TETANUS", "OTHER")

vars = c(vars, "R_APB_SPONT_NEUR_DISCH")
dims[["R_APB_SPONT_NEUR_DISCH"]] = c("NO", "FASCIC", "NEUROMYO", "MYOKYMIA", "TETANUS", "OTHER")

vars = c(vars, "R_APB_MUDENS")
dims[["R_APB_MUDENS"]] = c("NORMAL", "INCR", "V.INCR")

vars = c(vars, "R_APB_SF_DENSITY")
dims[["R_APB_SF_DENSITY"]] = c("<2SD", "2-4SD", ">4SD")

vars = c(vars, "R_APB_SF_JITTER")
dims[["R_APB_SF_JITTER"]] = c("NORMAL", "2-5", "5-10", ">10")

vars = c(vars, "R_APB_REPSTIM_POST_DECR")
dims[["R_APB_REPSTIM_POST_DECR"]] = c("NO", "MILD", "MOD", "SEV", "INCON")

vars = c(vars, "R_APB_REPSTIM_FACILI")
dims[["R_APB_REPSTIM_FACILI"]] = c("NO", "MOD", "SEV", "REDUCED")

vars = c(vars, "R_APB_REPSTIM_DECR")
dims[["R_APB_REPSTIM_DECR"]] = c("NO", "MILD", "MOD", "SEV", "INCON")

vars = c(vars, "R_APB_REPSTIM_CMAPAMP")
dims[["R_APB_REPSTIM_CMAPAMP"]] = c("MV.000", "MV.032", "MV.044", "MV.063", "MV.088", "MV.13", "MV.18", "MV.25", "MV.35", "MV.5", "MV.71", "MV1", "MV1.4", "MV2", "MV2.8", "MV4", "MV5.6", "MV8", "MV11.3", "MV16", "MV22.6")

vars = c(vars, "R_APB_NMT")
dims[["R_APB_NMT"]] = c("NO", "MOD.PRE", "SEV.PRE", "MLD.POST", "MOD.POST", "SEV.POST", "MIXED")

vars = c(vars, "R_APB_MUPINSTAB")
dims[["R_APB_MUPINSTAB"]] = c("NO", "YES")

vars = c(vars, "R_APB_DE_REGEN")
dims[["R_APB_DE_REGEN"]] = c("NO", "YES")

vars = c(vars, "R_APB_MUPSATEL")
dims[["R_APB_MUPSATEL"]] = c("NO", "YES")

vars = c(vars, "R_APB_QUAN_MUPPOLY")
dims[["R_APB_QUAN_MUPPOLY"]] = c("<12%", "12-24%", ">24%")

vars = c(vars, "R_APB_QUAL_MUPPOLY")
dims[["R_APB_QUAL_MUPPOLY"]] = c("NORMAL", "INCR")

vars = c(vars, "R_APB_QUAL_MUPDUR")
dims[["R_APB_QUAL_MUPDUR"]] = c("SMALL", "NORMAL", "INCR")

vars = c(vars, "R_APB_MUPDUR")
dims[["R_APB_MUPDUR"]] = c("V.SMALL", "SMALL", "NORMAL", "INCR", "LARGE", "V.LARGE", "OTHER")

vars = c(vars, "R_APB_QUAN_MUPDUR")
dims[["R_APB_QUAN_MUPDUR"]] = c("MS3", "MS4", "MS5", "MS6", "MS7", "MS8", "MS9", "MS10", "MS11", "MS12", "MS13", "MS14", "MS15", "MS16", "MS17", "MS18", "MS19", "MS20", "MS>20")

vars = c(vars, "R_APB_QUAL_MUPAMP")
dims[["R_APB_QUAL_MUPAMP"]] = c("V.RED", "REDUCED", "NORMAL", "INCR", "V.INCR")

vars = c(vars, "R_APB_MUPAMP")
dims[["R_APB_MUPAMP"]] = c("V.SMALL", "SMALL", "NORMAL", "INCR", "LARGE", "V.LARGE", "OTHER")

vars = c(vars, "R_APB_QUAN_MUPAMP")
dims[["R_APB_QUAN_MUPAMP"]] = c("UV34", "UV44", "UV58", "UV74", "UV94", "UV122", "UV156", "UV200", "UV260", "UV330", "UV420", "UV540", "UV700", "UV900", "UV1150", "UV1480", "UV1900", "UV2440", "UV3130", "UV4020")

vars = c(vars, "R_APB_TA_CONCL")
dims[["R_APB_TA_CONCL"]] = c(">5ABOVE", "2-5ABOVE", "NORMAL", "2-5BELOW", ">5BELOW", "OTHER")

vars = c(vars, "R_APB_EFFMUS")
dims[["R_APB_EFFMUS"]] = c("V.SMALL", "SMALL", "NORMAL", "INCR", "LARGE", "V.LARGE", "OTHER")

vars = c(vars, "R_APB_MVA_AMP")
dims[["R_APB_MVA_AMP"]] = c("INCR", "NORMAL", "REDUCED")

vars = c(vars, "R_APB_MULOSS")
dims[["R_APB_MULOSS"]] = c("NO", "MILD", "MOD", "SEV", "TOTAL", "OTHER")

vars = c(vars, "R_APB_MVA_RECRUIT")
dims[["R_APB_MVA_RECRUIT"]] = c("FULL", "REDUCED", "DISCRETE", "NO-UNITS")

vars = c(vars, "R_APB_MALOSS")
dims[["R_APB_MALOSS"]] = c("NO", "MILD", "MOD", "SEV", "TOTAL", "OTHER")

vars = c(vars, "R_APB_MUSIZE")
dims[["R_APB_MUSIZE"]] = c("V.SMALL", "SMALL", "NORMAL", "INCR", "LARGE", "V.LARGE", "OTHER")

vars = c(vars, "R_APB_MUSCLE_VOL")
dims[["R_APB_MUSCLE_VOL"]] = c("ATROPHIC", "NORMAL")

vars = c(vars, "R_APB_VOL_ACT")
dims[["R_APB_VOL_ACT"]] = c("NORMAL", "REDUCED", "V.RED", "ABSENT")

vars = c(vars, "R_APB_FORCE")
dims[["R_APB_FORCE"]] = c("5", "4", "3", "2", "1", "0")

vars = c(vars, "R_MED_ALLDEL_WA")
dims[["R_MED_ALLDEL_WA"]] = c("MS0.0", "MS0.4", "MS0.8", "MS1.6", "MS3.2", "MS6.4", "MS12.8", "MS25.6", "INFIN")

vars = c(vars, "R_MED_LAT_WA")
dims[["R_MED_LAT_WA"]] = c("MS2.3", "MS2.7", "MS3.1", "MS3.5", "MS3.9", "MS4.3", "MS4.7", "MS5.3", "MS5.9", "MS6.5", "MS7.1", "MS8.0", "MS9.0", "MS10.0", "MS12.0", "MS14.0", "MS16.0", "MS18.0", "INFIN")

vars = c(vars, "R_APB_ALLAMP_WA")
dims[["R_APB_ALLAMP_WA"]] = c("ZERO", "A0.01", "A0.10", "A0.30", "A0.70", "A1.00", "A2.00", "A4.00", "A8.00")

vars = c(vars, "R_MED_AMP_WA")
dims[["R_MED_AMP_WA"]] = c("MV.000", "MV.13", "MV.18", "MV.25", "MV.35", "MV.5", "MV.71", "MV1", "MV1.4", "MV2", "MV2.8", "MV4", "MV5.6", "MV8", "MV11.3", "MV16", "MV22.6")

vars = c(vars, "R_MED_ALLCV_EW")
dims[["R_MED_ALLCV_EW"]] = c("M/S60", "M/S56", "M/S52", "M/S44", "M/S36", "M/S28", "M/S20", "M/S14", "M/S08", "M/S00")

vars = c(vars, "R_MED_CV_EW")
dims[["R_MED_CV_EW"]] = c("M/S00", "M/S04", "M/S08", "M/S12", "M/S16", "M/S20", "M/S24", "M/S28", "M/S32", "M/S36", "M/S40", "M/S44", "M/S48", "M/S52", "M/S56", "M/S60", "M/S64", "M/S68", "M/S72")

vars = c(vars, "R_MED_BLOCK_EW")
dims[["R_MED_BLOCK_EW"]] = c("NO", "MILD", "MOD", "SEV", "TOTAL")

vars = c(vars, "R_MED_AMPR_EW")
dims[["R_MED_AMPR_EW"]] = c("R>1.1", "R1.0", "R0.9", "R0.8", "R0.7", "R0.6", "R0.5", "R0.4", "R0.3", "R0.2", "R0.1", "R0.0")

vars = c(vars, "R_MEDD2_ALLCV_WD")
dims[["R_MEDD2_ALLCV_WD"]] = c("M/S60", "M/S52", "M/S44", "M/S36", "M/S28", "M/S20", "M/S14", "M/S08", "M/S00")

vars = c(vars, "R_MEDD2_CV_WD")
dims[["R_MEDD2_CV_WD"]] = c("M/S00", "M/S04", "M/S08", "M/S12", "M/S16", "M/S20", "M/S24", "M/S28", "M/S32", "M/S36", "M/S40", "M/S44", "M/S48", "M/S52", "M/S56", "M/S60", "M/S64", "M/S68", "M/S>72")

vars = c(vars, "R_MEDD2_ALLAMP_WD")
dims[["R_MEDD2_ALLAMP_WD"]] = c("ZERO", "A0.01", "A0.10", "A0.30", "A0.70", "A1.00")

vars = c(vars, "R_MEDD2_AMP_WD")
dims[["R_MEDD2_AMP_WD"]] = c("UV<0.63", "UV0.88", "UV1.25", "UV1.77", "UV2.50", "UV3.50", "UV5.00", "UV7.10", "UV10.0", "UV14.0", "UV20.0", "UV28.0", "UV40.0", "UV57.0", "UV>80.0")

vars = c(vars, "R_MEDD2_ALLCV_EW")
dims[["R_MEDD2_ALLCV_EW"]] = c("M/S60", "M/S52", "M/S44", "M/S36", "M/S28", "M/S20", "M/S14", "M/S08", "M/S00")

vars = c(vars, "R_MEDD2_CV_EW")
dims[["R_MEDD2_CV_EW"]] = c("M/S00", "M/S04", "M/S08", "M/S12", "M/S16", "M/S20", "M/S24", "M/S28", "M/S32", "M/S36", "M/S40", "M/S44", "M/S48", "M/S52", "M/S56", "M/S60", "M/S64", "M/S68", "M/S72", "M/S>76")

vars = c(vars, "R_MEDD2_BLOCK_EW")
dims[["R_MEDD2_BLOCK_EW"]] = c("NO", "MILD", "MOD", "SEV", "TOTAL")

vars = c(vars, "R_MEDD2_DISP_EWD")
dims[["R_MEDD2_DISP_EWD"]] = c("R0.15", "R0.25", "R0.35", "R0.45", "R0.55", "R0.65", "R0.75", "R0.85", "R0.95")

vars = c(vars, "R_MEDD2_AMPR_EW")
dims[["R_MEDD2_AMPR_EW"]] = c("R0.0", "R0.1", "R0.2", "R0.3", "R0.4", "R0.5", "R0.6", "R0.7", "R0.8", "R0.9", "R1.0", "R>1.1")

parents[["R_LNLT1_APB_DENERV"]] = vector()
probs[["R_LNLT1_APB_DENERV"]] = list(
  c(1, 0, 0, 0))

parents[["R_LNLT1_APB_NEUR_ACT"]] = vector()
probs[["R_LNLT1_APB_NEUR_ACT"]] = list(
  c(1, 0, 0, 0, 0, 0))

parents[["R_LNLT1_APB_MUDENS"]] = vector()
probs[["R_LNLT1_APB_MUDENS"]] = list(
  c(1, 0, 0))

parents[["R_LNLT1_APB_DE_REGEN"]] = vector()
probs[["R_LNLT1_APB_DE_REGEN"]] = list(
  c(1, 0))

parents[["R_LNLT1_APB_MUSIZE"]] = vector()
probs[["R_LNLT1_APB_MUSIZE"]] = list(
  c(0, 0, 1, 0, 0, 0))

parents[["R_LNLT1_APB_MALOSS"]] = vector()
probs[["R_LNLT1_APB_MALOSS"]] = list(
  c(1, 0, 0, 0, 0))

parents[["DIFFN_DUMMY_3"]] = c("DIFFN_S_SEV_DIST", "DIFFN_PATHO", "DIFFN_TIME")
probs[["DIFFN_DUMMY_3"]] = list(
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1))

parents[["DIFFN_DUMMY_2"]] = c("DIFFN_M_SEV_DIST", "DIFFN_PATHO", "DIFFN_TIME")
probs[["DIFFN_DUMMY_2"]] = list(
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1))

parents[["DIFFN_M_SEV_PROX"]] = c("DIFFN_MOT_SEV", "DIFFN_DISTR")
probs[["DIFFN_M_SEV_PROX"]] = list(
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(0, 100, 0, 0),
  c(0, 100, 0, 0),
  c(25, 45, 25, 5),
  c(0, 0, 100, 0),
  c(0, 0, 100, 0),
  c(10, 40, 40, 10),
  c(0, 50, 50, 0),
  c(0, 50, 50, 0),
  c(5, 15, 40, 40))

parents[["DIFFN_DUMMY_1"]] = c("DIFFN_M_SEV_PROX", "DIFFN_PATHO", "DIFFN_TIME")
probs[["DIFFN_DUMMY_1"]] = list(
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1),
  c(1))

parents[["DIFFN_TYPE"]] = vector()
probs[["DIFFN_TYPE"]] = list(
  c(6, 93.5, 0.5))

parents[["DIFFN_SEV"]] = vector()
probs[["DIFFN_SEV"]] = list(
  c(78, 10, 7, 5))

parents[["DIFFN_MOT_SEV"]] = c("DIFFN_SEV", "DIFFN_TYPE")
probs[["DIFFN_MOT_SEV"]] = list(
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(0, 100, 0, 0),
  c(0, 100, 0, 0),
  c(100, 0, 0, 0),
  c(0, 0, 100, 0),
  c(0, 0, 100, 0),
  c(100, 0, 0, 0),
  c(0, 0, 0, 100),
  c(0, 0, 0, 100),
  c(100, 0, 0, 0))

parents[["DIFFN_DISTR"]] = vector()
probs[["DIFFN_DISTR"]] = list(
  c(93, 2, 5))

parents[["DIFFN_SENS_SEV"]] = c("DIFFN_SEV", "DIFFN_TYPE")
probs[["DIFFN_SENS_SEV"]] = list(
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(0, 100, 0, 0),
  c(0, 100, 0, 0),
  c(100, 0, 0, 0),
  c(0, 0, 100, 0),
  c(0, 0, 100, 0),
  c(100, 0, 0, 0),
  c(0, 0, 0, 100),
  c(0, 0, 0, 100))

parents[["R_LNLLP_APB_DENERV"]] = vector()
probs[["R_LNLLP_APB_DENERV"]] = list(
  c(1, 0, 0, 0))

parents[["R_LNLLP_APB_NEUR_ACT"]] = vector()
probs[["R_LNLLP_APB_NEUR_ACT"]] = list(
  c(1, 0, 0, 0, 0, 0))

parents[["R_LNLLP_APB_MUDENS"]] = vector()
probs[["R_LNLLP_APB_MUDENS"]] = list(
  c(1, 0, 0))

parents[["R_LNLLP_APB_DE_REGEN"]] = vector()
probs[["R_LNLLP_APB_DE_REGEN"]] = list(
  c(1, 0))

parents[["R_LNLW_MED_TIME"]] = vector()
probs[["R_LNLW_MED_TIME"]] = list(
  c(5, 33, 60, 2))

parents[["DIFFN_TIME"]] = vector()
probs[["DIFFN_TIME"]] = list(
  c(1, 25, 65, 9))

parents[["DIFFN_M_SEV_DIST"]] = c("DIFFN_MOT_SEV", "DIFFN_DISTR")
probs[["DIFFN_M_SEV_DIST"]] = list(
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(0, 100, 0, 0),
  c(100, 0, 0, 0),
  c(25, 45, 25, 5),
  c(0, 0, 100, 0),
  c(50, 50, 0, 0),
  c(10, 40, 40, 10),
  c(0, 0, 0, 100),
  c(0, 50, 50, 0),
  c(5, 15, 40, 40))

parents[["R_LNLBE_MED_TIME"]] = vector()
probs[["R_LNLBE_MED_TIME"]] = list(
  c(5, 60, 30, 5))

parents[["R_LNLLP_APB_MUSIZE"]] = vector()
probs[["R_LNLLP_APB_MUSIZE"]] = list(
  c(0, 0, 1, 0, 0, 0))

parents[["R_LNLLP_APB_MALOSS"]] = vector()
probs[["R_LNLLP_APB_MALOSS"]] = list(
  c(1, 0, 0, 0, 0))

parents[["DIFFN_PATHO"]] = vector()
probs[["DIFFN_PATHO"]] = list(
  c(8.6, 1, 90, 0.2, 0.2))

parents[["DIFFN_S_SEV_DIST"]] = c("DIFFN_SENS_SEV", "DIFFN_DISTR")
probs[["DIFFN_S_SEV_DIST"]] = list(
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(0, 100, 0, 0),
  c(100, 0, 0, 0),
  c(25, 45, 25, 5),
  c(0, 0, 100, 0),
  c(50, 50, 0, 0),
  c(10, 40, 40, 10),
  c(0, 0, 0, 100),
  c(0, 50, 50, 0),
  c(5, 15, 40, 40))

parents[["R_MYDY_APB_DENERV"]] = vector()
probs[["R_MYDY_APB_DENERV"]] = list(
  c(1, 0, 0, 0))

parents[["R_MYOP_APB_DENERV"]] = vector()
probs[["R_MYOP_APB_DENERV"]] = list(
  c(1, 0, 0, 0))

parents[["R_LNLW_APB_DENERV"]] = c("R_LNLW_MED_SEV", "R_LNLW_MED_TIME", "R_LNLW_MED_PATHO")
probs[["R_LNLW_APB_DENERV"]] = list(
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(80, 20, 0, 0),
  c(80, 20, 0, 0),
  c(80, 20, 0, 0),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(80, 20, 0, 0),
  c(80, 20, 0, 0),
  c(0, 100, 0, 0),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(80, 20, 0, 0),
  c(90, 10, 0, 0),
  c(0, 100, 0, 0),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(80, 20, 0, 0),
  c(80, 20, 0, 0),
  c(80, 20, 0, 0),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(30, 50, 20, 0),
  c(60, 40, 0, 0),
  c(0, 0, 100, 0),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(30, 50, 20, 0),
  c(60, 40, 0, 0),
  c(0, 0, 100, 0),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(90, 10, 0, 0),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(80, 20, 0, 0),
  c(80, 20, 0, 0),
  c(80, 20, 0, 0),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(10, 50, 40, 0),
  c(40, 50, 10, 0),
  c(0, 0, 50, 50),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(10, 50, 40, 0),
  c(40, 50, 10, 0),
  c(0, 0, 50, 50),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(50, 40, 10, 0),
  c(50, 50, 0, 0),
  c(60, 30, 10, 0),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(80, 20, 0, 0),
  c(80, 20, 0, 0),
  c(80, 20, 0, 0),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(0, 40, 40, 20),
  c(30, 40, 30, 0),
  c(0, 0, 0, 100),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(0, 40, 40, 20),
  c(30, 40, 30, 0),
  c(0, 0, 0, 100),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(10, 60, 25, 5),
  c(50, 50, 0, 0),
  c(45, 45, 10, 0),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5))

parents[["R_DIFFN_APB_DENERV"]] = c("DIFFN_M_SEV_DIST", "DIFFN_TIME", "DIFFN_PATHO")
probs[["R_DIFFN_APB_DENERV"]] = list(
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(80, 20, 0, 0),
  c(80, 20, 0, 0),
  c(80, 20, 0, 0),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(80, 20, 0, 0),
  c(90, 10, 0, 0),
  c(0, 100, 0, 0),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(80, 20, 0, 0),
  c(90, 10, 0, 0),
  c(0, 100, 0, 0),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(80, 20, 0, 0),
  c(80, 20, 0, 0),
  c(80, 20, 0, 0),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(30, 50, 20, 0),
  c(60, 40, 0, 0),
  c(0, 0, 100, 0),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(30, 50, 20, 0),
  c(60, 40, 0, 0),
  c(0, 0, 100, 0),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(90, 10, 0, 0),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(80, 20, 0, 0),
  c(80, 20, 0, 0),
  c(80, 20, 0, 0),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(10, 50, 40, 0),
  c(40, 50, 10, 0),
  c(0, 0, 50, 50),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(10, 50, 40, 0),
  c(40, 50, 10, 0),
  c(0, 0, 50, 50),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(50, 40, 10, 0),
  c(50, 50, 0, 0),
  c(60, 30, 10, 0),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5))

parents[["R_LNLBE_APB_DENERV"]] = c("R_LNLBE_MED_SEV", "R_LNLBE_MED_TIME", "R_LNLBE_MED_PATHO")
probs[["R_LNLBE_APB_DENERV"]] = list(
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(80, 20, 0, 0),
  c(80, 20, 0, 0),
  c(80, 20, 0, 0),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(80, 20, 0, 0),
  c(80, 20, 0, 0),
  c(0, 100, 0, 0),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(80, 20, 0, 0),
  c(90, 10, 0, 0),
  c(0, 100, 0, 0),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(80, 20, 0, 0),
  c(80, 20, 0, 0),
  c(80, 20, 0, 0),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(30, 50, 20, 0),
  c(60, 40, 0, 0),
  c(0, 0, 100, 0),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(30, 50, 20, 0),
  c(60, 40, 0, 0),
  c(0, 0, 100, 0),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(90, 10, 0, 0),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(80, 20, 0, 0),
  c(80, 20, 0, 0),
  c(80, 20, 0, 0),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(10, 50, 40, 0),
  c(40, 50, 10, 0),
  c(0, 0, 50, 50),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(10, 50, 40, 0),
  c(40, 50, 10, 0),
  c(0, 0, 50, 50),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(50, 40, 10, 0),
  c(50, 50, 0, 0),
  c(60, 30, 10, 0),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(80, 20, 0, 0),
  c(80, 20, 0, 0),
  c(80, 20, 0, 0),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(0, 40, 40, 20),
  c(30, 40, 30, 0),
  c(0, 0, 0, 100),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(0, 40, 40, 20),
  c(30, 40, 30, 0),
  c(0, 0, 0, 100),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5),
  c(10, 60, 25, 5),
  c(50, 50, 0, 0),
  c(45, 45, 10, 0),
  c(0, 0, 50, 50),
  c(5, 40, 50, 5))

parents[["R_LNLT1_LP_APB_DENERV"]] = c("R_LNLT1_APB_DENERV", "R_LNLLP_APB_DENERV")
probs[["R_LNLT1_LP_APB_DENERV"]] = list(
  c(1, 0, 0, 0),
  c(0, 1, 0, 0),
  c(0, 0, 1, 0),
  c(0, 0, 0, 1),
  c(0, 1, 0, 0),
  c(0, 0, 1, 0),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 1, 0),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1))

parents[["R_LNLW_APB_NEUR_ACT"]] = c("R_LNLW_MED_SEV", "R_LNLW_MED_TIME")
probs[["R_LNLW_APB_NEUR_ACT"]] = list(
  c(100, 0, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(90, 10, 0, 0, 0, 0),
  c(70, 30, 0, 0, 0, 0),
  c(50, 50, 0, 0, 0, 0),
  c(10, 90, 0, 0, 0, 0),
  c(90, 10, 0, 0, 0, 0),
  c(70, 30, 0, 0, 0, 0),
  c(50, 50, 0, 0, 0, 0),
  c(70, 30, 0, 0, 0, 0),
  c(90, 10, 0, 0, 0, 0),
  c(70, 30, 0, 0, 0, 0),
  c(30, 70, 0, 0, 0, 0),
  c(30, 70, 0, 0, 0, 0),
  c(90, 10, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0))

parents[["R_DIFFN_APB_NEUR_ACT"]] = c("DIFFN_M_SEV_DIST", "DIFFN_TIME")
probs[["R_DIFFN_APB_NEUR_ACT"]] = list(
  c(100, 0, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(90, 10, 0, 0, 0, 0),
  c(70, 30, 0, 0, 0, 0),
  c(50, 50, 0, 0, 0, 0),
  c(10, 90, 0, 0, 0, 0),
  c(90, 10, 0, 0, 0, 0),
  c(70, 30, 0, 0, 0, 0),
  c(50, 50, 0, 0, 0, 0),
  c(70, 30, 0, 0, 0, 0),
  c(90, 10, 0, 0, 0, 0),
  c(70, 30, 0, 0, 0, 0),
  c(30, 70, 0, 0, 0, 0),
  c(30, 70, 0, 0, 0, 0))

parents[["R_LNLBE_APB_NEUR_ACT"]] = c("R_LNLBE_MED_SEV", "R_LNLBE_MED_TIME")
probs[["R_LNLBE_APB_NEUR_ACT"]] = list(
  c(100, 0, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(90, 10, 0, 0, 0, 0),
  c(70, 30, 0, 0, 0, 0),
  c(50, 50, 0, 0, 0, 0),
  c(10, 90, 0, 0, 0, 0),
  c(90, 10, 0, 0, 0, 0),
  c(70, 30, 0, 0, 0, 0),
  c(50, 50, 0, 0, 0, 0),
  c(70, 30, 0, 0, 0, 0),
  c(90, 10, 0, 0, 0, 0),
  c(70, 30, 0, 0, 0, 0),
  c(30, 70, 0, 0, 0, 0),
  c(30, 70, 0, 0, 0, 0),
  c(90, 10, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0))

parents[["R_LNLT1_LP_APB_NEUR_ACT"]] = c("R_LNLT1_APB_NEUR_ACT", "R_LNLLP_APB_NEUR_ACT")
probs[["R_LNLT1_LP_APB_NEUR_ACT"]] = list(
  c(1, 0, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 0, 1, 0, 0, 0),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1),
  c(0, 1, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 0, 1, 0, 0, 0),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 1, 0, 0, 0),
  c(0, 0, 1, 0, 0, 0),
  c(0, 0, 1, 0, 0, 0),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1))

parents[["R_MYDY_APB_MUDENS"]] = vector()
probs[["R_MYDY_APB_MUDENS"]] = list(
  c(1, 0, 0))

parents[["R_MYOP_APB_MUDENS"]] = vector()
probs[["R_MYOP_APB_MUDENS"]] = list(
  c(1, 0, 0))

parents[["R_LNLW_APB_MUDENS"]] = c("R_LNLW_MED_SEV", "R_LNLW_MED_TIME", "R_LNLW_MED_PATHO")
probs[["R_LNLW_APB_MUDENS"]] = list(
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(90, 10, 0),
  c(90, 10, 0),
  c(60, 40, 0),
  c(5, 50, 45),
  c(20, 50, 30),
  c(80, 20, 0),
  c(80, 20, 0),
  c(70, 30, 0),
  c(5, 50, 45),
  c(20, 50, 30),
  c(80, 20, 0),
  c(80, 20, 0),
  c(50, 50, 0),
  c(5, 50, 45),
  c(20, 50, 30),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(80, 20, 0),
  c(80, 20, 0),
  c(50, 50, 0),
  c(5, 50, 45),
  c(20, 50, 30),
  c(70, 30, 0),
  c(70, 30, 0),
  c(10, 60, 30),
  c(5, 50, 45),
  c(20, 50, 30),
  c(70, 30, 0),
  c(70, 30, 0),
  c(15, 70, 15),
  c(5, 50, 45),
  c(20, 50, 30),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(60, 40, 0),
  c(60, 40, 0),
  c(50, 40, 10),
  c(5, 50, 45),
  c(20, 50, 30),
  c(60, 40, 0),
  c(60, 40, 0),
  c(0, 50, 50),
  c(5, 50, 45),
  c(20, 50, 30),
  c(60, 40, 0),
  c(60, 40, 0),
  c(0, 50, 50),
  c(5, 50, 45),
  c(20, 50, 30),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(60, 40, 0),
  c(60, 40, 0),
  c(30, 60, 10),
  c(5, 50, 45),
  c(20, 50, 30),
  c(60, 40, 0),
  c(60, 40, 0),
  c(0, 50, 50),
  c(5, 50, 45),
  c(20, 50, 30),
  c(60, 40, 0),
  c(60, 40, 0),
  c(0, 50, 50),
  c(5, 50, 45),
  c(20, 50, 30))

parents[["R_DIFFN_APB_MUDENS"]] = c("DIFFN_M_SEV_DIST", "DIFFN_TIME", "DIFFN_PATHO")
probs[["R_DIFFN_APB_MUDENS"]] = list(
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(90, 10, 0),
  c(90, 10, 0),
  c(60, 40, 0),
  c(5, 50, 45),
  c(20, 50, 30),
  c(80, 20, 0),
  c(80, 20, 0),
  c(70, 30, 0),
  c(5, 50, 45),
  c(20, 50, 30),
  c(80, 20, 0),
  c(80, 20, 0),
  c(50, 50, 0),
  c(5, 50, 45),
  c(20, 50, 30),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(80, 20, 0),
  c(80, 20, 0),
  c(50, 50, 0),
  c(5, 50, 45),
  c(20, 50, 30),
  c(70, 30, 0),
  c(70, 30, 0),
  c(10, 60, 30),
  c(5, 50, 45),
  c(20, 50, 30),
  c(70, 30, 0),
  c(70, 30, 0),
  c(15, 70, 15),
  c(5, 50, 45),
  c(20, 50, 30),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(60, 40, 0),
  c(60, 40, 0),
  c(50, 40, 10),
  c(5, 50, 45),
  c(20, 50, 30),
  c(60, 40, 0),
  c(60, 40, 0),
  c(0, 50, 50),
  c(5, 50, 45),
  c(20, 50, 30),
  c(60, 40, 0),
  c(60, 40, 0),
  c(0, 50, 50),
  c(5, 50, 45),
  c(20, 50, 30))

parents[["R_LNLBE_APB_MUDENS"]] = c("R_LNLBE_MED_SEV", "R_LNLBE_MED_TIME", "R_LNLBE_MED_PATHO")
probs[["R_LNLBE_APB_MUDENS"]] = list(
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(90, 10, 0),
  c(90, 10, 0),
  c(60, 40, 0),
  c(5, 50, 45),
  c(20, 50, 30),
  c(80, 20, 0),
  c(80, 20, 0),
  c(70, 30, 0),
  c(5, 50, 45),
  c(20, 50, 30),
  c(80, 20, 0),
  c(80, 20, 0),
  c(50, 50, 0),
  c(5, 50, 45),
  c(20, 50, 30),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(80, 20, 0),
  c(80, 20, 0),
  c(50, 50, 0),
  c(5, 50, 45),
  c(20, 50, 30),
  c(70, 30, 0),
  c(70, 30, 0),
  c(10, 60, 30),
  c(5, 50, 45),
  c(20, 50, 30),
  c(70, 30, 0),
  c(70, 30, 0),
  c(15, 70, 15),
  c(5, 50, 45),
  c(20, 50, 30),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(60, 40, 0),
  c(60, 40, 0),
  c(50, 40, 10),
  c(5, 50, 45),
  c(20, 50, 30),
  c(60, 40, 0),
  c(60, 40, 0),
  c(0, 50, 50),
  c(5, 50, 45),
  c(20, 50, 30),
  c(60, 40, 0),
  c(60, 40, 0),
  c(0, 50, 50),
  c(5, 50, 45),
  c(20, 50, 30),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(60, 40, 0),
  c(60, 40, 0),
  c(30, 60, 10),
  c(5, 50, 45),
  c(20, 50, 30),
  c(60, 40, 0),
  c(60, 40, 0),
  c(0, 50, 50),
  c(5, 50, 45),
  c(20, 50, 30),
  c(60, 40, 0),
  c(60, 40, 0),
  c(0, 50, 50),
  c(5, 50, 45),
  c(20, 50, 30))

parents[["R_LNLT1_LP_APB_MUDENS"]] = c("R_LNLT1_APB_MUDENS", "R_LNLLP_APB_MUDENS")
probs[["R_LNLT1_LP_APB_MUDENS"]] = list(
  c(1, 0, 0),
  c(0, 1, 0),
  c(0, 0, 1),
  c(0, 1, 0),
  c(0, 0, 1),
  c(0, 0, 1),
  c(0, 0, 1),
  c(0, 0, 1),
  c(0, 0, 1))

parents[["R_MYDY_APB_DE_REGEN"]] = vector()
probs[["R_MYDY_APB_DE_REGEN"]] = list(
  c(1, 0))

parents[["R_MYOP_APB_DE_REGEN"]] = vector()
probs[["R_MYOP_APB_DE_REGEN"]] = list(
  c(1, 0))

parents[["R_LNLW_APB_DE_REGEN"]] = c("R_LNLW_MED_SEV", "R_LNLW_MED_TIME", "R_LNLW_MED_PATHO")
probs[["R_LNLW_APB_DE_REGEN"]] = list(
  c(100, 0),
  c(100, 0),
  c(100, 0),
  c(0, 100),
  c(0, 100),
  c(100, 0),
  c(100, 0),
  c(100, 0),
  c(0, 100),
  c(0, 100),
  c(100, 0),
  c(100, 0),
  c(100, 0),
  c(0, 100),
  c(0, 100),
  c(100, 0),
  c(100, 0),
  c(100, 0),
  c(0, 100),
  c(0, 100),
  c(100, 0),
  c(100, 0),
  c(100, 0),
  c(0, 100),
  c(0, 100),
  c(80, 20),
  c(80, 20),
  c(50, 50),
  c(0, 100),
  c(0, 100),
  c(80, 20),
  c(80, 20),
  c(50, 50),
  c(0, 100),
  c(0, 100),
  c(100, 0),
  c(100, 0),
  c(100, 0),
  c(0, 100),
  c(0, 100),
  c(100, 0),
  c(100, 0),
  c(100, 0),
  c(0, 100),
  c(0, 100),
  c(20, 80),
  c(20, 80),
  c(20, 80),
  c(0, 100),
  c(0, 100),
  c(20, 80),
  c(20, 80),
  c(20, 80),
  c(0, 100),
  c(0, 100),
  c(80, 20),
  c(80, 20),
  c(80, 20),
  c(0, 100),
  c(0, 100),
  c(100, 0),
  c(100, 0),
  c(100, 0),
  c(0, 100),
  c(0, 100),
  c(40, 60),
  c(40, 60),
  c(10, 90),
  c(0, 100),
  c(0, 100),
  c(40, 60),
  c(40, 60),
  c(10, 90),
  c(0, 100),
  c(0, 100),
  c(40, 60),
  c(40, 60),
  c(40, 60),
  c(0, 100),
  c(0, 100),
  c(100, 0),
  c(100, 0),
  c(100, 0),
  c(0, 100),
  c(0, 100),
  c(100, 0),
  c(100, 0),
  c(100, 0),
  c(0, 100),
  c(0, 100),
  c(100, 0),
  c(100, 0),
  c(100, 0),
  c(0, 100),
  c(0, 100),
  c(100, 0),
  c(100, 0),
  c(100, 0),
  c(0, 100),
  c(0, 100))

parents[["R_DIFFN_APB_DE_REGEN"]] = c("DIFFN_M_SEV_DIST", "DIFFN_TIME", "DIFFN_PATHO")
probs[["R_DIFFN_APB_DE_REGEN"]] = list(
  c(100, 0),
  c(100, 0),
  c(100, 0),
  c(0, 100),
  c(0, 100),
  c(100, 0),
  c(100, 0),
  c(100, 0),
  c(0, 100),
  c(0, 100),
  c(100, 0),
  c(100, 0),
  c(100, 0),
  c(0, 100),
  c(0, 100),
  c(100, 0),
  c(100, 0),
  c(100, 0),
  c(0, 100),
  c(0, 100),
  c(100, 0),
  c(100, 0),
  c(100, 0),
  c(0, 100),
  c(0, 100),
  c(80, 20),
  c(80, 20),
  c(50, 50),
  c(0, 100),
  c(0, 100),
  c(80, 20),
  c(80, 20),
  c(50, 50),
  c(0, 100),
  c(0, 100),
  c(100, 0),
  c(100, 0),
  c(100, 0),
  c(0, 100),
  c(0, 100),
  c(100, 0),
  c(100, 0),
  c(100, 0),
  c(0, 100),
  c(0, 100),
  c(20, 80),
  c(20, 80),
  c(20, 80),
  c(0, 100),
  c(0, 100),
  c(20, 80),
  c(20, 80),
  c(20, 80),
  c(0, 100),
  c(0, 100),
  c(80, 20),
  c(80, 20),
  c(80, 20),
  c(0, 100),
  c(0, 100),
  c(100, 0),
  c(100, 0),
  c(100, 0),
  c(0, 100),
  c(0, 100),
  c(40, 60),
  c(40, 60),
  c(10, 90),
  c(0, 100),
  c(0, 100),
  c(40, 60),
  c(40, 60),
  c(10, 90),
  c(0, 100),
  c(0, 100),
  c(40, 60),
  c(40, 60),
  c(40, 60),
  c(0, 100),
  c(0, 100))

parents[["R_LNLBE_APB_DE_REGEN"]] = c("R_LNLBE_MED_SEV", "R_LNLBE_MED_TIME", "R_LNLBE_MED_PATHO")
probs[["R_LNLBE_APB_DE_REGEN"]] = list(
  c(100, 0),
  c(100, 0),
  c(100, 0),
  c(0, 100),
  c(0, 100),
  c(100, 0),
  c(100, 0),
  c(100, 0),
  c(0, 100),
  c(0, 100),
  c(100, 0),
  c(100, 0),
  c(100, 0),
  c(0, 100),
  c(0, 100),
  c(100, 0),
  c(100, 0),
  c(100, 0),
  c(0, 100),
  c(0, 100),
  c(100, 0),
  c(100, 0),
  c(100, 0),
  c(0, 100),
  c(0, 100),
  c(80, 20),
  c(80, 20),
  c(50, 50),
  c(0, 100),
  c(0, 100),
  c(80, 20),
  c(80, 20),
  c(50, 50),
  c(0, 100),
  c(0, 100),
  c(100, 0),
  c(100, 0),
  c(100, 0),
  c(0, 100),
  c(0, 100),
  c(100, 0),
  c(100, 0),
  c(100, 0),
  c(0, 100),
  c(0, 100),
  c(20, 80),
  c(20, 80),
  c(20, 80),
  c(0, 100),
  c(0, 100),
  c(20, 80),
  c(20, 80),
  c(20, 80),
  c(0, 100),
  c(0, 100),
  c(80, 20),
  c(80, 20),
  c(80, 20),
  c(0, 100),
  c(0, 100),
  c(100, 0),
  c(100, 0),
  c(100, 0),
  c(0, 100),
  c(0, 100),
  c(40, 60),
  c(40, 60),
  c(10, 90),
  c(0, 100),
  c(0, 100),
  c(40, 60),
  c(40, 60),
  c(10, 90),
  c(0, 100),
  c(0, 100),
  c(40, 60),
  c(40, 60),
  c(40, 60),
  c(0, 100),
  c(0, 100),
  c(100, 0),
  c(100, 0),
  c(100, 0),
  c(0, 100),
  c(0, 100),
  c(100, 0),
  c(100, 0),
  c(100, 0),
  c(0, 100),
  c(0, 100),
  c(100, 0),
  c(100, 0),
  c(100, 0),
  c(0, 100),
  c(0, 100),
  c(100, 0),
  c(100, 0),
  c(100, 0),
  c(0, 100),
  c(0, 100))

parents[["R_LNLT1_LP_APB_DE_REGEN"]] = c("R_LNLT1_APB_DE_REGEN", "R_LNLLP_APB_DE_REGEN")
probs[["R_LNLT1_LP_APB_DE_REGEN"]] = list(
  c(1, 0),
  c(0, 1),
  c(0, 1),
  c(0, 1))

parents[["R_MYOP_APB_MUSIZE"]] = vector()
probs[["R_MYOP_APB_MUSIZE"]] = list(
  c(0, 0, 1, 0, 0, 0))

parents[["R_MYDY_APB_MUSIZE"]] = vector()
probs[["R_MYDY_APB_MUSIZE"]] = list(
  c(0, 0, 1, 0, 0, 0))

parents[["R_LNLW_MEDD2_DISP_WD"]] = c("R_LNLW_MED_SEV", "R_LNLW_MED_PATHO")
probs[["R_LNLW_MEDD2_DISP_WD"]] = list(
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(0, 0, 0, 100),
  c(0, 0, 0, 100),
  c(0, 100, 0, 0),
  c(50, 50, 0, 0),
  c(100, 0, 0, 0),
  c(0, 0, 0, 100),
  c(0, 0, 0, 100),
  c(0, 0, 100, 0),
  c(0, 50, 50, 0),
  c(50, 50, 0, 0),
  c(0, 0, 0, 100),
  c(0, 0, 0, 100),
  c(0, 0, 0, 100),
  c(0, 10, 50, 40),
  c(30, 50, 20, 0),
  c(0, 0, 0, 100),
  c(0, 0, 0, 100),
  c(0, 0, 0, 100),
  c(0, 0, 50, 50),
  c(0, 50, 50, 0),
  c(0, 0, 0, 100),
  c(0, 0, 0, 100))

parents[["R_DIFFN_MEDD2_SALOSS"]] = c("DIFFN_S_SEV_DIST", "DIFFN_PATHO")
probs[["R_DIFFN_MEDD2_SALOSS"]] = list(
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(0, 0, 0, 100, 0),
  c(0, 0, 50, 50, 0),
  c(50, 50, 0, 0, 0),
  c(50, 50, 0, 0, 0),
  c(0, 100, 0, 0, 0),
  c(0, 0, 0, 100, 0),
  c(0, 0, 50, 50, 0),
  c(0, 50, 50, 0, 0),
  c(40, 30, 30, 0, 0),
  c(0, 0, 100, 0, 0),
  c(0, 0, 0, 100, 0),
  c(0, 0, 50, 50, 0),
  c(0, 0, 0, 70, 30),
  c(0, 30, 50, 20, 0),
  c(0, 0, 0, 70, 30),
  c(0, 0, 0, 100, 0),
  c(0, 0, 50, 50, 0))

parents[["R_LNLW_MEDD2_SALOSS_WD"]] = c("R_LNLW_MED_SEV", "R_LNLW_MED_PATHO")
probs[["R_LNLW_MEDD2_SALOSS_WD"]] = list(
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(0, 0, 0, 100, 0),
  c(0, 0, 50, 50, 0),
  c(50, 50, 0, 0, 0),
  c(50, 50, 0, 0, 0),
  c(0, 100, 0, 0, 0),
  c(0, 0, 0, 100, 0),
  c(0, 0, 50, 50, 0),
  c(0, 50, 50, 0, 0),
  c(20, 50, 30, 0, 0),
  c(0, 0, 100, 0, 0),
  c(0, 0, 0, 100, 0),
  c(0, 0, 50, 50, 0),
  c(0, 0, 50, 50, 0),
  c(0, 20, 50, 30, 0),
  c(0, 0, 0, 100, 0),
  c(0, 0, 0, 100, 0),
  c(0, 0, 50, 50, 0),
  c(0, 0, 0, 40, 60),
  c(0, 10, 40, 40, 10),
  c(0, 0, 0, 0, 100),
  c(0, 0, 0, 100, 0),
  c(0, 0, 50, 50, 0))

parents[["R_NMT_APB_DENERV"]] = c("R_APB_NMT")
probs[["R_NMT_APB_DENERV"]] = list(
  c(100, 0, 0, 0),
  c(40, 45, 15, 0),
  c(15, 35, 35, 15),
  c(85, 15, 0, 0),
  c(30, 45, 20, 5),
  c(15, 35, 35, 15),
  c(25, 25, 25, 25))

parents[["R_MYOP_MYDY_APB_DENERV"]] = c("R_MYOP_APB_DENERV", "R_MYDY_APB_DENERV")
probs[["R_MYOP_MYDY_APB_DENERV"]] = list(
  c(1, 0, 0, 0),
  c(0, 1, 0, 0),
  c(0, 0, 1, 0),
  c(0, 0, 0, 1),
  c(0, 1, 0, 0),
  c(0, 0, 1, 0),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 1, 0),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1))

parents[["R_DIFFN_LNLW_APB_DENERV"]] = c("R_DIFFN_APB_DENERV", "R_LNLW_APB_DENERV")
probs[["R_DIFFN_LNLW_APB_DENERV"]] = list(
  c(1, 0, 0, 0),
  c(0, 1, 0, 0),
  c(0, 0, 1, 0),
  c(0, 0, 0, 1),
  c(0, 1, 0, 0),
  c(0, 0, 1, 0),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 1, 0),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1))

parents[["R_LNLT1_LP_BE_APB_DENERV"]] = c("R_LNLT1_LP_APB_DENERV", "R_LNLBE_APB_DENERV")
probs[["R_LNLT1_LP_BE_APB_DENERV"]] = list(
  c(1, 0, 0, 0),
  c(0, 1, 0, 0),
  c(0, 0, 1, 0),
  c(0, 0, 0, 1),
  c(0, 1, 0, 0),
  c(0, 0, 1, 0),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 1, 0),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1))

parents[["R_MYAS_APB_MUDENS"]] = vector()
probs[["R_MYAS_APB_MUDENS"]] = list(
  c(1, 0, 0))

parents[["R_MYOP_MYDY_APB_MUDENS"]] = c("R_MYOP_APB_MUDENS", "R_MYDY_APB_MUDENS")
probs[["R_MYOP_MYDY_APB_MUDENS"]] = list(
  c(1, 0, 0),
  c(0, 1, 0),
  c(0, 0, 1),
  c(0, 1, 0),
  c(0, 0, 1),
  c(0, 0, 1),
  c(0, 0, 1),
  c(0, 0, 1),
  c(0, 0, 1))

parents[["R_DIFFN_LNLW_APB_MUDENS"]] = c("R_DIFFN_APB_MUDENS", "R_LNLW_APB_MUDENS")
probs[["R_DIFFN_LNLW_APB_MUDENS"]] = list(
  c(1, 0, 0),
  c(0, 1, 0),
  c(0, 0, 1),
  c(0, 1, 0),
  c(0, 0, 1),
  c(0, 0, 1),
  c(0, 0, 1),
  c(0, 0, 1),
  c(0, 0, 1))

parents[["R_LNLT1_LP_BE_APB_MUDENS"]] = c("R_LNLT1_LP_APB_MUDENS", "R_LNLBE_APB_MUDENS")
probs[["R_LNLT1_LP_BE_APB_MUDENS"]] = list(
  c(1, 0, 0),
  c(0, 1, 0),
  c(0, 0, 1),
  c(0, 1, 0),
  c(0, 0, 1),
  c(0, 0, 1),
  c(0, 0, 1),
  c(0, 0, 1),
  c(0, 0, 1))

parents[["R_DIFFN_LNLW_APB_DE_REGEN"]] = c("R_DIFFN_APB_DE_REGEN", "R_LNLW_APB_DE_REGEN")
probs[["R_DIFFN_LNLW_APB_DE_REGEN"]] = list(
  c(1, 0),
  c(0, 1),
  c(0, 1),
  c(0, 1))

parents[["R_LNLT1_LP_BE_APB_DE_REGEN"]] = c("R_LNLT1_LP_APB_DE_REGEN", "R_LNLBE_APB_DE_REGEN")
probs[["R_LNLT1_LP_BE_APB_DE_REGEN"]] = list(
  c(1, 0),
  c(0, 1),
  c(0, 1),
  c(0, 1))

parents[["R_DIFFN_APB_MUSIZE"]] = c("DIFFN_M_SEV_DIST", "DIFFN_TIME", "DIFFN_PATHO")
probs[["R_DIFFN_APB_MUSIZE"]] = list(
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 70, 30, 0, 0),
  c(0, 0, 90, 10, 0, 0),
  c(0, 0, 70, 30, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 70, 30, 0, 0),
  c(0, 0, 90, 10, 0, 0),
  c(0, 0, 70, 30, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 0, 80, 20, 0),
  c(0, 0, 70, 20, 10, 0),
  c(0, 0, 0, 70, 30, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 0, 80, 20, 0),
  c(0, 0, 70, 20, 10, 0),
  c(0, 0, 0, 70, 30, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 0, 0, 50, 50),
  c(0, 0, 0, 25, 50, 25),
  c(0, 0, 0, 0, 50, 50),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 0, 0, 50, 50),
  c(0, 0, 0, 25, 50, 25),
  c(0, 0, 0, 0, 50, 50),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0))

parents[["R_LNLW_APB_MUSIZE"]] = c("R_LNLW_MED_SEV", "R_LNLW_MED_TIME", "R_LNLW_MED_PATHO")
probs[["R_LNLW_APB_MUSIZE"]] = list(
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 90, 10, 0, 0),
  c(0, 0, 95, 5, 0, 0),
  c(0, 0, 80, 20, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 90, 10, 0, 0),
  c(0, 0, 95, 5, 0, 0),
  c(0, 0, 80, 20, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 20, 70, 10, 0),
  c(0, 0, 70, 25, 5, 0),
  c(0, 0, 0, 80, 20, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 20, 70, 10, 0),
  c(0, 0, 70, 25, 5, 0),
  c(0, 0, 0, 80, 20, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 0, 20, 70, 10),
  c(0, 0, 0, 25, 70, 5),
  c(0, 0, 0, 10, 60, 30),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 0, 20, 70, 10),
  c(0, 0, 0, 25, 70, 5),
  c(0, 0, 0, 10, 60, 30),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 0, 20, 70, 10),
  c(0, 0, 0, 25, 70, 5),
  c(0, 0, 0, 10, 60, 30),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 0, 20, 70, 10),
  c(0, 0, 0, 25, 70, 5),
  c(0, 0, 0, 10, 60, 30),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0))

parents[["R_DIFFN_APB_MALOSS"]] = c("DIFFN_M_SEV_DIST", "DIFFN_PATHO")
probs[["R_DIFFN_APB_MALOSS"]] = list(
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(0, 0, 0, 100, 0),
  c(0, 0, 50, 50, 0),
  c(40, 60, 0, 0, 0),
  c(50, 50, 0, 0, 0),
  c(0, 100, 0, 0, 0),
  c(0, 0, 0, 100, 0),
  c(0, 0, 50, 50, 0),
  c(0, 40, 60, 0, 0),
  c(40, 30, 30, 0, 0),
  c(0, 0, 100, 0, 0),
  c(0, 0, 0, 100, 0),
  c(0, 0, 50, 50, 0),
  c(0, 0, 40, 60, 0),
  c(0, 0, 50, 50, 0),
  c(0, 0, 0, 80, 20),
  c(0, 0, 0, 100, 0),
  c(0, 0, 50, 50, 0))

parents[["R_LNLW_APB_MALOSS"]] = c("R_LNLW_MED_SEV", "R_LNLW_MED_PATHO")
probs[["R_LNLW_APB_MALOSS"]] = list(
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(0, 0, 0, 100, 0),
  c(0, 0, 50, 50, 0),
  c(50, 50, 0, 0, 0),
  c(50, 50, 0, 0, 0),
  c(0, 100, 0, 0, 0),
  c(0, 0, 0, 100, 0),
  c(0, 0, 50, 50, 0),
  c(0, 50, 50, 0, 0),
  c(40, 30, 30, 0, 0),
  c(0, 0, 100, 0, 0),
  c(0, 0, 0, 100, 0),
  c(0, 0, 50, 50, 0),
  c(0, 0, 50, 50, 0),
  c(0, 0, 50, 50, 0),
  c(0, 0, 0, 100, 0),
  c(0, 0, 0, 100, 0),
  c(0, 0, 50, 50, 0),
  c(0, 0, 0, 10, 90),
  c(25, 25, 25, 25, 0),
  c(0, 0, 0, 0, 100),
  c(0, 0, 0, 100, 0),
  c(0, 0, 50, 50, 0))

parents[["R_LNLT1_LP_APB_MUSIZE"]] = c("R_LNLLP_APB_MUSIZE", "R_LNLT1_APB_MUSIZE")
probs[["R_LNLT1_LP_APB_MUSIZE"]] = list(
  c(1, 0, 0, 0, 0, 0),
  c(1, 0, 0, 0, 0, 0),
  c(1, 0, 0, 0, 0, 0),
  c(1, 0, 0, 0, 0, 0),
  c(1, 0, 0, 0, 0, 0),
  c(1, 0, 0, 0, 0, 0),
  c(1, 0, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 0.9993, 0.0005, 0.0001, 0, 0),
  c(1, 0, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 0, 1, 0, 0, 0),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1),
  c(1, 0, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1),
  c(1, 0, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1),
  c(1, 0, 0, 0, 0, 0),
  c(0, 0.9993, 0.0005, 0.0001, 0, 0),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1))

parents[["R_LNLBE_APB_MUSIZE"]] = c("R_LNLBE_MED_SEV", "R_LNLBE_MED_TIME", "R_LNLBE_MED_PATHO")
probs[["R_LNLBE_APB_MUSIZE"]] = list(
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 90, 10, 0, 0),
  c(0, 0, 95, 5, 0, 0),
  c(0, 0, 80, 20, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 90, 10, 0, 0),
  c(0, 0, 95, 5, 0, 0),
  c(0, 0, 80, 20, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 20, 70, 10, 0),
  c(0, 0, 70, 25, 5, 0),
  c(0, 0, 0, 80, 20, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 20, 70, 10, 0),
  c(0, 0, 70, 25, 5, 0),
  c(0, 0, 0, 80, 20, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 0, 20, 70, 10),
  c(0, 0, 0, 25, 70, 5),
  c(0, 0, 0, 10, 60, 30),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 0, 20, 70, 10),
  c(0, 0, 0, 25, 70, 5),
  c(0, 0, 0, 10, 60, 30),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(0, 0, 100, 0, 0, 0),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 0, 20, 70, 10),
  c(0, 0, 0, 25, 70, 5),
  c(0, 0, 0, 10, 60, 30),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0),
  c(0, 0, 0, 20, 70, 10),
  c(0, 0, 0, 25, 70, 5),
  c(0, 0, 0, 10, 60, 30),
  c(100, 0, 0, 0, 0, 0),
  c(0, 100, 0, 0, 0, 0))

parents[["R_LNLBE_APB_MALOSS"]] = c("R_LNLBE_MED_SEV", "R_LNLBE_MED_PATHO")
probs[["R_LNLBE_APB_MALOSS"]] = list(
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(0, 0, 0, 100, 0),
  c(0, 0, 50, 50, 0),
  c(50, 50, 0, 0, 0),
  c(50, 50, 0, 0, 0),
  c(0, 100, 0, 0, 0),
  c(0, 0, 0, 100, 0),
  c(0, 0, 50, 50, 0),
  c(0, 50, 50, 0, 0),
  c(40, 30, 30, 0, 0),
  c(0, 0, 100, 0, 0),
  c(0, 0, 0, 100, 0),
  c(0, 0, 50, 50, 0),
  c(0, 0, 50, 50, 0),
  c(0, 0, 50, 50, 0),
  c(0, 0, 0, 100, 0),
  c(0, 0, 0, 100, 0),
  c(0, 0, 50, 50, 0),
  c(0, 0, 0, 10, 90),
  c(25, 25, 25, 25, 0),
  c(0, 0, 0, 0, 100),
  c(0, 0, 0, 100, 0),
  c(0, 0, 50, 50, 0))

parents[["R_LNLT1_LP_APB_MALOSS"]] = c("R_LNLT1_APB_MALOSS", "R_LNLLP_APB_MALOSS")
probs[["R_LNLT1_LP_APB_MALOSS"]] = list(
  c(1, 0, 0, 0, 0),
  c(0.0022, 0.9977, 0.0001, 0, 0),
  c(0.0002, 0.0369, 0.9589, 0.0041, 0),
  c(0, 0.0002, 0.0329, 0.9669, 0),
  c(0, 0, 0, 0, 1),
  c(0.0022, 0.9977, 0.0001, 0, 0),
  c(0, 0.0282, 0.9718, 0, 0),
  c(0, 0.0009, 0.3409, 0.6582, 0),
  c(0, 0, 0.0038, 0.9962, 0),
  c(0, 0, 0, 0, 1),
  c(0.0002, 0.0369, 0.9589, 0.0041, 0),
  c(0, 0.0009, 0.3409, 0.6582, 0),
  c(0, 0, 0.01, 0.99, 0),
  c(0, 0, 0.0011, 0.9989, 0),
  c(0, 0, 0, 0, 1),
  c(0, 0.0002, 0.0329, 0.9669, 0),
  c(0, 0, 0.0038, 0.9962, 0),
  c(0, 0, 0.0011, 0.9989, 0),
  c(0, 0, 0.0004, 0.9996, 0),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1))

parents[["R_LNLT1_LP_BE_APB_MUSIZE"]] = c("R_LNLBE_APB_MUSIZE", "R_LNLT1_LP_APB_MUSIZE")
probs[["R_LNLT1_LP_BE_APB_MUSIZE"]] = list(
  c(1, 0, 0, 0, 0, 0),
  c(1, 0, 0, 0, 0, 0),
  c(1, 0, 0, 0, 0, 0),
  c(1, 0, 0, 0, 0, 0),
  c(1, 0, 0, 0, 0, 0),
  c(1, 0, 0, 0, 0, 0),
  c(1, 0, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 0.9993, 0.0005, 0.0001, 0, 0),
  c(1, 0, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 0, 1, 0, 0, 0),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1),
  c(1, 0, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1),
  c(1, 0, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1),
  c(1, 0, 0, 0, 0, 0),
  c(0, 0.9993, 0.0005, 0.0001, 0, 0),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1))

parents[["R_DIFFN_LNLW_APB_MUSIZE"]] = c("R_LNLW_APB_MUSIZE", "R_DIFFN_APB_MUSIZE")
probs[["R_DIFFN_LNLW_APB_MUSIZE"]] = list(
  c(1, 0, 0, 0, 0, 0),
  c(1, 0, 0, 0, 0, 0),
  c(1, 0, 0, 0, 0, 0),
  c(1, 0, 0, 0, 0, 0),
  c(1, 0, 0, 0, 0, 0),
  c(1, 0, 0, 0, 0, 0),
  c(1, 0, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 0.9993, 0.0005, 0.0001, 0, 0),
  c(1, 0, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 0, 0.9981, 0.0019, 0, 0),
  c(0, 0, 0.0019, 0.9981, 0, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1),
  c(1, 0, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 0, 0.0019, 0.9981, 0, 0),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1),
  c(1, 0, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1),
  c(1, 0, 0, 0, 0, 0),
  c(0, 0.9993, 0.0005, 0.0001, 0, 0),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1))

parents[["R_LNL_DIFFN_APB_DENERV"]] = c("R_LNLT1_LP_BE_APB_DENERV", "R_DIFFN_LNLW_APB_DENERV")
probs[["R_LNL_DIFFN_APB_DENERV"]] = list(
  c(1, 0, 0, 0),
  c(0, 1, 0, 0),
  c(0, 0, 1, 0),
  c(0, 0, 0, 1),
  c(0, 1, 0, 0),
  c(0, 0, 1, 0),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 1, 0),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1))

parents[["R_MUSCLE_APB_DENERV"]] = c("R_MYOP_MYDY_APB_DENERV", "R_NMT_APB_DENERV")
probs[["R_MUSCLE_APB_DENERV"]] = list(
  c(1, 0, 0, 0),
  c(0, 1, 0, 0),
  c(0, 0, 1, 0),
  c(0, 0, 0, 1),
  c(0, 1, 0, 0),
  c(0, 0, 1, 0),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 1, 0),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1))

parents[["R_DIFFN_LNLW_APB_NEUR_ACT"]] = c("R_DIFFN_APB_NEUR_ACT", "R_LNLW_APB_NEUR_ACT")
probs[["R_DIFFN_LNLW_APB_NEUR_ACT"]] = list(
  c(1, 0, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 0, 1, 0, 0, 0),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1),
  c(0, 1, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 0, 1, 0, 0, 0),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 1, 0, 0, 0),
  c(0, 0, 1, 0, 0, 0),
  c(0, 0, 1, 0, 0, 0),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1))

parents[["R_LNLT1_LP_BE_APB_NEUR_ACT"]] = c("R_LNLT1_LP_APB_NEUR_ACT", "R_LNLBE_APB_NEUR_ACT")
probs[["R_LNLT1_LP_BE_APB_NEUR_ACT"]] = list(
  c(1, 0, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 0, 1, 0, 0, 0),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1),
  c(0, 1, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 0, 1, 0, 0, 0),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 1, 0, 0, 0),
  c(0, 0, 1, 0, 0, 0),
  c(0, 0, 1, 0, 0, 0),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1))

parents[["R_MUSCLE_APB_MUDENS"]] = c("R_MYOP_MYDY_APB_MUDENS", "R_MYAS_APB_MUDENS")
probs[["R_MUSCLE_APB_MUDENS"]] = list(
  c(1, 0, 0),
  c(0, 1, 0),
  c(0, 0, 1),
  c(0, 1, 0),
  c(0, 0, 1),
  c(0, 0, 1),
  c(0, 0, 1),
  c(0, 0, 1),
  c(0, 0, 1))

parents[["R_LNL_DIFFN_APB_MUDENS"]] = c("R_LNLT1_LP_BE_APB_MUDENS", "R_DIFFN_LNLW_APB_MUDENS")
probs[["R_LNL_DIFFN_APB_MUDENS"]] = list(
  c(1, 0, 0),
  c(0, 1, 0),
  c(0, 0, 1),
  c(0, 1, 0),
  c(0, 0, 1),
  c(0, 0, 1),
  c(0, 0, 1),
  c(0, 0, 1),
  c(0, 0, 1))

parents[["R_MYOP_MYDY_APB_DE_REGEN"]] = c("R_MYOP_APB_DE_REGEN", "R_MYDY_APB_DE_REGEN")
probs[["R_MYOP_MYDY_APB_DE_REGEN"]] = list(
  c(1, 0),
  c(0, 1),
  c(0, 1),
  c(0, 1))

parents[["R_LNL_DIFFN_APB_DE_REGEN"]] = c("R_LNLT1_LP_BE_APB_DE_REGEN", "R_DIFFN_LNLW_APB_DE_REGEN")
probs[["R_LNL_DIFFN_APB_DE_REGEN"]] = list(
  c(1, 0),
  c(0, 1),
  c(0, 1),
  c(0, 1))

parents[["R_LNLW_MED_SEV"]] = vector()
probs[["R_LNLW_MED_SEV"]] = list(
  c(73, 16, 7, 3, 1))

parents[["R_LNLW_MED_PATHO"]] = vector()
probs[["R_LNLW_MED_PATHO"]] = list(
  c(80, 12, 7, 0.5, 0.5))

parents[["R_LNLBE_MED_DIFSLOW"]] = c("R_LNLBE_MED_PATHO")
probs[["R_LNLBE_MED_DIFSLOW"]] = list(
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(0, 0, 0, 100),
  c(0, 0, 100, 0))

parents[["R_LNLW_MED_BLOCK"]] = c("R_LNLW_MED_SEV", "R_LNLW_MED_PATHO")
probs[["R_LNLW_MED_BLOCK"]] = list(
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(0, 50, 50, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(60, 40, 0, 0, 0),
  c(0, 50, 50, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(25, 50, 25, 0, 0),
  c(0, 0, 40, 50, 10),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(20, 20, 20, 20, 20),
  c(0, 0, 0, 0, 100),
  c(20, 20, 20, 20, 20),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0))

parents[["R_MYAS_APB_NMT"]] = vector()
probs[["R_MYAS_APB_NMT"]] = list(
  c(1, 0, 0, 0, 0, 0, 0))

parents[["R_DE_REGEN_APB_NMT"]] = c("R_APB_DE_REGEN")
probs[["R_DE_REGEN_APB_NMT"]] = list(
  c(100, 0, 0, 0, 0, 0, 0),
  c(65, 2, 1, 27, 2, 1, 2))

parents[["R_LNL_DIFFN_APB_MUSIZE"]] = c("R_DIFFN_LNLW_APB_MUSIZE", "R_LNLT1_LP_BE_APB_MUSIZE")
probs[["R_LNL_DIFFN_APB_MUSIZE"]] = list(
  c(1, 0, 0, 0, 0, 0),
  c(1, 0, 0, 0, 0, 0),
  c(1, 0, 0, 0, 0, 0),
  c(1, 0, 0, 0, 0, 0),
  c(1, 0, 0, 0, 0, 0),
  c(1, 0, 0, 0, 0, 0),
  c(1, 0, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 0.9993, 0.0005, 0.0001, 0, 0),
  c(1, 0, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 0, 0.9981, 0.0019, 0, 0),
  c(0, 0, 0.0019, 0.9981, 0, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1),
  c(1, 0, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 0, 0.0019, 0.9981, 0, 0),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1),
  c(1, 0, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1),
  c(1, 0, 0, 0, 0, 0),
  c(0, 0.9993, 0.0005, 0.0001, 0, 0),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1))

parents[["R_MYOP_MYDY_APB_MUSIZE"]] = c("R_MYDY_APB_MUSIZE", "R_MYOP_APB_MUSIZE")
probs[["R_MYOP_MYDY_APB_MUSIZE"]] = list(
  c(1, 0, 0, 0, 0, 0),
  c(0.9983, 0.0017, 0, 0, 0, 0),
  c(0.9857, 0.0143, 0, 0, 0, 0),
  c(0.3673, 0.6298, 0.0029, 0, 0, 0),
  c(0.0115, 0.8616, 0.1249, 0.0019, 0, 0),
  c(0, 0.1596, 0.7368, 0.1016, 0.002, 0),
  c(0.9983, 0.0017, 0, 0, 0, 0),
  c(0.8667, 0.1329, 0.0004, 0, 0, 0),
  c(0.0139, 0.9636, 0.0224, 0, 0, 0),
  c(0.0003, 0.3514, 0.6035, 0.0443, 0.0005, 0),
  c(0, 0.0105, 0.5726, 0.3806, 0.0359, 0.0004),
  c(0, 0, 0.0792, 0.4758, 0.4066, 0.0384),
  c(0.9857, 0.0143, 0, 0, 0, 0),
  c(0.0139, 0.9636, 0.0224, 0, 0, 0),
  c(0, 0, 1, 0, 0, 0),
  c(0, 0, 0.0406, 0.9277, 0.0316, 0),
  c(0, 0, 0, 0.0319, 0.9362, 0.0319),
  c(0, 0, 0, 0, 0.0329, 0.9671),
  c(0.3673, 0.6298, 0.0029, 0, 0, 0),
  c(0.0003, 0.3514, 0.6035, 0.0443, 0.0005, 0),
  c(0, 0, 0.0406, 0.9277, 0.0316, 0),
  c(0, 0, 0.0004, 0.1099, 0.7799, 0.1099),
  c(0, 0, 0, 0.0003, 0.1234, 0.8762),
  c(0, 0, 0, 0, 0.0028, 0.9972),
  c(0.0115, 0.8616, 0.1249, 0.0019, 0, 0),
  c(0, 0.0105, 0.5726, 0.3806, 0.0359, 0.0004),
  c(0, 0, 0, 0.0319, 0.9362, 0.0319),
  c(0, 0, 0, 0.0003, 0.1234, 0.8762),
  c(0, 0, 0, 0, 0.0028, 0.9972),
  c(0, 0, 0, 0, 0.0001, 0.9999),
  c(0, 0.1596, 0.7368, 0.1016, 0.002, 0),
  c(0, 0, 0.0792, 0.4758, 0.4066, 0.0384),
  c(0, 0, 0, 0, 0.0329, 0.9671),
  c(0, 0, 0, 0, 0.0028, 0.9972),
  c(0, 0, 0, 0, 0.0001, 0.9999),
  c(0, 0, 0, 0, 0, 1))

parents[["R_DIFFN_LNLW_APB_MALOSS"]] = c("R_LNLW_APB_MALOSS", "R_DIFFN_APB_MALOSS")
probs[["R_DIFFN_LNLW_APB_MALOSS"]] = list(
  c(1, 0, 0, 0, 0),
  c(0.0022, 0.9977, 0.0001, 0, 0),
  c(0.0002, 0.0369, 0.9589, 0.0041, 0),
  c(0, 0.0002, 0.0329, 0.9669, 0),
  c(0, 0, 0, 0, 1),
  c(0.0022, 0.9977, 0.0001, 0, 0),
  c(0, 0.0282, 0.9718, 0, 0),
  c(0, 0.0009, 0.3409, 0.6582, 0),
  c(0, 0, 0.0038, 0.9962, 0),
  c(0, 0, 0, 0, 1),
  c(0.0002, 0.0369, 0.9589, 0.0041, 0),
  c(0, 0.0009, 0.3409, 0.6582, 0),
  c(0, 0, 0.01, 0.99, 0),
  c(0, 0, 0.0011, 0.9989, 0),
  c(0, 0, 0, 0, 1),
  c(0, 0.0002, 0.0329, 0.9669, 0),
  c(0, 0, 0.0038, 0.9962, 0),
  c(0, 0, 0.0011, 0.9989, 0),
  c(0, 0, 0.0004, 0.9996, 0),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1))

parents[["R_LNLT1_LP_BE_APB_MALOSS"]] = c("R_LNLT1_LP_APB_MALOSS", "R_LNLBE_APB_MALOSS")
probs[["R_LNLT1_LP_BE_APB_MALOSS"]] = list(
  c(1, 0, 0, 0, 0),
  c(0.0022, 0.9977, 0.0001, 0, 0),
  c(0.0002, 0.0369, 0.9589, 0.0041, 0),
  c(0, 0.0002, 0.0329, 0.9669, 0),
  c(0, 0, 0, 0, 1),
  c(0.0022, 0.9977, 0.0001, 0, 0),
  c(0, 0.0282, 0.9718, 0, 0),
  c(0, 0.0009, 0.3409, 0.6582, 0),
  c(0, 0, 0.0038, 0.9962, 0),
  c(0, 0, 0, 0, 1),
  c(0.0002, 0.0369, 0.9589, 0.0041, 0),
  c(0, 0.0009, 0.3409, 0.6582, 0),
  c(0, 0, 0.01, 0.99, 0),
  c(0, 0, 0.0011, 0.9989, 0),
  c(0, 0, 0, 0, 1),
  c(0, 0.0002, 0.0329, 0.9669, 0),
  c(0, 0, 0.0038, 0.9962, 0),
  c(0, 0, 0.0011, 0.9989, 0),
  c(0, 0, 0.0004, 0.9996, 0),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1))

parents[["R_DIFFN_MED_DIFSLOW"]] = c("DIFFN_M_SEV_DIST", "DIFFN_PATHO")
probs[["R_DIFFN_MED_DIFSLOW"]] = list(
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(0, 0, 0, 100),
  c(0, 0, 70, 30),
  c(0, 50, 50, 0),
  c(40, 50, 10, 0),
  c(100, 0, 0, 0),
  c(0, 0, 0, 100),
  c(0, 0, 70, 30),
  c(0, 20, 60, 20),
  c(20, 40, 30, 10),
  c(100, 0, 0, 0),
  c(0, 0, 0, 100),
  c(0, 0, 70, 30),
  c(0, 20, 60, 20),
  c(20, 40, 30, 10),
  c(100, 0, 0, 0),
  c(0, 0, 0, 100),
  c(0, 0, 70, 30))

parents[["R_LNLBE_MED_SEV"]] = vector()
probs[["R_LNLBE_MED_SEV"]] = list(
  c(98.1, 1, 0.5, 0.3, 0.1))

parents[["R_LNLBE_MED_PATHO"]] = vector()
probs[["R_LNLBE_MED_PATHO"]] = list(
  c(60, 19, 20, 0.5, 0.5))

parents[["R_LNLBE_MED_BLOCK"]] = c("R_LNLBE_MED_SEV", "R_LNLBE_MED_PATHO")
probs[["R_LNLBE_MED_BLOCK"]] = list(
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(0, 50, 50, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(60, 40, 0, 0, 0),
  c(0, 50, 50, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(25, 50, 25, 0, 0),
  c(0, 0, 40, 50, 10),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(20, 20, 20, 20, 20),
  c(0, 0, 0, 0, 100),
  c(20, 20, 20, 20, 20),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0))

parents[["R_DIFFN_MED_BLOCK"]] = c("DIFFN_M_SEV_DIST", "DIFFN_PATHO")
probs[["R_DIFFN_MED_BLOCK"]] = list(
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(0, 50, 50, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(60, 40, 0, 0, 0),
  c(0, 50, 50, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(25, 50, 25, 0, 0),
  c(0, 0, 40, 50, 10),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0))

parents[["R_LNLW_MEDD2_RD_WD"]] = c("R_LNLW_MED_PATHO")
probs[["R_LNLW_MEDD2_RD_WD"]] = list(
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(0, 0, 100),
  c(0, 100, 0))

parents[["R_LNLW_MEDD2_LD_WD"]] = c("R_LNLW_MED_SEV", "R_LNLW_MED_PATHO")
probs[["R_LNLW_MEDD2_LD_WD"]] = list(
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(0, 100, 0, 0),
  c(50, 50, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(0, 0, 100, 0),
  c(25, 50, 25, 0),
  c(50, 50, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(0, 0, 0, 100),
  c(5, 30, 50, 15),
  c(0, 100, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(0, 0, 0, 100),
  c(25, 25, 25, 25),
  c(0, 50, 50, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0))

parents[["R_LNLBE_MEDD2_DIFSLOW_WD"]] = c("R_LNLBE_MED_PATHO")
probs[["R_LNLBE_MEDD2_DIFSLOW_WD"]] = list(
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(0, 0, 0, 100),
  c(0, 0, 100, 0))

parents[["R_LNLW_MEDD2_BLOCK_WD"]] = c("R_LNLW_MED_SEV", "R_LNLW_MED_PATHO")
probs[["R_LNLW_MEDD2_BLOCK_WD"]] = list(
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(80, 20, 0, 0, 0),
  c(0, 50, 50, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(30, 60, 10, 0, 0),
  c(0, 0, 50, 50, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(10, 50, 30, 10, 0),
  c(0, 0, 20, 60, 20),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(0, 5, 20, 55, 20),
  c(0, 0, 0, 0, 100),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0))

parents[["R_DIFFN_LNLW_MEDD2_DISP_WD"]] = c("R_LNLW_MEDD2_DISP_WD", "R_DIFFN_MEDD2_DISP")
probs[["R_DIFFN_LNLW_MEDD2_DISP_WD"]] = list(
  c(1, 0, 0, 0),
  c(0.0749, 0.8229, 0.1022, 0),
  c(0, 0.0626, 0.9373, 0),
  c(0, 0, 0, 1),
  c(0.0749, 0.8229, 0.1022, 0),
  c(0.0047, 0.1786, 0.8167, 0),
  c(0, 0.019, 0.9795, 0.0015),
  c(0, 0, 0, 1),
  c(0, 0.0626, 0.9373, 0),
  c(0, 0.019, 0.9795, 0.0015),
  c(0, 0.0001, 0.0833, 0.9166),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1))

parents[["R_LNLBE_MEDD2_SALOSS_EW"]] = c("R_LNLBE_MED_SEV", "R_LNLBE_MED_PATHO")
probs[["R_LNLBE_MEDD2_SALOSS_EW"]] = list(
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(0, 0, 0, 100, 0),
  c(0, 0, 50, 50, 0),
  c(50, 50, 0, 0, 0),
  c(50, 50, 0, 0, 0),
  c(0, 100, 0, 0, 0),
  c(0, 0, 0, 100, 0),
  c(0, 0, 50, 50, 0),
  c(0, 50, 50, 0, 0),
  c(20, 50, 30, 0, 0),
  c(0, 0, 100, 0, 0),
  c(0, 0, 0, 100, 0),
  c(0, 0, 50, 50, 0),
  c(0, 0, 50, 50, 0),
  c(0, 20, 50, 30, 0),
  c(0, 0, 0, 100, 0),
  c(0, 0, 0, 100, 0),
  c(0, 0, 50, 50, 0),
  c(0, 0, 0, 40, 60),
  c(0, 10, 40, 40, 10),
  c(0, 0, 0, 0, 100),
  c(0, 0, 0, 100, 0),
  c(0, 0, 50, 50, 0))

parents[["R_DIFFN_LNLW_MEDD2_SALOSS"]] = c("R_LNLW_MEDD2_SALOSS_WD", "R_DIFFN_MEDD2_SALOSS")
probs[["R_DIFFN_LNLW_MEDD2_SALOSS"]] = list(
  c(1, 0, 0, 0, 0),
  c(0.0073, 0.9812, 0.0115, 0, 0),
  c(0.0017, 0.1306, 0.867, 0.0007, 0),
  c(0, 0.0003, 0.0212, 0.9785, 0),
  c(0, 0, 0, 0, 1),
  c(0.0073, 0.9812, 0.0115, 0, 0),
  c(0, 0.0289, 0.9711, 0, 0),
  c(0, 0.0097, 0.5989, 0.3914, 0),
  c(0, 0, 0.0017, 0.9983, 0),
  c(0, 0, 0, 0, 1),
  c(0.0017, 0.1306, 0.867, 0.0007, 0),
  c(0, 0.0097, 0.5989, 0.3914, 0),
  c(0, 0.0005, 0.0331, 0.9665, 0),
  c(0, 0, 0.0008, 0.9992, 0),
  c(0, 0, 0, 0, 1),
  c(0, 0.0003, 0.0212, 0.9785, 0),
  c(0, 0, 0.0017, 0.9983, 0),
  c(0, 0, 0.0008, 0.9992, 0),
  c(0, 0, 0.0001, 0.9999, 0),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1))

parents[["R_DIFFN_MEDD2_DIFSLOW"]] = c("DIFFN_S_SEV_DIST", "DIFFN_PATHO")
probs[["R_DIFFN_MEDD2_DIFSLOW"]] = list(
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(0, 0, 0, 100),
  c(0, 0, 70, 30),
  c(0, 50, 50, 0),
  c(50, 50, 0, 0),
  c(100, 0, 0, 0),
  c(0, 0, 0, 100),
  c(0, 0, 70, 30),
  c(0, 20, 60, 20),
  c(20, 40, 30, 10),
  c(100, 0, 0, 0),
  c(0, 0, 0, 100),
  c(0, 0, 70, 30),
  c(0, 10, 60, 30),
  c(20, 40, 30, 10),
  c(100, 0, 0, 0),
  c(0, 0, 0, 100),
  c(0, 0, 70, 30))

parents[["R_LNLBE_MEDD2_RD_EW"]] = c("R_LNLBE_MED_PATHO")
probs[["R_LNLBE_MEDD2_RD_EW"]] = list(
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(0, 0, 100),
  c(0, 100, 0))

parents[["R_LNLBE_MEDD2_LD_EW"]] = c("R_LNLBE_MED_SEV", "R_LNLBE_MED_PATHO")
probs[["R_LNLBE_MEDD2_LD_EW"]] = list(
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(0, 100, 0, 0),
  c(50, 50, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(0, 0, 100, 0),
  c(25, 50, 25, 0),
  c(50, 50, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(0, 0, 0, 100),
  c(5, 30, 50, 15),
  c(0, 100, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(0, 0, 0, 100),
  c(25, 25, 25, 25),
  c(0, 50, 50, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0))

parents[["R_LNLBE_MEDD2_BLOCK_EW"]] = c("R_LNLBE_MED_SEV", "R_LNLBE_MED_PATHO")
probs[["R_LNLBE_MEDD2_BLOCK_EW"]] = list(
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(80, 20, 0, 0, 0),
  c(0, 50, 50, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(30, 60, 10, 0, 0),
  c(0, 0, 50, 50, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(10, 50, 30, 10, 0),
  c(0, 0, 20, 60, 20),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(0, 5, 20, 55, 20),
  c(0, 0, 0, 0, 100),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0))

parents[["R_DIFFN_MEDD2_BLOCK"]] = c("DIFFN_S_SEV_DIST", "DIFFN_PATHO")
probs[["R_DIFFN_MEDD2_BLOCK"]] = list(
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(80, 20, 0, 0, 0),
  c(20, 50, 30, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(60, 40, 0, 0, 0),
  c(0, 20, 50, 30, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(25, 50, 25, 0, 0),
  c(0, 0, 40, 50, 10),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0),
  c(100, 0, 0, 0, 0))

parents[["R_LNLBE_MEDD2_DISP_EW"]] = c("R_LNLBE_MED_SEV", "R_LNLBE_MED_PATHO")
probs[["R_LNLBE_MEDD2_DISP_EW"]] = list(
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(0, 0, 0, 100),
  c(0, 0, 0, 100),
  c(0, 100, 0, 0),
  c(50, 50, 0, 0),
  c(100, 0, 0, 0),
  c(0, 0, 0, 100),
  c(0, 0, 0, 100),
  c(0, 0, 100, 0),
  c(0, 50, 50, 0),
  c(50, 50, 0, 0),
  c(0, 0, 0, 100),
  c(0, 0, 0, 100),
  c(0, 0, 0, 100),
  c(0, 10, 50, 40),
  c(30, 50, 20, 0),
  c(0, 0, 0, 100),
  c(0, 0, 0, 100),
  c(0, 0, 0, 100),
  c(0, 0, 50, 50),
  c(0, 50, 50, 0),
  c(0, 0, 0, 100),
  c(0, 0, 0, 100))

parents[["R_DIFFN_MEDD2_DISP"]] = c("DIFFN_S_SEV_DIST", "DIFFN_PATHO")
probs[["R_DIFFN_MEDD2_DISP"]] = list(
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(0, 0, 0, 100),
  c(0, 0, 0, 100),
  c(0, 100, 0, 0),
  c(50, 50, 0, 0),
  c(100, 0, 0, 0),
  c(0, 0, 0, 100),
  c(0, 0, 0, 100),
  c(0, 0, 100, 0),
  c(0, 50, 50, 0),
  c(50, 50, 0, 0),
  c(0, 0, 0, 100),
  c(0, 0, 0, 100),
  c(0, 0, 0, 100),
  c(0, 10, 50, 40),
  c(0, 50, 50, 0),
  c(0, 0, 0, 100),
  c(0, 0, 0, 100))

parents[["R_MED_RD_WA"]] = c("R_LNLW_MED_PATHO")
probs[["R_MED_RD_WA"]] = list(
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(0, 0, 100),
  c(0, 100, 0))

parents[["R_MED_LD_WA"]] = c("R_LNLW_MED_SEV", "R_LNLW_MED_PATHO")
probs[["R_MED_LD_WA"]] = list(
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(0, 100, 0, 0),
  c(50, 50, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(0, 0, 100, 0),
  c(25, 50, 25, 0),
  c(50, 50, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(0, 0, 0, 100),
  c(5, 30, 50, 15),
  c(0, 100, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(25, 25, 25, 25),
  c(25, 25, 25, 25),
  c(25, 25, 25, 25),
  c(25, 25, 25, 25),
  c(25, 25, 25, 25))

parents[["R_MED_DIFSLOW_WA"]] = c("R_LNLBE_MED_DIFSLOW", "R_DIFFN_MED_DIFSLOW")
probs[["R_MED_DIFSLOW_WA"]] = list(
  c(1, 0, 0, 0),
  c(0.0132, 0.9863, 0.0006, 0),
  c(0, 0.0181, 0.9818, 0),
  c(0, 0.0003, 0.0252, 0.9745),
  c(0.0132, 0.9863, 0.0006, 0),
  c(0.0001, 0.0952, 0.9047, 0),
  c(0, 0.0009, 0.588, 0.4111),
  c(0, 0, 0.0044, 0.9955),
  c(0, 0.0181, 0.9818, 0),
  c(0, 0.0009, 0.588, 0.4111),
  c(0, 0, 0.002, 0.998),
  c(0, 0, 0.0006, 0.9994),
  c(0, 0.0003, 0.0252, 0.9745),
  c(0, 0, 0.0044, 0.9955),
  c(0, 0, 0.0006, 0.9994),
  c(0, 0, 0.0005, 0.9995))

parents[["R_MED_BLOCK_WA"]] = c("R_DIFFN_MED_BLOCK", "R_LNLW_MED_BLOCK")
probs[["R_MED_BLOCK_WA"]] = list(
  c(1, 0, 0, 0, 0),
  c(0.0077, 0.9923, 0, 0, 0),
  c(0.0007, 0.0234, 0.9759, 0, 0),
  c(0.0019, 0.006, 0.0588, 0.9333, 0),
  c(0, 0, 0, 0, 1),
  c(0.0077, 0.9923, 0, 0, 0),
  c(0.0001, 0.498, 0.5019, 0, 0),
  c(0, 0.0032, 0.9968, 0, 0),
  c(0.001, 0.0033, 0.0376, 0.9581, 0),
  c(0, 0, 0, 0, 1),
  c(0.0007, 0.0234, 0.9759, 0, 0),
  c(0, 0.0032, 0.9968, 0, 0),
  c(0, 0.0007, 0.4328, 0.5665, 0),
  c(0.0003, 0.0011, 0.0159, 0.9827, 0),
  c(0, 0, 0, 0, 1),
  c(0.0019, 0.006, 0.0588, 0.9333, 0),
  c(0.001, 0.0033, 0.0376, 0.9581, 0),
  c(0.0003, 0.0011, 0.0159, 0.9827, 0),
  c(0.0003, 0.0011, 0.0125, 0.986, 0),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1))

parents[["R_MED_DIFSLOW_EW"]] = c("R_DIFFN_MED_DIFSLOW")
probs[["R_MED_DIFSLOW_EW"]] = list(
  c(1, 0, 0, 0),
  c(0.0126, 0.9869, 0.0005, 0),
  c(0, 0.0179, 0.9821, 0),
  c(0, 0.0003, 0.0252, 0.9745))

parents[["R_MED_RD_EW"]] = c("R_LNLBE_MED_PATHO")
probs[["R_MED_RD_EW"]] = list(
  c(100, 0, 0),
  c(100, 0, 0),
  c(100, 0, 0),
  c(0, 0, 100),
  c(0, 100, 0))

parents[["R_MED_LD_EW"]] = c("R_LNLBE_MED_SEV", "R_LNLBE_MED_PATHO")
probs[["R_MED_LD_EW"]] = list(
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(0, 100, 0, 0),
  c(50, 50, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(0, 0, 100, 0),
  c(25, 50, 25, 0),
  c(50, 50, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(0, 0, 0, 100),
  c(5, 30, 50, 15),
  c(0, 100, 0, 0),
  c(100, 0, 0, 0),
  c(100, 0, 0, 0),
  c(25, 25, 25, 25),
  c(25, 25, 25, 25),
  c(25, 25, 25, 25),
  c(25, 25, 25, 25),
  c(25, 25, 25, 25))

parents[["R_MEDD2_RD_WD"]] = c("R_LNLW_MEDD2_RD_WD")
probs[["R_MEDD2_RD_WD"]] = list(
  c(1, 0, 0),
  c(0, 1, 0),
  c(0, 0, 1))

parents[["R_MEDD2_LD_WD"]] = c("R_LNLW_MEDD2_LD_WD")
probs[["R_MEDD2_LD_WD"]] = list(
  c(1, 0, 0, 0),
  c(0, 1, 0, 0),
  c(0, 0, 1, 0),
  c(0, 0, 0, 1))

parents[["R_MEDD2_DIFSLOW_WD"]] = c("R_LNLBE_MEDD2_DIFSLOW_WD", "R_DIFFN_MEDD2_DIFSLOW")
probs[["R_MEDD2_DIFSLOW_WD"]] = list(
  c(1, 0, 0, 0),
  c(0.0127, 0.9867, 0.0006, 0),
  c(0, 0.0181, 0.9818, 0),
  c(0, 0.0006, 0.0492, 0.9502),
  c(0.0127, 0.9867, 0.0006, 0),
  c(0.0001, 0.0952, 0.9047, 0),
  c(0, 0.0011, 0.7402, 0.2587),
  c(0, 0, 0.0088, 0.9911),
  c(0, 0.0181, 0.9818, 0),
  c(0, 0.0011, 0.7402, 0.2587),
  c(0, 0, 0.004, 0.996),
  c(0, 0, 0.0012, 0.9988),
  c(0, 0.0006, 0.0492, 0.9502),
  c(0, 0, 0.0088, 0.9911),
  c(0, 0, 0.0012, 0.9988),
  c(0, 0, 0.0009, 0.9991))

parents[["R_MEDD2_BLOCK_WD"]] = c("R_LNLW_MEDD2_BLOCK_WD", "R_DIFFN_MEDD2_BLOCK")
probs[["R_MEDD2_BLOCK_WD"]] = list(
  c(1, 0, 0, 0, 0),
  c(0.0077, 0.9923, 0, 0, 0),
  c(0.0007, 0.0234, 0.9759, 0, 0),
  c(0.0019, 0.006, 0.0588, 0.9333, 0),
  c(0, 0, 0, 0, 1),
  c(0.0077, 0.9923, 0, 0, 0),
  c(0.0001, 0.498, 0.5019, 0, 0),
  c(0, 0.0032, 0.9968, 0, 0),
  c(0.001, 0.0033, 0.0376, 0.9581, 0),
  c(0, 0, 0, 0, 1),
  c(0.0007, 0.0234, 0.9759, 0, 0),
  c(0, 0.0032, 0.9968, 0, 0),
  c(0, 0.0007, 0.4328, 0.5665, 0),
  c(0.0003, 0.0011, 0.0159, 0.9827, 0),
  c(0, 0, 0, 0, 1),
  c(0.0019, 0.006, 0.0588, 0.9333, 0),
  c(0.001, 0.0033, 0.0376, 0.9581, 0),
  c(0.0003, 0.0011, 0.0159, 0.9827, 0),
  c(0.0003, 0.0011, 0.0125, 0.986, 0),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1))

parents[["R_MEDD2_DIFSLOW_EW"]] = c("R_DIFFN_MEDD2_DIFSLOW")
probs[["R_MEDD2_DIFSLOW_EW"]] = list(
  c(1, 0, 0, 0),
  c(0, 1, 0, 0),
  c(0, 0, 1, 0),
  c(0, 0, 0, 1))

parents[["R_MEDD2_SALOSS"]] = c("R_DIFFN_LNLW_MEDD2_SALOSS", "R_LNLBE_MEDD2_SALOSS_EW")
probs[["R_MEDD2_SALOSS"]] = list(
  c(1, 0, 0, 0, 0),
  c(0.0073, 0.9812, 0.0115, 0, 0),
  c(0.0017, 0.1306, 0.867, 0.0007, 0),
  c(0, 0.0003, 0.0212, 0.9785, 0),
  c(0, 0, 0, 0, 1),
  c(0.0073, 0.9812, 0.0115, 0, 0),
  c(0, 0.0289, 0.9711, 0, 0),
  c(0, 0.0097, 0.5989, 0.3914, 0),
  c(0, 0, 0.0017, 0.9983, 0),
  c(0, 0, 0, 0, 1),
  c(0.0017, 0.1306, 0.867, 0.0007, 0),
  c(0, 0.0097, 0.5989, 0.3914, 0),
  c(0, 0.0005, 0.0331, 0.9665, 0),
  c(0, 0, 0.0008, 0.9992, 0),
  c(0, 0, 0, 0, 1),
  c(0, 0.0003, 0.0212, 0.9785, 0),
  c(0, 0, 0.0017, 0.9983, 0),
  c(0, 0, 0.0008, 0.9992, 0),
  c(0, 0, 0.0001, 0.9999, 0),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1))

parents[["R_MEDD2_RD_EW"]] = c("R_LNLBE_MEDD2_RD_EW")
probs[["R_MEDD2_RD_EW"]] = list(
  c(1, 0, 0),
  c(0, 1, 0),
  c(0, 0, 1))

parents[["R_MEDD2_LD_EW"]] = c("R_LNLBE_MEDD2_LD_EW")
probs[["R_MEDD2_LD_EW"]] = list(
  c(1, 0, 0, 0),
  c(0, 1, 0, 0),
  c(0, 0, 1, 0),
  c(0, 0, 0, 1))

parents[["R_MED_DCV_WA"]] = c("R_APB_MALOSS", "R_MED_DIFSLOW_WA")
probs[["R_MED_DCV_WA"]] = list(
  c(1, 0, 0, 0, 0, 0, 0, 0, 0),
  c(0.008, 0.168, 0.7407, 0.0833, 0, 0, 0, 0, 0),
  c(0.0007, 0.0059, 0.0615, 0.3007, 0.5527, 0.0782, 0.0005, 0, 0),
  c(0.0001, 0.0003, 0.0018, 0.011, 0.067, 0.2945, 0.5047, 0.1206, 0),
  c(0.1136, 0.8864, 0, 0, 0, 0, 0, 0, 0),
  c(0.0009, 0.0368, 0.5577, 0.4025, 0.0022, 0, 0, 0, 0),
  c(0.0002, 0.0018, 0.0263, 0.1887, 0.5884, 0.1916, 0.003, 0, 0),
  c(0, 0.0001, 0.0009, 0.0059, 0.0422, 0.2356, 0.5225, 0.1927, 0),
  c(0.0006, 0.0764, 0.8866, 0.0364, 0, 0, 0, 0, 0),
  c(0, 0.0007, 0.0525, 0.5712, 0.3752, 0.0003, 0, 0, 0),
  c(0, 0.0001, 0.0024, 0.0358, 0.316, 0.5741, 0.0716, 0, 0),
  c(0, 0, 0.0001, 0.0012, 0.0121, 0.1131, 0.4415, 0.432, 0),
  c(0, 0, 0.0655, 0.9299, 0.0046, 0, 0, 0, 0),
  c(0, 0, 0.0007, 0.0745, 0.8859, 0.0389, 0, 0, 0),
  c(0, 0, 0.0001, 0.0032, 0.0781, 0.5947, 0.3236, 0.0004, 0),
  c(0, 0, 0, 0.0002, 0.0028, 0.0439, 0.2917, 0.6613, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 0, 0, 0, 1),
  c(0.1523, 0.2904, 0.3678, 0.1726, 0.0169, 0, 0, 0, 0),
  c(0.0168, 0.0618, 0.2223, 0.4015, 0.2803, 0.0172, 0.0001, 0, 0),
  c(0.001, 0.0047, 0.028, 0.1184, 0.3647, 0.3923, 0.0907, 0.0003, 0),
  c(0, 0.0002, 0.0011, 0.0057, 0.0332, 0.1704, 0.4424, 0.347, 0))

parents[["R_MED_RDLDDEL"]] = c("R_MED_LD_WA", "R_MED_RD_WA")
probs[["R_MED_RDLDDEL"]] = list(
  c(1, 0, 0, 0, 0),
  c(0.0019, 0.5257, 0.4724, 0, 0),
  c(0.0002, 0.0304, 0.9694, 0, 0),
  c(0.0964, 0.7981, 0.1055, 0, 0),
  c(0.0002, 0.0415, 0.9584, 0, 0),
  c(0.0001, 0.0142, 0.9857, 0, 0),
  c(0.0032, 0.127, 0.8698, 0, 0),
  c(0.0001, 0.0144, 0.9855, 0, 0),
  c(0, 0.009, 0.9808, 0.0102, 0),
  c(0.0009, 0.0028, 0.0147, 0.9815, 0),
  c(0.0002, 0.0006, 0.0037, 0.9956, 0),
  c(0, 0.0002, 0.0012, 0.9984, 0.0002))

parents[["R_MED_RDLDCV_EW"]] = c("R_MED_LD_EW", "R_MED_RD_EW")
probs[["R_MED_RDLDCV_EW"]] = list(
  c(0.9044, 0.0953, 0.0002, 0, 0, 0),
  c(0.0115, 0.0333, 0.1509, 0.7319, 0.0724, 0),
  c(0, 0.0001, 0.0011, 0.1462, 0.8071, 0.0456),
  c(0.132, 0.6039, 0.2641, 0, 0, 0),
  c(0.0034, 0.0122, 0.069, 0.7196, 0.1953, 0.0004),
  c(0, 0, 0.0002, 0.0581, 0.795, 0.1467),
  c(0.0139, 0.1839, 0.8022, 0, 0, 0),
  c(0.0011, 0.0045, 0.0299, 0.5742, 0.3876, 0.0027),
  c(0, 0, 0.0001, 0.0228, 0.6344, 0.3427),
  c(0.0012, 0.0067, 0.0544, 0.86, 0.0776, 0),
  c(0.0001, 0.0002, 0.0018, 0.0914, 0.6093, 0.2972),
  c(0, 0, 0, 0.0014, 0.1063, 0.8923))

parents[["R_MED_DCV_EW"]] = c("R_APB_MALOSS", "R_MED_DIFSLOW_EW")
probs[["R_MED_DCV_EW"]] = list(
  c(1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
  c(0.0041, 0.0247, 0.1546, 0.7389, 0.0776, 0, 0, 0, 0, 0),
  c(0.0004, 0.0012, 0.0055, 0.0628, 0.295, 0.5485, 0.0861, 0.0005, 0, 0),
  c(0, 0.0001, 0.0002, 0.0019, 0.0107, 0.0658, 0.2846, 0.5055, 0.1313, 0),
  c(0.109, 0.8903, 0.0007, 0, 0, 0, 0, 0, 0, 0),
  c(0.0011, 0.0082, 0.0683, 0.7087, 0.2135, 0.0002, 0, 0, 0, 0),
  c(0.0002, 0.0005, 0.0028, 0.0389, 0.2309, 0.5829, 0.1422, 0.0015, 0, 0),
  c(0, 0, 0.0001, 0.0012, 0.0075, 0.051, 0.2524, 0.5185, 0.1692, 0),
  c(0.004, 0.1144, 0.8622, 0.0195, 0, 0, 0, 0, 0, 0),
  c(0.0001, 0.0008, 0.009, 0.303, 0.6655, 0.0217, 0, 0, 0, 0),
  c(0, 0.0001, 0.0006, 0.0123, 0.1129, 0.5272, 0.3355, 0.0113, 0, 0),
  c(0, 0, 0, 0.0005, 0.0034, 0.028, 0.1822, 0.5098, 0.2761, 0),
  c(0.0001, 0.0028, 0.064, 0.9243, 0.0088, 0, 0, 0, 0, 0),
  c(0, 0, 0.0006, 0.0547, 0.6199, 0.3247, 0.0001, 0, 0, 0),
  c(0, 0, 0.0001, 0.0025, 0.036, 0.3241, 0.5711, 0.0663, 0, 0),
  c(0, 0, 0, 0.0001, 0.0012, 0.0125, 0.1118, 0.4452, 0.4291, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
  c(0.0835, 0.1153, 0.2417, 0.3746, 0.1682, 0.0167, 0, 0, 0, 0),
  c(0.0093, 0.0181, 0.0546, 0.2277, 0.3934, 0.2776, 0.0193, 0.0001, 0, 0),
  c(0.0006, 0.0012, 0.0042, 0.0284, 0.1149, 0.3576, 0.3964, 0.0964, 0.0004, 0),
  c(0, 0, 0.0002, 0.0011, 0.0056, 0.033, 0.1653, 0.4414, 0.3534, 0))

parents[["R_MEDD2_DSLOW_EW"]] = c("R_MEDD2_SALOSS", "R_MEDD2_DIFSLOW_EW")
probs[["R_MEDD2_DSLOW_EW"]] = list(
  c(1, 0, 0, 0, 0, 0, 0, 0, 0),
  c(0.0532, 0.2387, 0.495, 0.2072, 0.0059, 0, 0, 0, 0),
  c(0.0007, 0.0063, 0.0614, 0.3006, 0.5524, 0.0781, 0.0005, 0, 0),
  c(0.0003, 0.0011, 0.005, 0.0205, 0.087, 0.2822, 0.4514, 0.1525, 0),
  c(0.1036, 0.8964, 0, 0, 0, 0, 0, 0, 0),
  c(0.0178, 0.119, 0.4481, 0.3854, 0.0296, 0, 0, 0, 0),
  c(0.0002, 0.0021, 0.0283, 0.1995, 0.5939, 0.1737, 0.0023, 0, 0),
  c(0.0002, 0.0006, 0.0029, 0.0133, 0.0634, 0.2436, 0.4657, 0.2103, 0),
  c(0.0006, 0.9974, 0.0021, 0, 0, 0, 0, 0, 0),
  c(0.0048, 0.0476, 0.3148, 0.5311, 0.1016, 0.0001, 0, 0, 0),
  c(0, 0.0006, 0.0114, 0.1147, 0.5445, 0.3196, 0.0091, 0, 0),
  c(0.0001, 0.0003, 0.0017, 0.0083, 0.0447, 0.2031, 0.4632, 0.2785, 0),
  c(0.0001, 0.0629, 0.9278, 0.0092, 0, 0, 0, 0, 0),
  c(0.0006, 0.0092, 0.116, 0.4857, 0.3835, 0.0049, 0, 0, 0),
  c(0, 0.0001, 0.0024, 0.0374, 0.3327, 0.567, 0.0603, 0, 0),
  c(0, 0.0001, 0.0007, 0.0038, 0.0243, 0.1416, 0.424, 0.4054, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 0, 0, 0, 1))

parents[["R_MEDD2_LSLOW_EW"]] = c("R_MEDD2_LD_EW", "R_MEDD2_RD_EW")
probs[["R_MEDD2_LSLOW_EW"]] = list(
  c(1, 0, 0, 0, 0),
  c(0.0084, 0.0119, 0.0619, 0.9173, 0.0004),
  c(0.0053, 0.0062, 0.0264, 0.2082, 0.754),
  c(0.0185, 0.9561, 0.0254, 0, 0),
  c(0.0069, 0.01, 0.0535, 0.9286, 0.0009),
  c(0.0049, 0.0057, 0.0244, 0.1966, 0.7684),
  c(0, 0.0166, 0.9834, 0, 0),
  c(0.0056, 0.0083, 0.0452, 0.939, 0.002),
  c(0.0044, 0.0052, 0.0224, 0.1839, 0.784),
  c(0.0007, 0.002, 0.0219, 0.9754, 0),
  c(0.0023, 0.0036, 0.0217, 0.8326, 0.1398),
  c(0.0028, 0.0033, 0.0145, 0.1304, 0.849))

parents[["R_MEDD2_DSLOW_WD"]] = c("R_MEDD2_SALOSS", "R_MEDD2_DIFSLOW_WD")
probs[["R_MEDD2_DSLOW_WD"]] = list(
  c(1, 0, 0, 0, 0, 0, 0, 0, 0),
  c(0.0532, 0.2387, 0.495, 0.2072, 0.0059, 0, 0, 0, 0),
  c(0.0007, 0.0063, 0.0614, 0.3006, 0.5524, 0.0781, 0.0005, 0, 0),
  c(0.0003, 0.0011, 0.005, 0.0205, 0.087, 0.2822, 0.4514, 0.1525, 0),
  c(0.1036, 0.8964, 0, 0, 0, 0, 0, 0, 0),
  c(0.0178, 0.119, 0.4481, 0.3854, 0.0296, 0, 0, 0, 0),
  c(0.0002, 0.0021, 0.0283, 0.1995, 0.5939, 0.1737, 0.0023, 0, 0),
  c(0.0002, 0.0006, 0.0029, 0.0133, 0.0634, 0.2436, 0.4657, 0.2103, 0),
  c(0.0006, 0.9974, 0.0021, 0, 0, 0, 0, 0, 0),
  c(0.0048, 0.0476, 0.3148, 0.5311, 0.1016, 0.0001, 0, 0, 0),
  c(0, 0.0006, 0.0114, 0.1147, 0.5445, 0.3196, 0.0091, 0, 0),
  c(0.0001, 0.0003, 0.0017, 0.0083, 0.0447, 0.2031, 0.4632, 0.2785, 0),
  c(0.0001, 0.0629, 0.9278, 0.0092, 0, 0, 0, 0, 0),
  c(0.0006, 0.0092, 0.116, 0.4857, 0.3835, 0.0049, 0, 0, 0),
  c(0, 0.0001, 0.0024, 0.0374, 0.3327, 0.567, 0.0603, 0, 0),
  c(0, 0.0001, 0.0007, 0.0038, 0.0243, 0.1416, 0.424, 0.4054, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 0, 0, 0, 1))

parents[["R_MEDD2_LSLOW_WD"]] = c("R_MEDD2_LD_WD", "R_MEDD2_RD_WD")
probs[["R_MEDD2_LSLOW_WD"]] = list(
  c(1, 0, 0, 0, 0),
  c(0.0021, 0.0042, 0.0295, 0.9642, 0),
  c(0.0001, 0.0002, 0.0014, 0.083, 0.9153),
  c(0.0185, 0.9561, 0.0254, 0, 0),
  c(0.0012, 0.0025, 0.0194, 0.9769, 0),
  c(0.0001, 0.0001, 0.0008, 0.0533, 0.9457),
  c(0, 0.0166, 0.9834, 0, 0),
  c(0.0007, 0.0015, 0.012, 0.9859, 0),
  c(0, 0.0001, 0.0004, 0.0319, 0.9676),
  c(0.0007, 0.002, 0.0219, 0.9754, 0),
  c(0.0002, 0.0005, 0.0046, 0.9944, 0.0002),
  c(0, 0, 0, 0.0035, 0.9964))

parents[["R_MEDD2_EFFAXLOSS"]] = c("R_MEDD2_BLOCK_WD", "R_MEDD2_SALOSS")
probs[["R_MEDD2_EFFAXLOSS"]] = list(
  c(1, 0, 0, 0, 0),
  c(0.0073, 0.9812, 0.0115, 0, 0),
  c(0.0017, 0.1306, 0.867, 0.0007, 0),
  c(0, 0.0003, 0.0212, 0.9785, 0),
  c(0, 0, 0, 0, 1),
  c(0.0073, 0.9812, 0.0115, 0, 0),
  c(0, 0.0289, 0.9711, 0, 0),
  c(0, 0.0097, 0.5989, 0.3914, 0),
  c(0, 0, 0.0017, 0.9983, 0),
  c(0, 0, 0, 0, 1),
  c(0.0017, 0.1306, 0.867, 0.0007, 0),
  c(0, 0.0097, 0.5989, 0.3914, 0),
  c(0, 0.0005, 0.0331, 0.9665, 0),
  c(0, 0, 0.0008, 0.9992, 0),
  c(0, 0, 0, 0, 1),
  c(0, 0.0003, 0.0212, 0.9785, 0),
  c(0, 0, 0.0017, 0.9983, 0),
  c(0, 0, 0.0008, 0.9992, 0),
  c(0, 0, 0.0001, 0.9999, 0),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1))

parents[["R_MEDD2_DISP_EW"]] = c("R_DIFFN_MEDD2_DISP", "R_LNLBE_MEDD2_DISP_EW")
probs[["R_MEDD2_DISP_EW"]] = list(
  c(1, 0, 0, 0),
  c(0.0749, 0.8229, 0.1022, 0),
  c(0, 0.0626, 0.9373, 0),
  c(0, 0.0079, 0.6028, 0.3892),
  c(0.0749, 0.8229, 0.1022, 0),
  c(0.0047, 0.1786, 0.8167, 0),
  c(0, 0.019, 0.9795, 0.0015),
  c(0, 0.0001, 0.0069, 0.993),
  c(0, 0.0626, 0.9373, 0),
  c(0, 0.019, 0.9795, 0.0015),
  c(0, 0.0001, 0.0833, 0.9166),
  c(0, 0, 0, 1),
  c(0, 0.0079, 0.6028, 0.3892),
  c(0, 0.0001, 0.0069, 0.993),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1))

parents[["R_MEDD2_DISP_WD"]] = c("R_DIFFN_LNLW_MEDD2_DISP_WD")
probs[["R_MEDD2_DISP_WD"]] = list(
  c(1, 0, 0, 0),
  c(0, 1, 0, 0),
  c(0, 0, 1, 0),
  c(0, 0, 0, 1))

parents[["R_APB_SPONT_INS_ACT"]] = c("R_APB_DENERV")
probs[["R_APB_SPONT_INS_ACT"]] = list(
  c(98, 2),
  c(10, 90),
  c(5, 95),
  c(5, 95))

parents[["R_APB_SPONT_HF_DISCH"]] = c("R_APB_DENERV")
probs[["R_APB_SPONT_HF_DISCH"]] = list(
  c(99, 1),
  c(97, 3),
  c(95, 5),
  c(93, 7))

parents[["R_APB_DENERV"]] = c("R_MUSCLE_APB_DENERV", "R_LNL_DIFFN_APB_DENERV")
probs[["R_APB_DENERV"]] = list(
  c(1, 0, 0, 0),
  c(0, 1, 0, 0),
  c(0, 0, 1, 0),
  c(0, 0, 0, 1),
  c(0, 1, 0, 0),
  c(0, 0, 1, 0),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 1, 0),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1))

parents[["R_APB_SPONT_DENERV_ACT"]] = c("R_APB_DENERV")
probs[["R_APB_SPONT_DENERV_ACT"]] = list(
  c(98, 2, 0, 0),
  c(7, 85, 8, 0),
  c(1, 7, 85, 7),
  c(0, 1, 7, 92))

parents[["R_APB_NEUR_ACT"]] = c("R_LNLT1_LP_BE_APB_NEUR_ACT", "R_DIFFN_LNLW_APB_NEUR_ACT")
probs[["R_APB_NEUR_ACT"]] = list(
  c(1, 0, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 0, 1, 0, 0, 0),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1),
  c(0, 1, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0),
  c(0, 0, 1, 0, 0, 0),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 1, 0, 0, 0),
  c(0, 0, 1, 0, 0, 0),
  c(0, 0, 1, 0, 0, 0),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1))

parents[["R_APB_SPONT_NEUR_DISCH"]] = c("R_APB_NEUR_ACT")
probs[["R_APB_SPONT_NEUR_DISCH"]] = list(
  c(98, 2, 0, 0, 0, 0),
  c(10, 90, 0, 0, 0, 0),
  c(1, 4, 75, 5, 5, 10),
  c(1, 4, 5, 75, 5, 10),
  c(1, 4, 5, 5, 75, 10),
  c(1, 5, 5, 5, 5, 79))

parents[["R_APB_MUDENS"]] = c("R_LNL_DIFFN_APB_MUDENS", "R_MUSCLE_APB_MUDENS")
probs[["R_APB_MUDENS"]] = list(
  c(1, 0, 0),
  c(0, 1, 0),
  c(0, 0, 1),
  c(0, 1, 0),
  c(0, 0, 1),
  c(0, 0, 1),
  c(0, 0, 1),
  c(0, 0, 1),
  c(0, 0, 1))

parents[["R_APB_SF_DENSITY"]] = c("R_APB_MUDENS")
probs[["R_APB_SF_DENSITY"]] = list(
  c(97, 3, 0),
  c(5, 90, 5),
  c(1, 4, 95))

parents[["R_APB_SF_JITTER"]] = c("R_APB_NMT")
probs[["R_APB_SF_JITTER"]] = list(
  c(95, 5, 0, 0),
  c(2, 20, 70, 8),
  c(0, 10, 40, 50),
  c(5, 70, 20, 5),
  c(1, 19, 70, 10),
  c(0, 10, 40, 50),
  c(10, 30, 30, 30))

parents[["R_APB_REPSTIM_POST_DECR"]] = c("R_APB_NMT")
probs[["R_APB_REPSTIM_POST_DECR"]] = list(
  c(94.9, 2, 1, 0.1, 2),
  c(2, 10, 80, 6, 2),
  c(0.1, 1, 2, 94.9, 2),
  c(25, 61, 10, 2, 2),
  c(1, 10, 80, 7, 2),
  c(0.1, 1, 2, 94.9, 2),
  c(23, 23, 22, 22, 10))

parents[["R_APB_REPSTIM_FACILI"]] = c("R_APB_NMT")
probs[["R_APB_REPSTIM_FACILI"]] = list(
  c(95, 2, 1, 2),
  c(1, 88.9, 10, 0.1),
  c(1, 8, 90.9, 0.1),
  c(89, 8, 1, 2),
  c(48, 50, 1, 1),
  c(2, 94.9, 3, 0.1),
  c(25, 25, 25, 25))

parents[["R_APB_REPSTIM_DECR"]] = c("R_APB_NMT")
probs[["R_APB_REPSTIM_DECR"]] = list(
  c(94.9, 2, 1, 0.1, 2),
  c(4, 20, 70, 4, 2),
  c(0.1, 1, 4, 92.9, 2),
  c(35, 57, 5, 1, 2),
  c(2, 10, 80, 6, 2),
  c(0.1, 1, 4, 92.9, 2),
  c(24.5, 24.5, 24.5, 24.5, 2))

parents[["R_APB_REPSTIM_CMAPAMP"]] = c("R_APB_ALLAMP_WA")
probs[["R_APB_REPSTIM_CMAPAMP"]] = list(
  c(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
  c(0.0013, 0.1159, 0.128, 0.133, 0.13, 0.1194, 0.1031, 0.0838, 0.0639, 0.0459, 0.031, 0.0197, 0.0117, 0.0066, 0.0035, 0.0017, 0.0008, 0.0004, 0.0001, 0.0001, 0),
  c(0, 0.0003, 0.0013, 0.0041, 0.0112, 0.0261, 0.0516, 0.0868, 0.1247, 0.1525, 0.1589, 0.1411, 0.1068, 0.0688, 0.0378, 0.0177, 0.0071, 0.0024, 0.0007, 0.0002, 0),
  c(0, 0, 0, 0, 0, 0.0001, 0.0007, 0.0031, 0.0111, 0.0313, 0.0704, 0.1248, 0.1748, 0.1935, 0.1693, 0.117, 0.064, 0.0276, 0.0094, 0.0025, 0.0005),
  c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0003, 0.0021, 0.0107, 0.0386, 0.099, 0.1796, 0.2316, 0.2119, 0.1375, 0.0632, 0.0207, 0.0047),
  c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0003, 0.0031, 0.019, 0.0723, 0.1736, 0.2622, 0.2497, 0.1497, 0.0567, 0.0133),
  c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0007, 0.0037, 0.0151, 0.0464, 0.1065, 0.1843, 0.2393, 0.2335, 0.1704),
  c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0002, 0.0011, 0.0061, 0.0249, 0.0768, 0.1779, 0.3089, 0.404),
  c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0005, 0.0038, 0.0208, 0.086, 0.2659, 0.6229))

parents[["R_APB_NMT"]] = c("R_DE_REGEN_APB_NMT", "R_MYAS_APB_NMT")
probs[["R_APB_NMT"]] = list(
  c(1, 0, 0, 0, 0, 0, 0),
  c(0, 1, 0, 0, 0, 0, 0),
  c(0, 0, 1, 0, 0, 0, 0),
  c(0, 0, 0, 1, 0, 0, 0),
  c(0, 0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 0, 1),
  c(0, 1, 0, 0, 0, 0, 0),
  c(0, 0, 1, 0, 0, 0, 0),
  c(0, 0, 1, 0, 0, 0, 0),
  c(0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 1, 0, 0, 0, 0),
  c(0, 0, 1, 0, 0, 0, 0),
  c(0, 0, 1, 0, 0, 0, 0),
  c(0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 1, 0, 0, 0),
  c(0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1, 0, 0),
  c(0, 0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 0, 1))

parents[["R_APB_MUPINSTAB"]] = c("R_APB_NMT")
probs[["R_APB_MUPINSTAB"]] = list(
  c(95, 5),
  c(10, 90),
  c(3, 97),
  c(20, 80),
  c(10, 90),
  c(3, 97),
  c(10, 90))

parents[["R_APB_DE_REGEN"]] = c("R_LNL_DIFFN_APB_DE_REGEN", "R_MYOP_MYDY_APB_DE_REGEN")
probs[["R_APB_DE_REGEN"]] = list(
  c(1, 0),
  c(0, 1),
  c(0, 1),
  c(0, 1))

parents[["R_APB_MUPSATEL"]] = c("R_APB_DE_REGEN")
probs[["R_APB_MUPSATEL"]] = list(
  c(95, 5),
  c(20, 80))

parents[["R_APB_QUAN_MUPPOLY"]] = c("R_APB_DE_REGEN", "R_APB_EFFMUS")
probs[["R_APB_QUAN_MUPPOLY"]] = list(
  c(10.9, 54.8, 34.3),
  c(34, 56.4, 9.6),
  c(92.5, 7.5, 0),
  c(79.6, 20.1, 0.3),
  c(63.7, 34.8, 1.5),
  c(34, 56.4, 9.6),
  c(34, 56.4, 9.6),
  c(0.4, 12.2, 87.4),
  c(1.5, 26.1, 72.4),
  c(9.1, 52.6, 38.3),
  c(6.1, 46.5, 47.4),
  c(3.9, 39.6, 56.5),
  c(1.5, 26.1, 72.4),
  c(1.5, 26.1, 72.4))

parents[["R_APB_QUAL_MUPPOLY"]] = c("R_APB_QUAN_MUPPOLY")
probs[["R_APB_QUAL_MUPPOLY"]] = list(
  c(95, 5),
  c(30, 70),
  c(5, 95))

parents[["R_APB_QUAL_MUPDUR"]] = c("R_APB_MUPDUR")
probs[["R_APB_QUAL_MUPDUR"]] = list(
  c(0.8309, 0.1677, 0.0014),
  c(0.49, 0.49, 0.02),
  c(0.1065, 0.787, 0.1065),
  c(0.02, 0.49, 0.49),
  c(0.0014, 0.1677, 0.8309),
  c(0.0001, 0.0392, 0.9607),
  c(0.2597, 0.4806, 0.2597))

parents[["R_APB_MUPDUR"]] = c("R_APB_EFFMUS")
probs[["R_APB_MUPDUR"]] = list(
  c(0.9388, 0.0412, 0, 0, 0, 0, 0.02),
  c(0.0396, 0.9008, 0.0396, 0, 0, 0, 0.02),
  c(0, 0, 0.98, 0, 0, 0, 0.02),
  c(0, 0, 0.0396, 0.9008, 0.0396, 0, 0.02),
  c(0, 0, 0, 0.0412, 0.938, 0.0008, 0.02),
  c(0, 0, 0, 0.0039, 0.2546, 0.7215, 0.02),
  c(0.09, 0.235, 0.3236, 0.235, 0.09, 0.0064, 0.02))

parents[["R_APB_QUAN_MUPDUR"]] = c("R_APB_MUPDUR")
probs[["R_APB_QUAN_MUPDUR"]] = list(
  c(0.0998, 0.1833, 0.2402, 0.2245, 0.1497, 0.0712, 0.0242, 0.0058, 0.001, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0),
  c(0.0102, 0.0369, 0.0951, 0.1747, 0.2289, 0.214, 0.1426, 0.0678, 0.023, 0.0056, 0.001, 0.0001, 0, 0, 0, 0, 0, 0, 0),
  c(0, 0.0002, 0.0025, 0.0177, 0.0739, 0.1852, 0.2785, 0.2515, 0.1363, 0.0444, 0.0087, 0.001, 0.0001, 0, 0, 0, 0, 0, 0),
  c(0, 0, 0.0003, 0.002, 0.0102, 0.0368, 0.0949, 0.1743, 0.2284, 0.2135, 0.1423, 0.0677, 0.023, 0.0056, 0.001, 0.0001, 0, 0, 0),
  c(0, 0, 0, 0, 0.0003, 0.002, 0.0102, 0.0368, 0.0949, 0.1743, 0.2284, 0.2135, 0.1423, 0.0677, 0.023, 0.0056, 0.001, 0.0001, 0),
  c(0, 0, 0, 0, 0, 0.0001, 0.0004, 0.0018, 0.007, 0.0219, 0.0541, 0.1052, 0.1613, 0.195, 0.186, 0.1399, 0.0829, 0.0388, 0.0057),
  c(0.0201, 0.0341, 0.0529, 0.0748, 0.0966, 0.1138, 0.1224, 0.1202, 0.1078, 0.0882, 0.0658, 0.0449, 0.0279, 0.0159, 0.0082, 0.0039, 0.0017, 0.0007, 0.0001))

parents[["R_APB_QUAL_MUPAMP"]] = c("R_APB_MUPAMP")
probs[["R_APB_QUAL_MUPAMP"]] = list(
  c(0.4289, 0.5209, 0.0499, 0.0003, 0),
  c(0.0647, 0.5494, 0.3679, 0.018, 0),
  c(0, 0.0479, 0.8753, 0.0767, 0),
  c(0, 0.0087, 0.2838, 0.678, 0.0296),
  c(0, 0.0002, 0.0376, 0.6283, 0.3339),
  c(0, 0, 0.001, 0.0788, 0.9202),
  c(0.096, 0.1884, 0.283, 0.3014, 0.1312))

parents[["R_APB_MUPAMP"]] = c("R_APB_EFFMUS")
probs[["R_APB_MUPAMP"]] = list(
  c(0.782, 0.195, 0.003, 0, 0, 0, 0.02),
  c(0.1043, 0.771, 0.1043, 0.0003, 0, 0, 0.02),
  c(0, 0, 0.98, 0, 0, 0, 0.02),
  c(0, 0.0003, 0.1011, 0.7472, 0.1315, 0, 0.02),
  c(0, 0, 0.0024, 0.1528, 0.7968, 0.028, 0.02),
  c(0, 0, 0, 0.0028, 0.0968, 0.8804, 0.02),
  c(0.1328, 0.1932, 0.2189, 0.1932, 0.1726, 0.0693, 0.02))

parents[["R_APB_QUAN_MUPAMP"]] = c("R_APB_MUPAMP")
probs[["R_APB_QUAN_MUPAMP"]] = list(
  c(0.0008, 0.0037, 0.0135, 0.0381, 0.0835, 0.1425, 0.1895, 0.1963, 0.1583, 0.0994, 0.0486, 0.0185, 0.0055, 0.0013, 0.0002, 0, 0, 0, 0, 0),
  c(0, 0.0001, 0.0008, 0.0037, 0.0135, 0.0381, 0.0835, 0.1425, 0.1895, 0.1963, 0.1583, 0.0994, 0.0486, 0.0185, 0.0055, 0.0013, 0.0002, 0, 0, 0),
  c(0, 0, 0, 0, 0, 0.0005, 0.0037, 0.0187, 0.0639, 0.1475, 0.2302, 0.2431, 0.1737, 0.084, 0.0275, 0.0061, 0.0009, 0.0001, 0, 0),
  c(0, 0, 0, 0, 0, 0.0001, 0.0008, 0.0037, 0.0135, 0.0381, 0.0835, 0.1426, 0.1896, 0.1963, 0.1583, 0.0995, 0.0487, 0.0185, 0.0055, 0.0013),
  c(0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0008, 0.0038, 0.0136, 0.0383, 0.0841, 0.1435, 0.1909, 0.1977, 0.1594, 0.1001, 0.049, 0.0187),
  c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0006, 0.0024, 0.0082, 0.0232, 0.0542, 0.1041, 0.1645, 0.2137, 0.2283, 0.2007),
  c(0.0045, 0.0078, 0.0127, 0.0197, 0.0289, 0.0403, 0.0531, 0.0664, 0.0787, 0.0883, 0.0939, 0.0946, 0.0903, 0.0817, 0.07, 0.0569, 0.0438, 0.0319, 0.0221, 0.0144))

parents[["R_APB_TA_CONCL"]] = c("R_APB_EFFMUS")
probs[["R_APB_TA_CONCL"]] = list(
  c(0, 0, 1, 10, 88, 1),
  c(0, 0, 10, 80, 9, 1),
  c(0, 3, 93, 3, 0, 1),
  c(17, 50, 30, 2, 0, 1),
  c(44, 50, 5, 0, 0, 1),
  c(80, 18, 1, 0, 0, 1),
  c(17, 17, 17, 17, 16, 16))

parents[["R_APB_EFFMUS"]] = c("R_APB_NMT", "R_APB_MUSIZE")
probs[["R_APB_EFFMUS"]] = list(
  c(0.935, 0.045, 0, 0, 0, 0, 0.02),
  c(0.0609, 0.8781, 0.04, 0.001, 0, 0, 0.02),
  c(0, 0, 0.98, 0, 0, 0, 0.02),
  c(0, 0, 0.0155, 0.9427, 0.0217, 0, 0.02),
  c(0, 0, 0, 0.0216, 0.9368, 0.0216, 0.02),
  c(0, 0, 0, 0, 0.0221, 0.9579, 0.02),
  c(0.122, 0.2515, 0.1645, 0.2065, 0.149, 0.0865, 0.02),
  c(0.97, 0.01, 0, 0, 0, 0, 0.02),
  c(0.7259, 0.2514, 0.0026, 0.0001, 0, 0, 0.02),
  c(0.0039, 0.9275, 0.0482, 0.0004, 0, 0, 0.02),
  c(0.0001, 0.2161, 0.6096, 0.1513, 0.003, 0, 0.02),
  c(0, 0.003, 0.2677, 0.6008, 0.1065, 0.0021, 0.02),
  c(0, 0, 0.0164, 0.3337, 0.535, 0.0948, 0.02),
  c(0.2639, 0.3276, 0.1396, 0.1359, 0.0772, 0.0357, 0.02),
  c(0.978, 0.002, 0, 0, 0, 0, 0.02),
  c(0.9451, 0.0348, 0.0001, 0, 0, 0, 0.02),
  c(0.7359, 0.2437, 0.0004, 0, 0, 0, 0.02),
  c(0.1403, 0.7975, 0.0405, 0.0018, 0, 0, 0.02),
  c(0.0068, 0.5644, 0.3365, 0.0702, 0.0022, 0, 0.02),
  c(0, 0.0609, 0.4266, 0.4268, 0.0636, 0.002, 0.02),
  c(0.4425, 0.335, 0.0925, 0.069, 0.0302, 0.0109, 0.02),
  c(0.9487, 0.0313, 0, 0, 0, 0, 0.02),
  c(0.1016, 0.8507, 0.0272, 0.0006, 0, 0, 0.02),
  c(0, 0, 0.98, 0, 0, 0, 0.02),
  c(0, 0, 0.0582, 0.91, 0.0118, 0, 0.02),
  c(0, 0, 0, 0.0795, 0.8889, 0.0115, 0.02),
  c(0, 0, 0, 0, 0.0805, 0.8995, 0.02),
  c(0.135, 0.2632, 0.1638, 0.1995, 0.1397, 0.0788, 0.02),
  c(0.9715, 0.0085, 0, 0, 0, 0, 0.02),
  c(0.4313, 0.5436, 0.0051, 0.0001, 0, 0, 0.02),
  c(0, 0.3917, 0.5883, 0, 0, 0, 0.02),
  c(0, 0.0004, 0.6513, 0.3273, 0.001, 0, 0.02),
  c(0, 0, 0.0119, 0.7118, 0.2555, 0.0008, 0.02),
  c(0, 0, 0, 0.0166, 0.7089, 0.2545, 0.02),
  c(0.1946, 0.3041, 0.1558, 0.1682, 0.1047, 0.0526, 0.02),
  c(0.9786, 0.0014, 0, 0, 0, 0, 0.02),
  c(0.8906, 0.0893, 0.0002, 0, 0, 0, 0.02),
  c(0.0029, 0.9767, 0.0004, 0, 0, 0, 0.02),
  c(0.0001, 0.564, 0.4045, 0.0114, 0, 0, 0.02),
  c(0, 0.0051, 0.5677, 0.3992, 0.0081, 0, 0.02),
  c(0, 0, 0.0357, 0.6243, 0.3136, 0.0063, 0.02),
  c(0.3187, 0.3432, 0.1264, 0.1113, 0.0568, 0.0235, 0.02),
  c(0.78, 0.1866, 0.0108, 0.0023, 0.0002, 0, 0.02),
  c(0.503, 0.3808, 0.0634, 0.0266, 0.0054, 0.0007, 0.02),
  c(0.1645, 0.4498, 0.191, 0.1292, 0.0384, 0.007, 0.02),
  c(0.0467, 0.2657, 0.2347, 0.261, 0.1307, 0.0413, 0.02),
  c(0.0079, 0.0985, 0.1796, 0.3167, 0.2515, 0.1259, 0.02),
  c(0.0009, 0.0251, 0.0943, 0.2638, 0.3322, 0.2638, 0.02),
  c(0.2381, 0.287, 0.1364, 0.1523, 0.1045, 0.0616, 0.02))

parents[["R_APB_MVA_AMP"]] = c("R_APB_EFFMUS")
probs[["R_APB_MVA_AMP"]] = list(
  c(0, 4, 96),
  c(1, 15, 84),
  c(5, 90, 5),
  c(50, 49, 1),
  c(85, 15, 0),
  c(96, 4, 0),
  c(33, 34, 33))

parents[["R_APB_MULOSS"]] = c("R_MED_BLOCK_WA", "R_APB_MALOSS")
probs[["R_APB_MULOSS"]] = list(
  c(0.98, 0, 0, 0, 0, 0.02),
  c(0.0167, 0.9613, 0.002, 0, 0, 0.02),
  c(0.0002, 0.0535, 0.9238, 0.0026, 0, 0.02),
  c(0, 0.0003, 0.0481, 0.9315, 0, 0.02),
  c(0, 0, 0, 0, 0.98, 0.02),
  c(0.1427, 0.2958, 0.4254, 0.1161, 0, 0.02),
  c(0.9746, 0.0054, 0, 0, 0, 0.02),
  c(0.0034, 0.9529, 0.0236, 0, 0, 0.02),
  c(0, 0.0234, 0.945, 0.0115, 0, 0.02),
  c(0, 0.0001, 0.027, 0.9528, 0, 0.02),
  c(0, 0, 0, 0, 0.98, 0.02),
  c(0.1157, 0.2677, 0.4444, 0.1522, 0, 0.02),
  c(0.0664, 0.9136, 0, 0, 0, 0.02),
  c(0.0002, 0.2725, 0.7073, 0, 0, 0.02),
  c(0, 0.0048, 0.7523, 0.2229, 0, 0.02),
  c(0, 0, 0.0091, 0.9709, 0, 0.02),
  c(0, 0, 0, 0, 0.98, 0.02),
  c(0.0694, 0.2011, 0.4527, 0.2569, 0, 0.02),
  c(0.016, 0.1801, 0.7138, 0.0701, 0, 0.02),
  c(0.0009, 0.0263, 0.4192, 0.5336, 0, 0.02),
  c(0, 0.0013, 0.0637, 0.9149, 0, 0.02),
  c(0, 0.0001, 0.0087, 0.9712, 0, 0.02),
  c(0, 0, 0, 0, 0.98, 0.02),
  c(0.0173, 0.0696, 0.2854, 0.6077, 0, 0.02),
  c(0, 0, 0, 0, 0.98, 0.02),
  c(0, 0, 0, 0, 0.98, 0.02),
  c(0, 0, 0, 0, 0.98, 0.02),
  c(0, 0, 0, 0, 0.98, 0.02),
  c(0, 0, 0, 0, 0.98, 0.02),
  c(0, 0, 0, 0, 0.98, 0.02))

parents[["R_APB_MVA_RECRUIT"]] = c("R_APB_MULOSS", "R_APB_VOL_ACT")
probs[["R_APB_MVA_RECRUIT"]] = list(
  c(0.9295, 0.0705, 0, 0),
  c(0.1707, 0.7, 0.1293, 0),
  c(0.0038, 0.174, 0.8222, 0),
  c(0, 0, 0, 1),
  c(0.4821, 0.5165, 0.0014, 0),
  c(0.0366, 0.5168, 0.4466, 0),
  c(0.0005, 0.0594, 0.9401, 0),
  c(0, 0, 0, 1),
  c(0.0661, 0.7993, 0.1346, 0),
  c(0.0043, 0.1788, 0.8169, 0),
  c(0.0001, 0.0205, 0.9794, 0),
  c(0, 0, 0, 1),
  c(0.0015, 0.1366, 0.862, 0),
  c(0.0003, 0.0348, 0.965, 0),
  c(0, 0.0061, 0.9939, 0),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0, 0, 0, 1),
  c(0.264, 0.4344, 0.3017, 0),
  c(0.1146, 0.3465, 0.5389, 0),
  c(0.036, 0.2144, 0.7496, 0),
  c(0, 0, 0, 1))

parents[["R_APB_MALOSS"]] = c("R_LNLT1_LP_BE_APB_MALOSS", "R_DIFFN_LNLW_APB_MALOSS")
probs[["R_APB_MALOSS"]] = list(
  c(0.98, 0, 0, 0, 0, 0.02),
  c(0.0022, 0.9778, 0.0001, 0, 0, 0.02),
  c(0.0002, 0.0471, 0.9297, 0.003, 0, 0.02),
  c(0, 0.0003, 0.0424, 0.9373, 0, 0.02),
  c(0, 0, 0, 0, 0.98, 0.02),
  c(0.0022, 0.9778, 0.0001, 0, 0, 0.02),
  c(0, 0.0361, 0.9439, 0, 0, 0.02),
  c(0, 0.0014, 0.3987, 0.5799, 0, 0.02),
  c(0, 0, 0.005, 0.975, 0, 0.02),
  c(0, 0, 0, 0, 0.98, 0.02),
  c(0.0002, 0.0471, 0.9297, 0.003, 0, 0.02),
  c(0, 0.0014, 0.3987, 0.5799, 0, 0.02),
  c(0, 0, 0.013, 0.967, 0, 0.02),
  c(0, 0, 0.0014, 0.9786, 0, 0.02),
  c(0, 0, 0, 0, 0.98, 0.02),
  c(0, 0.0003, 0.0424, 0.9373, 0, 0.02),
  c(0, 0, 0.005, 0.975, 0, 0.02),
  c(0, 0, 0.0014, 0.9786, 0, 0.02),
  c(0, 0, 0.0005, 0.9795, 0, 0.02),
  c(0, 0, 0, 0, 0.98, 0.02),
  c(0, 0, 0, 0, 0.98, 0.02),
  c(0, 0, 0, 0, 0.98, 0.02),
  c(0, 0, 0, 0, 0.98, 0.02),
  c(0, 0, 0, 0, 0.98, 0.02),
  c(0, 0, 0, 0, 0.98, 0.02))

parents[["R_APB_MUSIZE"]] = c("R_MYOP_MYDY_APB_MUSIZE", "R_LNL_DIFFN_APB_MUSIZE")
probs[["R_APB_MUSIZE"]] = list(
  c(0.9791, 0.0009, 0, 0, 0, 0, 0.02),
  c(0.9637, 0.0163, 0, 0, 0, 0, 0.02),
  c(0.9221, 0.0578, 0, 0, 0, 0, 0.02),
  c(0.3979, 0.5663, 0.0155, 0.0002, 0, 0, 0.02),
  c(0.0435, 0.7319, 0.193, 0.0114, 0.0002, 0, 0.02),
  c(0.0012, 0.2317, 0.5882, 0.1474, 0.0112, 0.0002, 0.02),
  c(0.9637, 0.0163, 0, 0, 0, 0, 0.02),
  c(0.7493, 0.2257, 0.0049, 0.0001, 0, 0, 0.02),
  c(0.0537, 0.8568, 0.0684, 0.0011, 0, 0, 0.02),
  c(0.0039, 0.3811, 0.5066, 0.0841, 0.0043, 0.0001, 0.02),
  c(0, 0.0395, 0.5059, 0.355, 0.0758, 0.0038, 0.02),
  c(0, 0.0011, 0.1357, 0.4025, 0.3631, 0.0775, 0.02),
  c(0.9221, 0.0578, 0, 0, 0, 0, 0.02),
  c(0.0537, 0.8568, 0.0684, 0.0011, 0, 0, 0.02),
  c(0, 0, 0.98, 0, 0, 0, 0.02),
  c(0, 0, 0.0908, 0.8185, 0.0706, 0, 0.02),
  c(0, 0, 0.0001, 0.0721, 0.8357, 0.0721, 0.02),
  c(0, 0, 0, 0.0001, 0.0778, 0.9021, 0.02),
  c(0.3979, 0.5663, 0.0155, 0.0002, 0, 0, 0.02),
  c(0.0039, 0.3811, 0.5066, 0.0841, 0.0043, 0.0001, 0.02),
  c(0, 0, 0.0908, 0.8185, 0.0706, 0, 0.02),
  c(0, 0, 0.0036, 0.1655, 0.6455, 0.1655, 0.02),
  c(0, 0, 0, 0.0034, 0.1993, 0.7773, 0.02),
  c(0, 0, 0, 0, 0.0162, 0.9637, 0.02),
  c(0.0435, 0.7319, 0.193, 0.0114, 0.0002, 0, 0.02),
  c(0, 0.0395, 0.5059, 0.355, 0.0758, 0.0038, 0.02),
  c(0, 0, 0.0001, 0.0721, 0.8357, 0.0721, 0.02),
  c(0, 0, 0, 0.0034, 0.1993, 0.7773, 0.02),
  c(0, 0, 0, 0, 0.0162, 0.9637, 0.02),
  c(0, 0, 0, 0, 0.0011, 0.9789, 0.02),
  c(0.0012, 0.2317, 0.5882, 0.1474, 0.0112, 0.0002, 0.02),
  c(0, 0.0011, 0.1357, 0.4025, 0.3631, 0.0775, 0.02),
  c(0, 0, 0, 0.0001, 0.0778, 0.9021, 0.02),
  c(0, 0, 0, 0, 0.0162, 0.9637, 0.02),
  c(0, 0, 0, 0, 0.0011, 0.9789, 0.02),
  c(0, 0, 0, 0, 0.0001, 0.9799, 0.02))

parents[["R_APB_MUSCLE_VOL"]] = c("R_APB_MUSIZE", "R_APB_MALOSS")
probs[["R_APB_MUSCLE_VOL"]] = list(
  c(0.9896, 0.0104),
  c(0.9976, 0.0024),
  c(0.999, 0.001),
  c(0.9995, 0.0005),
  c(0.9989, 0.0011),
  c(0.9363, 0.0637),
  c(0.8137, 0.1863),
  c(0.9603, 0.0397),
  c(0.9893, 0.0107),
  c(0.9969, 0.0031),
  c(0.9984, 0.0016),
  c(0.8403, 0.1597),
  c(0.0209, 0.9791),
  c(0.5185, 0.4815),
  c(0.9588, 0.0412),
  c(0.9953, 0.0047),
  c(0.9984, 0.0016),
  c(0.6534, 0.3466),
  c(0.009, 0.991),
  c(0.1087, 0.8913),
  c(0.6377, 0.3623),
  c(0.9518, 0.0482),
  c(0.9975, 0.0025),
  c(0.4689, 0.5311),
  c(0.003, 0.997),
  c(0.0278, 0.9722),
  c(0.2716, 0.7284),
  c(0.8234, 0.1766),
  c(0.9965, 0.0035),
  c(0.3174, 0.6826),
  c(0.0004, 0.9996),
  c(0.0046, 0.9954),
  c(0.0779, 0.9221),
  c(0.5986, 0.4014),
  c(0.9956, 0.0044),
  c(0.1948, 0.8052),
  c(0.4212, 0.5788),
  c(0.5185, 0.4815),
  c(0.6336, 0.3664),
  c(0.7685, 0.2315),
  c(0.9857, 0.0143),
  c(0.5681, 0.4319))

parents[["R_APB_VOL_ACT"]] = vector()
probs[["R_APB_VOL_ACT"]] = list(
  c(1, 0, 0, 0))

parents[["R_APB_FORCE"]] = c("R_APB_VOL_ACT", "R_APB_ALLAMP_WA")
probs[["R_APB_FORCE"]] = list(
  c(0, 0, 0, 0.0041, 0.1908, 0.8052),
  c(0.0016, 0.0186, 0.0936, 0.2679, 0.3659, 0.2525),
  c(0.0149, 0.2354, 0.5331, 0.2015, 0.0149, 0.0001),
  c(0.1538, 0.6493, 0.1936, 0.0033, 0, 0),
  c(0.6667, 0.3291, 0.0042, 0, 0, 0),
  c(0.9468, 0.0531, 0, 0, 0, 0),
  c(0.9782, 0.0218, 0, 0, 0, 0),
  c(0.9971, 0.0029, 0, 0, 0, 0),
  c(0.9996, 0.0004, 0, 0, 0, 0),
  c(0, 0, 0, 0.001, 0.0578, 0.9412),
  c(0.0002, 0.0034, 0.026, 0.1312, 0.3333, 0.5059),
  c(0.0009, 0.0256, 0.18, 0.4308, 0.3036, 0.0591),
  c(0.0098, 0.1589, 0.4714, 0.3101, 0.0485, 0.0013),
  c(0.0537, 0.4204, 0.4548, 0.069, 0.002, 0),
  c(0.1173, 0.5658, 0.301, 0.0157, 0.0001, 0),
  c(0.4102, 0.4794, 0.107, 0.0035, 0, 0),
  c(0.7017, 0.2755, 0.0226, 0.0002, 0, 0),
  c(0.8804, 0.1161, 0.0035, 0, 0, 0),
  c(0, 0, 0, 0.0001, 0.0126, 0.9874),
  c(0, 0.0003, 0.0044, 0.0446, 0.2226, 0.7281),
  c(0, 0.0005, 0.0128, 0.1328, 0.4061, 0.4478),
  c(0.0001, 0.0049, 0.0751, 0.3632, 0.429, 0.1277),
  c(0.0005, 0.0273, 0.2433, 0.5013, 0.2118, 0.0157),
  c(0.0012, 0.0602, 0.3862, 0.4542, 0.0954, 0.0027),
  c(0.0256, 0.247, 0.4838, 0.2174, 0.0256, 0.0005),
  c(0.1171, 0.4443, 0.3699, 0.0654, 0.0033, 0),
  c(0.3271, 0.488, 0.1727, 0.012, 0.0003, 0),
  c(0, 0, 0, 0, 0.0059, 0.994),
  c(0, 0, 0.0005, 0.0098, 0.1058, 0.8839),
  c(0, 0, 0.0003, 0.0091, 0.1181, 0.8725),
  c(0, 0, 0.0008, 0.0215, 0.1873, 0.7904),
  c(0, 0.0001, 0.0025, 0.0472, 0.2756, 0.6747),
  c(0, 0.0001, 0.0044, 0.0713, 0.3326, 0.5916),
  c(0, 0.002, 0.0279, 0.1812, 0.4112, 0.3776),
  c(0.0004, 0.0107, 0.0847, 0.3035, 0.3988, 0.2019),
  c(0.003, 0.0426, 0.1948, 0.3849, 0.2929, 0.0817))

parents[["R_MED_ALLDEL_WA"]] = c("R_MED_RDLDDEL", "R_MED_DCV_WA")
probs[["R_MED_ALLDEL_WA"]] = list(
  c(0.9996, 0.0004, 0, 0, 0, 0, 0, 0, 0),
  c(0.5607, 0.4393, 0, 0, 0, 0, 0, 0, 0),
  c(0.0069, 0.7963, 0.1968, 0, 0, 0, 0, 0, 0),
  c(0, 0.0184, 0.9806, 0.001, 0, 0, 0, 0, 0),
  c(0, 0.0001, 0.0179, 0.982, 0, 0, 0, 0, 0),
  c(0, 0.0002, 0.003, 0.1393, 0.8575, 0, 0, 0, 0),
  c(0, 0, 0, 0.0006, 0.8145, 0.1849, 0, 0, 0),
  c(0, 0, 0, 0.0004, 0.0113, 0.5973, 0.3909, 0, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0, 1),
  c(0.0512, 0.2291, 0.5663, 0.1535, 0, 0, 0, 0, 0),
  c(0.0193, 0.1287, 0.4929, 0.3592, 0, 0, 0, 0, 0),
  c(0.0027, 0.0328, 0.2398, 0.7246, 0.0001, 0, 0, 0, 0),
  c(0.0001, 0.0033, 0.0547, 0.9381, 0.0037, 0, 0, 0, 0),
  c(0, 0.0002, 0.0048, 0.504, 0.4911, 0, 0, 0, 0),
  c(0, 0, 0.0003, 0.0188, 0.9804, 0.0005, 0, 0, 0),
  c(0, 0, 0, 0, 0.0494, 0.9506, 0, 0, 0),
  c(0, 0, 0, 0.0001, 0.0034, 0.299, 0.6974, 0, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0, 1),
  c(0.0001, 0.0035, 0.0632, 0.9326, 0.0006, 0, 0, 0, 0),
  c(0, 0.0011, 0.0283, 0.9651, 0.0055, 0, 0, 0, 0),
  c(0, 0.0002, 0.0075, 0.8889, 0.1034, 0, 0, 0, 0),
  c(0, 0, 0.0003, 0.185, 0.8146, 0, 0, 0, 0),
  c(0, 0, 0, 0.0032, 0.9968, 0, 0, 0, 0),
  c(0, 0, 0, 0.0015, 0.9313, 0.0671, 0, 0, 0),
  c(0, 0, 0, 0, 0.001, 0.999, 0, 0, 0),
  c(0, 0, 0, 0, 0.0007, 0.1112, 0.8881, 0, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0, 1),
  c(0.0013, 0.002, 0.0044, 0.0187, 0.1213, 0.748, 0.1044, 0, 0),
  c(0.001, 0.0016, 0.0037, 0.0161, 0.1093, 0.7421, 0.1261, 0, 0),
  c(0.0008, 0.0012, 0.0028, 0.0125, 0.0916, 0.7236, 0.1676, 0, 0),
  c(0.0005, 0.0008, 0.0018, 0.0087, 0.0703, 0.6803, 0.2377, 0, 0),
  c(0.0002, 0.0004, 0.0009, 0.0047, 0.044, 0.5737, 0.3761, 0, 0),
  c(0.0001, 0.0001, 0.0002, 0.0013, 0.015, 0.3152, 0.6681, 0, 0),
  c(0, 0, 0, 0.0001, 0.0017, 0.0786, 0.9196, 0, 0),
  c(0, 0, 0, 0, 0.0001, 0.0094, 0.9593, 0.0311, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0, 1),
  c(0.0001, 0.0001, 0.0003, 0.0009, 0.0045, 0.0434, 0.5767, 0.3739, 0),
  c(0.0001, 0.0001, 0.0002, 0.0008, 0.0041, 0.0399, 0.5568, 0.398, 0),
  c(0.0001, 0.0001, 0.0002, 0.0007, 0.0034, 0.0348, 0.5239, 0.4368, 0),
  c(0.0001, 0.0001, 0.0001, 0.0005, 0.0027, 0.0287, 0.4783, 0.4895, 0),
  c(0, 0, 0.0001, 0.0003, 0.0018, 0.021, 0.4072, 0.5695, 0),
  c(0, 0, 0, 0.0001, 0.0008, 0.0111, 0.2804, 0.7074, 0),
  c(0, 0, 0, 0, 0.0002, 0.0035, 0.138, 0.8583, 0),
  c(0, 0, 0, 0, 0, 0.0003, 0.0253, 0.9743, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0, 1))

parents[["R_MED_LAT_WA"]] = c("R_MED_ALLDEL_WA")
probs[["R_MED_LAT_WA"]] = list(
  c(0.0059, 0.1326, 0.5032, 0.3226, 0.035, 0.0006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
  c(0.0007, 0.0196, 0.169, 0.4255, 0.3128, 0.0672, 0.0053, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
  c(0, 0.0007, 0.0194, 0.1669, 0.4202, 0.3089, 0.0829, 0.001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
  c(0, 0, 0.001, 0.0109, 0.0635, 0.1947, 0.3934, 0.2921, 0.0428, 0.0015, 0, 0, 0, 0, 0, 0, 0, 0, 0),
  c(0.0001, 0.0003, 0.0011, 0.0034, 0.009, 0.021, 0.0528, 0.137, 0.2128, 0.2375, 0.1826, 0.1229, 0.0179, 0.0016, 0, 0, 0, 0, 0),
  c(0.0001, 0.0002, 0.0004, 0.0008, 0.0014, 0.0025, 0.0051, 0.012, 0.0215, 0.0354, 0.0892, 0.1398, 0.1829, 0.2812, 0.189, 0.0359, 0.0026, 0.0001, 0),
  c(0.0002, 0.0002, 0.0003, 0.0004, 0.0005, 0.0007, 0.0012, 0.0022, 0.0032, 0.0047, 0.0109, 0.0176, 0.028, 0.0629, 0.1563, 0.2269, 0.2569, 0.2269, 0),
  c(0.0008, 0.0009, 0.0011, 0.0012, 0.0014, 0.0017, 0.0025, 0.0037, 0.0046, 0.0056, 0.0106, 0.0156, 0.0214, 0.0433, 0.1007, 0.1649, 0.2536, 0.3665, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1))

parents[["R_APB_ALLAMP_WA"]] = c("R_APB_EFFMUS", "R_APB_MULOSS")
probs[["R_APB_ALLAMP_WA"]] = list(
  c(0.0026, 0.3687, 0.6075, 0.0208, 0.0003, 0, 0, 0, 0),
  c(0.0409, 0.8924, 0.0661, 0.0006, 0, 0, 0, 0, 0),
  c(0.2926, 0.7043, 0.0031, 0, 0, 0, 0, 0, 0),
  c(0.781, 0.2189, 0.0001, 0, 0, 0, 0, 0, 0),
  c(0.9907, 0.0093, 0, 0, 0, 0, 0, 0, 0),
  c(0.3596, 0.5148, 0.0941, 0.024, 0.0046, 0.002, 0.0008, 0.0002, 0),
  c(0, 0.0002, 0.4149, 0.4809, 0.0802, 0.0218, 0.002, 0, 0),
  c(0, 0.01, 0.77, 0.2049, 0.0128, 0.0022, 0.0001, 0, 0),
  c(0.0091, 0.4203, 0.5312, 0.038, 0.0012, 0.0002, 0, 0, 0),
  c(0.2669, 0.7161, 0.0166, 0.0003, 0, 0, 0, 0, 0),
  c(0.9858, 0.0142, 0, 0, 0, 0, 0, 0, 0),
  c(0.1336, 0.3855, 0.2698, 0.1308, 0.0401, 0.0219, 0.0127, 0.0044, 0.0013),
  c(0, 0, 0, 0, 0.0215, 0.9785, 0, 0, 0),
  c(0, 0, 0, 0.2489, 0.7398, 0.0113, 0, 0, 0),
  c(0, 0, 0.3095, 0.6808, 0.0095, 0.0003, 0, 0, 0),
  c(0.0001, 0.1028, 0.8793, 0.0178, 0.0001, 0, 0, 0, 0),
  c(0.9865, 0.0135, 0, 0, 0, 0, 0, 0, 0),
  c(0.0096, 0.0788, 0.2992, 0.2816, 0.1319, 0.0873, 0.0689, 0.0313, 0.0114),
  c(0, 0, 0, 0, 0.0018, 0.0536, 0.8696, 0.075, 0),
  c(0, 0, 0, 0.0042, 0.3468, 0.5348, 0.1137, 0.0004, 0),
  c(0, 0, 0.018, 0.6298, 0.2744, 0.0746, 0.0032, 0, 0),
  c(0, 0.0044, 0.8111, 0.1762, 0.0073, 0.0009, 0, 0, 0),
  c(0.982, 0.018, 0, 0, 0, 0, 0, 0, 0),
  c(0.0026, 0.0289, 0.204, 0.2657, 0.1594, 0.1199, 0.119, 0.0684, 0.0319),
  c(0, 0, 0, 0, 0, 0, 0.0736, 0.8528, 0.0736),
  c(0, 0, 0, 0, 0.0064, 0.0855, 0.788, 0.1197, 0.0004),
  c(0, 0, 0.0001, 0.1046, 0.4281, 0.3568, 0.1071, 0.0032, 0),
  c(0, 0.0001, 0.413, 0.4966, 0.0719, 0.0173, 0.0012, 0, 0),
  c(0.9779, 0.0221, 0, 0, 0, 0, 0, 0, 0),
  c(0.0005, 0.0084, 0.1182, 0.2139, 0.163, 0.1382, 0.1691, 0.1199, 0.0689),
  c(0, 0, 0, 0, 0, 0, 0.0001, 0.0794, 0.9205),
  c(0, 0, 0, 0, 0, 0.0003, 0.1165, 0.7668, 0.1165),
  c(0, 0, 0, 0.0025, 0.0978, 0.2498, 0.5323, 0.1141, 0.0034),
  c(0, 0, 0.0781, 0.5196, 0.261, 0.1167, 0.0234, 0.0011, 0),
  c(0.973, 0.027, 0, 0, 0, 0, 0, 0, 0),
  c(0.0001, 0.0021, 0.0586, 0.1473, 0.1427, 0.1363, 0.2057, 0.1798, 0.1274),
  c(0.0003, 0.006, 0.105, 0.205, 0.1633, 0.141, 0.1771, 0.1279, 0.0744),
  c(0.0019, 0.023, 0.19, 0.2623, 0.1629, 0.1244, 0.1264, 0.074, 0.035),
  c(0.0144, 0.0993, 0.3028, 0.2702, 0.1243, 0.0821, 0.0652, 0.0302, 0.0114),
  c(0.1169, 0.3697, 0.2867, 0.1411, 0.0431, 0.0234, 0.0133, 0.0045, 0.0013),
  c(0.9371, 0.0629, 0.0001, 0, 0, 0, 0, 0, 0),
  c(0.0521, 0.1608, 0.2272, 0.2013, 0.1066, 0.0792, 0.0831, 0.0559, 0.0337))

parents[["R_MED_AMP_WA"]] = c("R_APB_ALLAMP_WA")
probs[["R_MED_AMP_WA"]] = list(
  c(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
  c(0.0003, 0.285, 0.2346, 0.1781, 0.1245, 0.0803, 0.0476, 0.0261, 0.0132, 0.0061, 0.0026, 0.001, 0.0004, 0.0001, 0, 0, 0),
  c(0, 0.0135, 0.0369, 0.0794, 0.1353, 0.1818, 0.1932, 0.1622, 0.1077, 0.0564, 0.0234, 0.0076, 0.002, 0.0004, 0.0001, 0, 0),
  c(0, 0, 0.0001, 0.0006, 0.0036, 0.0165, 0.0535, 0.1233, 0.2013, 0.2335, 0.1922, 0.1121, 0.0465, 0.0137, 0.0028, 0.0004, 0),
  c(0, 0, 0, 0, 0, 0.0001, 0.001, 0.0069, 0.0309, 0.0926, 0.1855, 0.2496, 0.225, 0.1358, 0.0549, 0.0149, 0.0027),
  c(0, 0, 0, 0, 0, 0, 0, 0.0003, 0.0031, 0.019, 0.0723, 0.1736, 0.2622, 0.2497, 0.1497, 0.0567, 0.0133),
  c(0, 0, 0, 0, 0, 0, 0, 0, 0.0002, 0.0017, 0.0093, 0.0355, 0.0964, 0.186, 0.2545, 0.2471, 0.1693),
  c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0004, 0.0029, 0.0155, 0.0599, 0.1641, 0.3182, 0.439),
  c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0015, 0.0115, 0.0631, 0.2445, 0.6792))

parents[["R_MED_ALLCV_EW"]] = c("R_MED_DCV_EW", "R_MED_RDLDCV_EW")
probs[["R_MED_ALLCV_EW"]] = list(
  c(1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
  c(0.0066, 0.1455, 0.838, 0.0098, 0, 0, 0, 0, 0, 0),
  c(0, 0, 0.0047, 0.9951, 0.0002, 0, 0, 0, 0, 0),
  c(0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
  c(0, 0, 0, 0, 0, 0.0012, 0.1305, 0.8445, 0.0238, 0),
  c(0, 0, 0, 0, 0, 0, 0.0002, 0.0321, 0.9677, 0),
  c(0.0699, 0.8102, 0.1199, 0, 0, 0, 0, 0, 0, 0),
  c(0.0005, 0.0239, 0.4369, 0.5387, 0, 0, 0, 0, 0, 0),
  c(0, 0, 0.0004, 0.9005, 0.0991, 0, 0, 0, 0, 0),
  c(0, 0, 0, 0, 0, 0.997, 0.003, 0, 0, 0),
  c(0, 0, 0, 0, 0, 0.0004, 0.074, 0.8589, 0.0667, 0),
  c(0, 0, 0, 0, 0, 0, 0.0001, 0.0184, 0.9815, 0),
  c(0, 0.0479, 0.952, 0, 0, 0, 0, 0, 0, 0),
  c(0, 0.0003, 0.0239, 0.9748, 0.001, 0, 0, 0, 0, 0),
  c(0, 0, 0, 0.1288, 0.8712, 0, 0, 0, 0, 0),
  c(0, 0, 0, 0, 0, 0.2336, 0.7664, 0, 0, 0),
  c(0, 0, 0, 0, 0, 0.0001, 0.0373, 0.8028, 0.1597, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0.0101, 0.9898, 0),
  c(0.0009, 0.009, 0.0888, 0.8187, 0.0827, 0, 0, 0, 0, 0),
  c(0, 0.0002, 0.0036, 0.2467, 0.7339, 0.0156, 0, 0, 0, 0),
  c(0, 0, 0, 0.0113, 0.5711, 0.4175, 0, 0, 0, 0),
  c(0, 0, 0, 0, 0, 0.0026, 0.9935, 0.004, 0, 0),
  c(0, 0, 0, 0, 0, 0, 0.007, 0.3517, 0.6413, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0.0042, 0.9958, 0),
  c(0, 0, 0.0005, 0.1011, 0.8477, 0.0506, 0, 0, 0, 0),
  c(0, 0, 0, 0.005, 0.3134, 0.6811, 0.0005, 0, 0, 0),
  c(0, 0, 0, 0, 0.0214, 0.9354, 0.0432, 0, 0, 0),
  c(0, 0, 0, 0, 0, 0, 0.2469, 0.7531, 0, 0),
  c(0, 0, 0, 0, 0, 0, 0.0003, 0.0581, 0.9416, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0.0011, 0.9989, 0),
  c(0, 0, 0, 0.0005, 0.0791, 0.9001, 0.0202, 0, 0, 0),
  c(0, 0, 0, 0, 0.0071, 0.5493, 0.4433, 0.0002, 0, 0),
  c(0, 0, 0, 0, 0.0001, 0.0565, 0.9324, 0.0111, 0, 0),
  c(0, 0, 0, 0, 0, 0, 0.002, 0.9939, 0.0041, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0.006, 0.994, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0.0003, 0.9997, 0),
  c(0, 0, 0, 0, 0.0006, 0.0734, 0.8393, 0.0867, 0, 0),
  c(0, 0, 0, 0, 0, 0.0091, 0.5283, 0.4625, 0, 0),
  c(0, 0, 0, 0, 0, 0.0004, 0.143, 0.8551, 0.0015, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0.0314, 0.9686, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0.0008, 0.9992, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0.0001, 0.9999, 0),
  c(0, 0, 0, 0, 0, 0.0003, 0.0947, 0.8945, 0.0104, 0),
  c(0, 0, 0, 0, 0, 0, 0.0216, 0.8359, 0.1425, 0),
  c(0, 0, 0, 0, 0, 0, 0.002, 0.3549, 0.6432, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0.0002, 0.9998, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0.0001, 0.9999, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 0, 0.002, 0.0932, 0.9048, 0),
  c(0, 0, 0, 0, 0, 0, 0.0004, 0.0355, 0.9641, 0),
  c(0, 0, 0, 0, 0, 0, 0.0001, 0.0122, 0.9877, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0.0003, 0.9997, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0.0002, 0.9998, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0.0001, 0.9999, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.9999),
  c(0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.9999),
  c(0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.9999),
  c(0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 0, 0, 0, 0, 0, 1))

parents[["R_MED_CV_EW"]] = c("R_MED_ALLCV_EW")
probs[["R_MED_CV_EW"]] = list(
  c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0006, 0.0168, 0.1184, 0.296, 0.3227, 0.1783, 0.056, 0.0112),
  c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0001, 0.0005, 0.0155, 0.1165, 0.2969, 0.3229, 0.1782, 0.0564, 0.0114, 0.0016),
  c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0006, 0.0039, 0.0589, 0.2434, 0.3586, 0.235, 0.0808, 0.0164, 0.0022, 0.0002),
  c(0, 0, 0, 0, 0, 0, 0, 0.0007, 0.0176, 0.1966, 0.2515, 0.2699, 0.1688, 0.069, 0.0203, 0.0046, 0.0009, 0.0001, 0),
  c(0, 0, 0, 0, 0, 0, 0.0056, 0.09, 0.3056, 0.3093, 0.2039, 0.0673, 0.0152, 0.0026, 0.0004, 0, 0, 0, 0),
  c(0, 0, 0, 0, 0.0006, 0.0496, 0.2972, 0.4059, 0.2097, 0.0258, 0.0098, 0.0013, 0.0001, 0, 0, 0, 0, 0, 0),
  c(0, 0, 0, 0.0179, 0.2946, 0.447, 0.1902, 0.0434, 0.0066, 0.0003, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0),
  c(0, 0, 0.0265, 0.5431, 0.3624, 0.0622, 0.0054, 0.0004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
  c(0, 0.1265, 0.7654, 0.1006, 0.007, 0.0004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
  c(0.9999, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0))

parents[["R_MED_BLOCK_EW"]] = c("R_DIFFN_MED_BLOCK", "R_LNLBE_MED_BLOCK")
probs[["R_MED_BLOCK_EW"]] = list(
  c(1, 0, 0, 0, 0),
  c(0.0077, 0.9923, 0, 0, 0),
  c(0.0007, 0.0234, 0.9759, 0, 0),
  c(0.0019, 0.006, 0.0588, 0.9333, 0),
  c(0, 0, 0, 0, 1),
  c(0.0077, 0.9923, 0, 0, 0),
  c(0.0001, 0.498, 0.5019, 0, 0),
  c(0, 0.0032, 0.9968, 0, 0),
  c(0.001, 0.0033, 0.0376, 0.9581, 0),
  c(0, 0, 0, 0, 1),
  c(0.0007, 0.0234, 0.9759, 0, 0),
  c(0, 0.0032, 0.9968, 0, 0),
  c(0, 0.0007, 0.4328, 0.5665, 0),
  c(0.0003, 0.0011, 0.0159, 0.9827, 0),
  c(0, 0, 0, 0, 1),
  c(0.0019, 0.006, 0.0588, 0.9333, 0),
  c(0.001, 0.0033, 0.0376, 0.9581, 0),
  c(0.0003, 0.0011, 0.0159, 0.9827, 0),
  c(0.0003, 0.0011, 0.0125, 0.986, 0),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1))

parents[["R_MED_AMPR_EW"]] = c("R_MED_BLOCK_EW")
probs[["R_MED_AMPR_EW"]] = list(
  c(0.0879, 0.4192, 0.4232, 0.0693, 0.0004, 0, 0, 0, 0, 0, 0, 0),
  c(0.0019, 0.0344, 0.2567, 0.5292, 0.1735, 0.0044, 0, 0, 0, 0, 0, 0),
  c(0.0001, 0.001, 0.0076, 0.0403, 0.172, 0.373, 0.342, 0.0633, 0.0007, 0, 0, 0),
  c(0.0009, 0.0015, 0.0026, 0.0049, 0.0095, 0.0176, 0.0347, 0.0768, 0.1668, 0.3414, 0.3432, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1))

parents[["R_MEDD2_ALLCV_WD"]] = c("R_MEDD2_LSLOW_WD", "R_MEDD2_DSLOW_WD")
probs[["R_MEDD2_ALLCV_WD"]] = list(
  c(1, 0, 0, 0, 0, 0, 0, 0, 0),
  c(0.0305, 0.9673, 0.0023, 0, 0, 0, 0, 0, 0),
  c(0.0004, 0.0619, 0.8882, 0.0496, 0, 0, 0, 0, 0),
  c(0, 0.0001, 0.0655, 0.9082, 0.0262, 0, 0, 0, 0),
  c(0, 0, 0.0001, 0.0555, 0.937, 0.0074, 0, 0, 0),
  c(0, 0, 0, 0.0002, 0.0491, 0.8863, 0.0644, 0, 0),
  c(0, 0, 0, 0, 0.0003, 0.0956, 0.8967, 0.0075, 0),
  c(0.0002, 0.0006, 0.0019, 0.0064, 0.0247, 0.0974, 0.2855, 0.5832, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0, 1),
  c(0.0236, 0.2579, 0.6404, 0.0781, 0.0001, 0, 0, 0, 0),
  c(0.0017, 0.0421, 0.4597, 0.4852, 0.0113, 0, 0, 0, 0),
  c(0, 0.0019, 0.0749, 0.5694, 0.3532, 0.0005, 0, 0, 0),
  c(0, 0, 0.0022, 0.1051, 0.8251, 0.0675, 0, 0, 0),
  c(0, 0, 0, 0.0022, 0.17, 0.8062, 0.0215, 0, 0),
  c(0, 0, 0, 0, 0.0022, 0.2338, 0.7621, 0.002, 0),
  c(0, 0, 0, 0, 0, 0.0101, 0.4895, 0.5005, 0),
  c(0.0001, 0.0002, 0.0007, 0.0026, 0.0117, 0.0585, 0.2222, 0.704, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0, 1),
  c(0, 0.0021, 0.1149, 0.7277, 0.1553, 0, 0, 0, 0),
  c(0, 0.0001, 0.0146, 0.3403, 0.6424, 0.0026, 0, 0, 0),
  c(0, 0, 0.0007, 0.0498, 0.764, 0.1854, 0.0001, 0, 0),
  c(0, 0, 0, 0.0012, 0.137, 0.8421, 0.0197, 0, 0),
  c(0, 0, 0, 0, 0.0034, 0.4375, 0.5591, 0, 0),
  c(0, 0, 0, 0, 0, 0.0208, 0.8094, 0.1697, 0),
  c(0, 0, 0, 0, 0, 0.0001, 0.0392, 0.9606, 0),
  c(0, 0.0001, 0.0002, 0.0009, 0.0051, 0.0329, 0.1636, 0.7972, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0, 1),
  c(0.0003, 0.0011, 0.005, 0.0205, 0.087, 0.2822, 0.4514, 0.1525, 0),
  c(0.0001, 0.0004, 0.0021, 0.0101, 0.0516, 0.2184, 0.4646, 0.2525, 0),
  c(0, 0.0001, 0.0006, 0.0034, 0.0223, 0.1336, 0.4145, 0.4254, 0),
  c(0, 0, 0.0001, 0.0008, 0.0073, 0.0649, 0.3063, 0.6206, 0),
  c(0, 0, 0, 0.0001, 0.0016, 0.0226, 0.1747, 0.8009, 0),
  c(0, 0, 0, 0, 0.0002, 0.0052, 0.0726, 0.9219, 0),
  c(0, 0, 0, 0, 0, 0.0012, 0.0296, 0.9691, 0),
  c(0, 0, 0.0001, 0.0004, 0.0022, 0.0159, 0.0994, 0.882, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0.0001, 0.0003, 0.0022, 0.0192, 0.1252, 0.8531, 0),
  c(0, 0, 0, 0.0002, 0.0014, 0.0137, 0.1029, 0.8819, 0),
  c(0, 0, 0, 0.0001, 0.0007, 0.0086, 0.0782, 0.9123, 0),
  c(0, 0, 0, 0, 0.0003, 0.005, 0.0564, 0.9382, 0),
  c(0, 0, 0, 0, 0.0001, 0.0026, 0.0379, 0.9594, 0),
  c(0, 0, 0, 0, 0, 0.0012, 0.023, 0.9758, 0),
  c(0, 0, 0, 0, 0, 0.0005, 0.014, 0.9855, 0),
  c(0, 0, 0, 0.0001, 0.0006, 0.0058, 0.0523, 0.9412, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0, 1))

parents[["R_MEDD2_CV_WD"]] = c("R_MEDD2_ALLCV_WD")
probs[["R_MEDD2_CV_WD"]] = list(
  c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0002, 0.0109, 0.0984, 0.3166, 0.3532, 0.1749, 0.0403, 0.0056),
  c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0002, 0.0085, 0.0768, 0.2811, 0.3323, 0.2012, 0.0816, 0.0161, 0.0021, 0.0002),
  c(0, 0, 0, 0, 0, 0, 0, 0.0002, 0.0139, 0.112, 0.2918, 0.3134, 0.1915, 0.061, 0.013, 0.0028, 0.0003, 0, 0),
  c(0, 0, 0, 0, 0, 0, 0.0029, 0.0706, 0.3151, 0.3836, 0.1709, 0.0476, 0.0082, 0.0009, 0.0001, 0, 0, 0, 0),
  c(0, 0, 0, 0, 0.0002, 0.0394, 0.3185, 0.4195, 0.1756, 0.0419, 0.0045, 0.0005, 0, 0, 0, 0, 0, 0, 0),
  c(0, 0, 0, 0.0157, 0.3145, 0.4661, 0.1716, 0.0291, 0.0028, 0.0003, 0, 0, 0, 0, 0, 0, 0, 0, 0),
  c(0, 0, 0.0308, 0.5769, 0.3398, 0.0482, 0.004, 0.0002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
  c(0, 0.0465, 0.8482, 0.0999, 0.0051, 0.0002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
  c(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0))

parents[["R_MEDD2_ALLAMP_WD"]] = c("R_MEDD2_DISP_WD", "R_MEDD2_EFFAXLOSS")
probs[["R_MEDD2_ALLAMP_WD"]] = list(
  c(0, 0, 0, 0, 0.0215, 0.9785),
  c(0, 0, 0, 0.3443, 0.6228, 0.0329),
  c(0, 0, 0.0248, 0.9704, 0.0048, 0),
  c(0, 0.1028, 0.8793, 0.0178, 0.0001, 0),
  c(1, 0, 0, 0, 0, 0),
  c(0, 0, 0, 0.3192, 0.6448, 0.036),
  c(0, 0, 0.0474, 0.9394, 0.0129, 0.0002),
  c(0, 0, 0.933, 0.0669, 0, 0),
  c(0, 0.8756, 0.1237, 0.0007, 0, 0),
  c(1, 0, 0, 0, 0, 0),
  c(0, 0, 0.0051, 0.994, 0.0009, 0),
  c(0, 0, 0.9599, 0.0401, 0, 0),
  c(0, 0.0001, 0.9994, 0.0005, 0, 0),
  c(0, 0.9969, 0.0031, 0, 0, 0),
  c(1, 0, 0, 0, 0, 0),
  c(0, 0, 0.9945, 0.0055, 0, 0),
  c(0, 0, 0.9999, 0.0001, 0, 0),
  c(0, 0.7508, 0.2492, 0, 0, 0),
  c(0, 0.9999, 0.0001, 0, 0, 0),
  c(1, 0, 0, 0, 0, 0))

parents[["R_MEDD2_AMP_WD"]] = c("R_MEDD2_ALLAMP_WD")
probs[["R_MEDD2_AMP_WD"]] = list(
  c(0.75, 0.1878, 0.0476, 0.0112, 0.0026, 0.0006, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0),
  c(0.3184, 0.2478, 0.178, 0.1158, 0.0688, 0.038, 0.0189, 0.0086, 0.0036, 0.0014, 0.0005, 0.0002, 0, 0, 0),
  c(0.0117, 0.0392, 0.0935, 0.1676, 0.2189, 0.2095, 0.1465, 0.0747, 0.0287, 0.0078, 0.0016, 0.0002, 0, 0, 0),
  c(0, 0, 0.0001, 0.0013, 0.0109, 0.0527, 0.1563, 0.2702, 0.2743, 0.1636, 0.0569, 0.0122, 0.0015, 0.0001, 0),
  c(0, 0, 0, 0, 0, 0.0001, 0.0022, 0.0218, 0.1033, 0.2592, 0.3255, 0.2092, 0.0671, 0.0108, 0.0009),
  c(0, 0, 0, 0, 0, 0, 0, 0.0004, 0.0072, 0.0656, 0.2449, 0.3735, 0.2388, 0.0624, 0.0072))

parents[["R_MEDD2_ALLCV_EW"]] = c("R_MEDD2_LSLOW_EW", "R_MEDD2_DSLOW_EW")
probs[["R_MEDD2_ALLCV_EW"]] = list(
  c(1, 0, 0, 0, 0, 0, 0, 0, 0),
  c(0.0305, 0.9673, 0.0023, 0, 0, 0, 0, 0, 0),
  c(0.0004, 0.0619, 0.8882, 0.0496, 0, 0, 0, 0, 0),
  c(0, 0.0001, 0.0655, 0.9082, 0.0262, 0, 0, 0, 0),
  c(0, 0, 0.0001, 0.0555, 0.937, 0.0074, 0, 0, 0),
  c(0, 0, 0, 0.0002, 0.0491, 0.8863, 0.0644, 0, 0),
  c(0, 0, 0, 0, 0.0003, 0.0956, 0.8967, 0.0075, 0),
  c(0.0002, 0.0006, 0.0019, 0.0064, 0.0247, 0.0974, 0.2855, 0.5832, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0, 1),
  c(0.0264, 0.9149, 0.0587, 0, 0, 0, 0, 0, 0),
  c(0.0006, 0.0944, 0.8841, 0.0209, 0, 0, 0, 0, 0),
  c(0, 0.0018, 0.1956, 0.786, 0.0166, 0, 0, 0, 0),
  c(0, 0, 0.0026, 0.2655, 0.7316, 0.0003, 0, 0, 0),
  c(0, 0, 0, 0.0044, 0.5355, 0.46, 0.0001, 0, 0),
  c(0, 0, 0, 0, 0.0047, 0.5053, 0.49, 0, 0),
  c(0, 0, 0, 0, 0, 0.0218, 0.8352, 0.143, 0),
  c(0.0001, 0.0003, 0.001, 0.0036, 0.0154, 0.0712, 0.2467, 0.6617, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0, 1),
  c(0, 0.0218, 0.9469, 0.0313, 0, 0, 0, 0, 0),
  c(0, 0.0007, 0.2183, 0.779, 0.002, 0, 0, 0, 0),
  c(0, 0, 0.0077, 0.4577, 0.5345, 0.0001, 0, 0, 0),
  c(0, 0, 0, 0.0166, 0.9182, 0.0652, 0, 0, 0),
  c(0, 0, 0, 0, 0.0398, 0.946, 0.0142, 0, 0),
  c(0, 0, 0, 0, 0.0002, 0.1104, 0.8881, 0.0013, 0),
  c(0, 0, 0, 0, 0, 0.002, 0.3203, 0.6777, 0),
  c(0, 0.0001, 0.0005, 0.0019, 0.0093, 0.0504, 0.2072, 0.7305, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0, 1),
  c(0.0003, 0.0019, 0.014, 0.0788, 0.3238, 0.4596, 0.1212, 0.0003, 0),
  c(0.0001, 0.0004, 0.0043, 0.0321, 0.1956, 0.5049, 0.2604, 0.0023, 0),
  c(0, 0.0001, 0.0007, 0.0074, 0.0735, 0.4044, 0.4938, 0.0201, 0),
  c(0, 0, 0.0001, 0.001, 0.0172, 0.2179, 0.6479, 0.1159, 0),
  c(0, 0, 0, 0.0001, 0.0018, 0.0559, 0.4601, 0.4822, 0),
  c(0, 0, 0, 0, 0.0001, 0.0041, 0.1033, 0.8925, 0),
  c(0, 0, 0, 0, 0, 0.0003, 0.0194, 0.9803, 0),
  c(0, 0, 0.0001, 0.0004, 0.0026, 0.019, 0.1153, 0.8626, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0, 1),
  c(0, 0, 0.0001, 0.0005, 0.0041, 0.0384, 0.2145, 0.7423, 0),
  c(0, 0, 0, 0.0002, 0.0021, 0.0239, 0.1648, 0.8089, 0),
  c(0, 0, 0, 0.0001, 0.0008, 0.0123, 0.1119, 0.8749, 0),
  c(0, 0, 0, 0, 0.0003, 0.0055, 0.0699, 0.9243, 0),
  c(0, 0, 0, 0, 0.0001, 0.0021, 0.039, 0.9588, 0),
  c(0, 0, 0, 0, 0, 0.0007, 0.0189, 0.9805, 0),
  c(0, 0, 0, 0, 0, 0.0002, 0.0093, 0.9905, 0),
  c(0, 0, 0, 0.0001, 0.0006, 0.0062, 0.0562, 0.9369, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0, 1))

parents[["R_MEDD2_CV_EW"]] = c("R_MEDD2_ALLCV_EW")
probs[["R_MEDD2_CV_EW"]] = list(
  c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0012, 0.0172, 0.1126, 0.2484, 0.321, 0.1935, 0.0803, 0.0258),
  c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.001, 0.0149, 0.0996, 0.2262, 0.2934, 0.2262, 0.102, 0.0289, 0.0065, 0.0014),
  c(0, 0, 0, 0, 0, 0, 0, 0, 0.0025, 0.0317, 0.1445, 0.2639, 0.2925, 0.167, 0.0669, 0.0245, 0.0054, 0.0009, 0.0001, 0),
  c(0, 0, 0, 0, 0, 0, 0.0005, 0.0189, 0.1567, 0.3371, 0.2862, 0.1429, 0.0465, 0.0095, 0.0014, 0.0003, 0, 0, 0, 0),
  c(0, 0, 0, 0, 0, 0.0105, 0.1565, 0.3779, 0.3007, 0.1252, 0.0245, 0.0042, 0.0005, 0.0001, 0, 0, 0, 0, 0, 0),
  c(0, 0, 0, 0.0045, 0.1674, 0.4536, 0.2834, 0.0774, 0.0118, 0.0017, 0.0002, 0, 0, 0, 0, 0, 0, 0, 0, 0),
  c(0, 0, 0.0109, 0.4228, 0.4446, 0.1066, 0.0137, 0.0012, 0.0001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
  c(0, 0.0199, 0.8041, 0.1629, 0.0125, 0.0006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
  c(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0))

parents[["R_MEDD2_BLOCK_EW"]] = c("R_DIFFN_MEDD2_BLOCK", "R_LNLBE_MEDD2_BLOCK_EW")
probs[["R_MEDD2_BLOCK_EW"]] = list(
  c(1, 0, 0, 0, 0),
  c(0.0077, 0.9923, 0, 0, 0),
  c(0.0007, 0.0234, 0.9759, 0, 0),
  c(0.0019, 0.006, 0.0588, 0.9333, 0),
  c(0, 0, 0, 0, 1),
  c(0.0077, 0.9923, 0, 0, 0),
  c(0.0001, 0.498, 0.5019, 0, 0),
  c(0, 0.0032, 0.9968, 0, 0),
  c(0.001, 0.0033, 0.0376, 0.9581, 0),
  c(0, 0, 0, 0, 1),
  c(0.0007, 0.0234, 0.9759, 0, 0),
  c(0, 0.0032, 0.9968, 0, 0),
  c(0, 0.0007, 0.4328, 0.5665, 0),
  c(0.0003, 0.0011, 0.0159, 0.9827, 0),
  c(0, 0, 0, 0, 1),
  c(0.0019, 0.006, 0.0588, 0.9333, 0),
  c(0.001, 0.0033, 0.0376, 0.9581, 0),
  c(0.0003, 0.0011, 0.0159, 0.9827, 0),
  c(0.0003, 0.0011, 0.0125, 0.986, 0),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1),
  c(0, 0, 0, 0, 1))

parents[["R_MEDD2_DISP_EWD"]] = c("R_MEDD2_DISP_WD", "R_MEDD2_DISP_EW")
probs[["R_MEDD2_DISP_EWD"]] = list(
  c(0, 0, 0.0742, 0.9045, 0.0213, 0, 0, 0, 0),
  c(0.0001, 0.2215, 0.7732, 0.0052, 0, 0, 0, 0, 0),
  c(0.1315, 0.8577, 0.0108, 0, 0, 0, 0, 0, 0),
  c(0.9933, 0.0067, 0, 0, 0, 0, 0, 0, 0),
  c(0, 0, 0, 0, 0.0742, 0.9045, 0.0213, 0, 0),
  c(0, 0, 0, 0.1315, 0.8576, 0.0108, 0, 0, 0),
  c(0, 0, 0.0742, 0.9045, 0.0213, 0, 0, 0, 0),
  c(0.0404, 0.9192, 0.0404, 0, 0, 0, 0, 0, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0.133, 0.867),
  c(0, 0, 0, 0, 0, 0, 0.0108, 0.8577, 0.1315),
  c(0, 0, 0, 0, 0, 0.0052, 0.7732, 0.2215, 0.0001),
  c(0, 0, 0.0213, 0.9045, 0.0742, 0, 0, 0, 0),
  c(0, 0, 0, 0, 0, 0, 0, 0.133, 0.867),
  c(0, 0, 0, 0, 0, 0, 0.0108, 0.8577, 0.1315),
  c(0, 0, 0, 0, 0, 0.0052, 0.7732, 0.2215, 0.0001),
  c(0, 0, 0.0213, 0.9045, 0.0742, 0, 0, 0, 0))

parents[["R_MEDD2_AMPR_EW"]] = c("R_MEDD2_DISP_EWD", "R_MEDD2_BLOCK_EW")
probs[["R_MEDD2_AMPR_EW"]] = list(
  c(0, 0.2827, 0.7165, 0.0009, 0, 0, 0, 0, 0, 0, 0, 0),
  c(0, 0.9103, 0.0897, 0, 0, 0, 0, 0, 0, 0, 0, 0),
  c(0, 0.9974, 0.0026, 0, 0, 0, 0, 0, 0, 0, 0, 0),
  c(0, 0.9468, 0.0492, 0.0035, 0.0005, 0.0001, 0, 0, 0, 0, 0, 0),
  c(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
  c(0, 0, 0.5547, 0.4268, 0.0183, 0.0002, 0, 0, 0, 0, 0, 0),
  c(0, 0.0004, 0.8945, 0.1036, 0.0015, 0, 0, 0, 0, 0, 0, 0),
  c(0, 0.3856, 0.6048, 0.0095, 0.0001, 0, 0, 0, 0, 0, 0, 0),
  c(0, 0.8722, 0.111, 0.0135, 0.0025, 0.0006, 0.0002, 0.0001, 0, 0, 0, 0),
  c(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
  c(0, 0, 0.009, 0.5127, 0.4152, 0.0589, 0.0039, 0.0002, 0, 0, 0, 0),
  c(0, 0, 0.114, 0.7169, 0.1598, 0.0089, 0.0003, 0, 0, 0, 0, 0),
  c(0, 0.0073, 0.8191, 0.1638, 0.0095, 0.0003, 0, 0, 0, 0, 0, 0),
  c(0, 0.7781, 0.1801, 0.0312, 0.0075, 0.002, 0.0006, 0.0002, 0.0001, 0, 0, 0),
  c(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
  c(0, 0, 0, 0.0635, 0.4459, 0.3732, 0.0995, 0.0162, 0.0015, 0.0002, 0, 0),
  c(0, 0, 0.0026, 0.3111, 0.5155, 0.1499, 0.019, 0.0018, 0.0001, 0, 0, 0),
  c(0, 0.0001, 0.386, 0.4993, 0.1036, 0.0101, 0.0008, 0.0001, 0, 0, 0, 0),
  c(0, 0.678, 0.2436, 0.0548, 0.0156, 0.005, 0.0018, 0.0007, 0.0003, 0.0001, 0.0001, 0),
  c(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
  c(0, 0, 0, 0.0029, 0.1141, 0.3951, 0.3198, 0.1315, 0.0298, 0.0058, 0.0009, 0),
  c(0, 0, 0, 0.0451, 0.3717, 0.4039, 0.1433, 0.0313, 0.0041, 0.0005, 0.0001, 0),
  c(0, 0, 0.0913, 0.5259, 0.3027, 0.0681, 0.0104, 0.0014, 0.0002, 0, 0, 0),
  c(0, 0.5789, 0.2957, 0.082, 0.027, 0.0096, 0.0037, 0.0017, 0.0007, 0.0004, 0.0002, 0.0001),
  c(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
  c(0, 0, 0, 0.0001, 0.0136, 0.1578, 0.3285, 0.2966, 0.1404, 0.0483, 0.0135, 0.0012),
  c(0, 0, 0, 0.0035, 0.1122, 0.3738, 0.3186, 0.1444, 0.0376, 0.0083, 0.0015, 0.0001),
  c(0, 0, 0.015, 0.3069, 0.4204, 0.1929, 0.0512, 0.0114, 0.0019, 0.0003, 0.0001, 0),
  c(0, 0.485, 0.334, 0.1106, 0.0411, 0.0162, 0.0068, 0.0033, 0.0015, 0.0008, 0.0004, 0.0003),
  c(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
  c(0, 0, 0, 0, 0.0012, 0.0385, 0.1746, 0.3015, 0.2613, 0.1447, 0.0651, 0.0129),
  c(0, 0, 0, 0.0002, 0.0226, 0.189, 0.3317, 0.2744, 0.1252, 0.0431, 0.0124, 0.0013),
  c(0, 0, 0.0023, 0.1333, 0.3728, 0.3075, 0.1292, 0.0421, 0.0099, 0.0024, 0.0005, 0),
  c(0, 0.4048, 0.3566, 0.1367, 0.0562, 0.024, 0.0108, 0.0054, 0.0027, 0.0014, 0.0008, 0.0005),
  c(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
  c(0, 0, 0, 0, 0.0001, 0.0062, 0.058, 0.1828, 0.2779, 0.2392, 0.1675, 0.0683),
  c(0, 0, 0, 0, 0.0031, 0.0615, 0.2109, 0.3051, 0.2344, 0.1217, 0.0528, 0.0104),
  c(0, 0, 0.0003, 0.0444, 0.2413, 0.3431, 0.2208, 0.1025, 0.0337, 0.0104, 0.003, 0.0004),
  c(0, 0.3317, 0.3672, 0.1613, 0.0727, 0.0335, 0.016, 0.0085, 0.0044, 0.0024, 0.0015, 0.001),
  c(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
  c(0, 0, 0, 0, 0, 0.0009, 0.0157, 0.0823, 0.2012, 0.2516, 0.2559, 0.1924),
  c(0, 0, 0, 0, 0.0004, 0.0166, 0.1002, 0.2325, 0.2777, 0.2039, 0.1251, 0.0436),
  c(0, 0, 0, 0.0138, 0.1311, 0.2956, 0.2729, 0.1711, 0.0745, 0.0286, 0.0104, 0.002),
  c(0, 0.2731, 0.3669, 0.1808, 0.0881, 0.0434, 0.0217, 0.012, 0.0064, 0.0036, 0.0023, 0.0017),
  c(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0))
