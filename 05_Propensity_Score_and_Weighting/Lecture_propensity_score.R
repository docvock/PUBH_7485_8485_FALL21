###################################
# File: ./Lecture_propensity_score.R
#   Purpose: Code needed to compile Lecture_propensity_score.Rmd into pdf file
#   Author: David M. Vock
#   Relies On: ./Lecture_propensity_score.Rmd 
#   Files Created: ./Lecture_propensity_score.pdf 
####################################

library(rmarkdown)
render('05_Propensity_Score_and_Weighting/Lecture_propensity_score.Rmd')
