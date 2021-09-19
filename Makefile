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
FIGDIR= ./figs

# list R files
# RFILES := $(wildcard $(RDIR)/*.R)
# Indicator files to show R file has run
OUT_FILES:=  $(RDIR)/README.Rout 

all: $(OUT_FILES)

# May need to add something here if some R files depend on others.
$(RDIR)/README.Rout: $(RDIR)/README.R $(RDIR)/README.Rmd $(RDIR)/library_PUBH_7485_8485.R
	R CMD BATCH --slave --vanilla README.R $(RDIR)/README.Rout

# Clean up stray files
#clean:
#	rm -fv $(OUT_FILES) models.Rdata