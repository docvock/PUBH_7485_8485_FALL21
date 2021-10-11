###################################
# File: ./Makefile
#   Purpose: Makefile to compile all R code, manuscript files, README markdown files
#   Author: David M. Vock
#   Relies On: NA 
#   Files Created: NA 
####################################

# Usually, only these lines need changing
TEXFILE= paper
RDIR= .
RDIR01= ./01_Potential_Outcomes_Introduction
RDIR02= ./02_Tabular_Graphical_Summaries_for_Causal_Inference
RDIR03= ./03_Theory_Review
RDIR04= ./04_Regression_Adjustment
RDIR05= ./05_Propensity_Score_and_Weighting
RDIR06= ./06_Matching
FIGDIR= ./figs

# list R files
# RFILES := $(wildcard $(RDIR)/*.R)
# Indicator files to show R file has run
OUT_FILES:=  $(RDIR)/README.Rout $(RDIR01)/Lecture_potential_outcomes_intro.Rout $(RDIR02)/Rexample_TableOne_SMD.Rout $(RDIR03)/Lecture_bootstrap.Rout $(RDIR03)/Lecture_theory_basics.Rout $(RDIR04)/Lecture_regression_adjustment.Rout $(RDIR04)/Rexample_flexible_regression.Rout $(RDIR05)/Lecture_propensity_score.Rout $(RDIR05)/Lecture_augmented_ipw.Rout $(RDIR05)/Rexample_covariate_overlap.Rout $(RDIR06)/Lecture_matching.Rout

all: $(OUT_FILES)

# May need to add something here if some R files depend on others.
$(RDIR)/README.Rout: $(RDIR)/README.R $(RDIR)/README.Rmd $(RDIR)/library_PUBH_7485_8485.R
	R CMD BATCH --slave --vanilla README.R $(RDIR)/README.Rout
	
$(RDIR01)/Lecture_potential_outcomes_intro.Rout: $(RDIR01)/Lecture_potential_outcomes_intro.R $(RDIR01)/Lecture_potential_outcomes_intro.Rmd 
	R CMD BATCH --slave --vanilla $(RDIR01)/Lecture_potential_outcomes_intro.R $(RDIR01)/Lecture_potential_outcomes_intro.Rout	

$(RDIR02)/Rexample_TableOne_SMD.Rout: $(RDIR02)/Rexample_TableOne_SMD.R $(RDIR02)/Rexample_TableOne_SMD.Rmd 
	R CMD BATCH --slave --vanilla $(RDIR02)/Rexample_TableOne_SMD.R $(RDIR02)/Rexample_TableOne_SMD.Rout	

$(RDIR03)/Lecture_bootstrap.Rout: $(RDIR03)/Lecture_bootstrap.R $(RDIR03)/Lecture_bootstrap.Rmd 
	R CMD BATCH --slave --vanilla $(RDIR03)/Lecture_bootstrap.R $(RDIR03)/Lecture_bootstrap.Rout
	
$(RDIR03)/Lecture_theory_basics.Rout: $(RDIR03)/Lecture_theory_basics.R $(RDIR03)/Lecture_theory_basics.Rmd 
	R CMD BATCH --slave --vanilla $(RDIR03)/Lecture_theory_basics.R $(RDIR03)/Lecture_theory_basics.Rout
	
$(RDIR04)/Lecture_regression_adjustment.Rout: $(RDIR04)/Lecture_regression_adjustment.R $(RDIR04)/Lecture_regression_adjustment.Rmd 
	R CMD BATCH --slave --vanilla $(RDIR04)/Lecture_regression_adjustment.R $(RDIR04)/Lecture_regression_adjustment.Rout

$(RDIR04)/Rexample_flexible_regression.Rout: $(RDIR04)/Rexample_flexible_regression.R $(RDIR04)/Rexample_flexible_regression.Rmd 
	R CMD BATCH --slave --vanilla $(RDIR04)/Rexample_flexible_regression.R $(RDIR04)/Rexample_flexible_regression.Rout
	
$(RDIR05)/Lecture_propensity_score.Rout: $(RDIR05)/Lecture_propensity_score.R $(RDIR05)/Lecture_propensity_score.Rmd 
	R CMD BATCH --slave --vanilla $(RDIR05)/Lecture_propensity_score.R $(RDIR05)/Lecture_propensity_score.Rout

$(RDIR05)/Lecture_augmented_ipw.Rout: $(RDIR05)/Lecture_augmented_ipw.R $(RDIR05)/Lecture_augmented_ipw.Rmd 
	R CMD BATCH --slave --vanilla $(RDIR05)/Lecture_augmented_ipw.R $(RDIR05)/Lecture_augmented_ipw.Rout

$(RDIR05)/Rexample_covariate_overlap.Rout: $(RDIR05)/Rexample_covariate_overlap.R $(RDIR05)/Rexample_covariate_overlap.Rmd 
	R CMD BATCH --slave --vanilla $(RDIR05)/Rexample_covariate_overlap.R $(RDIR05)/Rexample_covariate_overlap.Rout

$(RDIR06)/Lecture_matching.Rout: $(RDIR06)/Lecture_matching.R $(RDIR06)/Lecture_matching.Rmd 
	R CMD BATCH --slave --vanilla $(RDIR06)/Lecture_matching.R $(RDIR06)/Lecture_matching.Rout

# Clean up stray files
#clean:
#	rm -fv $(OUT_FILES) models.Rdata