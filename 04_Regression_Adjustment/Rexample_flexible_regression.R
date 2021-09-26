###################################
# File: ./Rexample_flexible_regression.R
#   Purpose: Code needed to compile Rexample_flexible_regression.Rmd into pdf file
#   Author: David M. Vock
#   Relies On: ./Rexample_flexible_regression.Rmd homework1_dataset.Rdata
#   Files Created: ./Rexample_flexible_regression.pdf 
####################################

library(rmarkdown)
render('04_Regression_Adjustment/Rexample_flexible_regression.Rmd')
