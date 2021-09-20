###################################
# File: ./Lecture_potential_outcomes.R
#   Purpose: Code needed to compile Lecture_potential_outcomes.Rmd into pdf file
#   Author: David M. Vock
#   Relies On: ./Lecture_potential_outcomes.Rmd 
#   Files Created: ./Lecture_potential_outcomes.pdf 
####################################

library(rmarkdown)
render('01_Potential_Outcomes_Introduction/Lecture_potential_outcomes_intro.Rmd')
