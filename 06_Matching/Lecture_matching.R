###################################
# File: ./Lecture_matching.R
#   Purpose: Code needed to compile Lecture_matching.Rmd into pdf file
#   Author: David M. Vock
#   Relies On: ./Lecture_matching.Rmd 
#   Files Created: ./Lecture_matching.pdf 
####################################

library(rmarkdown)
render('06_Matching/Lecture_matching.Rmd')
