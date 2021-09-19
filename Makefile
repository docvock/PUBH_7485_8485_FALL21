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
FIGDIR= ./figs

# list R files
# RFILES := $(wildcard $(RDIR)/*.R)
# Indicator files to show R file has run
OUT_FILES:=  $(RDIR)/README.Rout $(RDIR01)/Lecture_potential_outcomes_intro.Rout $(RDIR02)/Rexample_TableOne_SMD.Rout

all: $(OUT_FILES)

# May need to add something here if some R files depend on others.
$(RDIR)/README.Rout: $(RDIR)/README.R $(RDIR)/README.Rmd $(RDIR)/library_PUBH_7485_8485.R
	R CMD BATCH --slave --vanilla README.R $(RDIR)/README.Rout
	
$(RDIR01)/Lecture_potential_outcomes_intro.Rout: $(RDIR01)/Lecture_potential_outcomes_intro.R $(RDIR01)/Lecture_potential_outcomes_intro.Rmd 
	R CMD BATCH --slave --vanilla $(RDIR01)/Lecture_potential_outcomes_intro.R $(RDIR01)/Lecture_potential_outcomes_intro.Rout	

$(RDIR02)/Rexample_TableOne_SMD.Rout: $(RDIR02)/Rexample_TableOne_SMD.R $(RDIR02)/Rexample_TableOne_SMD.Rmd 
	R CMD BATCH --slave --vanilla $(RDIR02)/Rexample_TableOne_SMD.R $(RDIR02)/Rexample_TableOne_SMD.Rout	

# Clean up stray files
#clean:
#	rm -fv $(OUT_FILES) models.Rdata