###################################
# File: ./README.R
#   Purpose: Code needed to compile README.Rmd into markdown file
#   Author: David M. Vock
#   Relies On: ./README.Rmd ./library_7485_8485.R 
#   Files Created: ./README.md 
####################################

library(rmarkdown)
render('README.Rmd')
