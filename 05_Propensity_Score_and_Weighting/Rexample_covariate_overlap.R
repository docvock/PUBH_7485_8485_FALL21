###################################
# File: ./Rexample_covariate_overlap.R
#   Purpose: Code needed to compile Rexample_covariate_overlap.Rmd into pdf file
#   Author: David M. Vock
#   Relies On: ./Rexample_covariate_overlap.Rmd 
#   Files Created: ./Lecture_covariate_overlap.pdf 
####################################

library(rmarkdown)
render('05_Propensity_Score_and_Weighting/Rexample_covariate_overlap.Rmd')
