###################################
# File: ./Rexample_TableOne_SMD.R
#   Purpose: Code needed to compile Rexample_TableOne_SMD.Rmd into pdf file
#   Author: David M. Vock
#   Relies On: ./Rexample_TableOne_SMD.Rmd ./tableone_Example.TRI.png
#   Files Created: ./Rexample_TableOne_SMD.pdf 
####################################

library(rmarkdown)
render('02_Tabular_Graphical_Summaries_for_Causal_Inference/Rexample_TableOne_SMD.Rmd')
