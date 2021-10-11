###################################
# File: ./Lecture_augmented_ipw.R
#   Purpose: Code needed to compile Lecture_augmented_ipw.Rmd into pdf file
#   Author: David M. Vock
#   Relies On: ./Lecture_augmented_ipw.Rmd 
#   Files Created: ./Lecture_augmented_ipw.pdf 
####################################

library(rmarkdown)
render('05_Propensity_Score_and_Weighting/Lecture_augmented_ipw.Rmd')
