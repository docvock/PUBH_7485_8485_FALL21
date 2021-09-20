###################################
# File: ./Lecture_bootstrap.R
#   Purpose: Code needed to compile Lecture_bootstrap.Rmd into pdf file
#   Author: David M. Vock
#   Relies On: ./Lecture_bootstrap.Rmd homework1_dataset.Rdata
#   Files Created: ./Lecture_bootstrap.pdf 
####################################

library(rmarkdown)
render('03_Theory_Review/Lecture_bootstrap.Rmd')
