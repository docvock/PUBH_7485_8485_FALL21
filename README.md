# [Public Health 7485/8485 Methods for Causal Inference](https://sites.google.com/site/dmvock/)

### [David M. Vock](https://sites.google.com/site/dmvock/)

### [University of Minnesota Division of Biostatistics](http://sph.umn.edu/biostatistics/)


---

The files in this repository comprise the source code for the lecture slides and other content for the course PUBH 7485/8485 **Methods for Causal Inference**.

### Course Description

Although most of statistical inference focuses on associational relationships among variables, in many biomedical and health sciences contexts the focus is on establishing the causal effect of an intervention or treatment. Drawing causal conclusions can be challenging, particularly in the context of observational data, as treatment assignment may be confounded. The first part of this course focuses on methods to establish the causal effect of a point exposure, i.e., situations in which treatment is given at a single point in time. Methods to estimate causal treatment effects will include outcome regression, propensity score methods (i.e., inverse weighting, matching), and doubly robust approaches. 

The second half of the course focuses on estimating the effect of a series of treatment decisions during the course of a chronic disease such as cancer, substance abuse, mental health disorders, etc. Methods to estimate these time-varying treatments include marginal structural models estimated by inverse probability weighting, structural nested models estimated by G-estimation, and the (parametric) G-computation algorithm. We will then turn our attention to estimating the optimal treatment sequence for a given subject, i.e., how to determine “the right treatment, for the right patient, at the right time,” using dynamic marginal structural models and methods derived from reinforcement learning (e.g., Q-learning, A-learning) and classification problems (outcome weighted learning, C-learning).

PubH 8485 is appropriate for Ph.D students in Biostatistics and Statistics. The homework and projects will focus more on the theoretical aspects of the methods to prepare students for methodological research in this area. PubH 7485 is appropriate for Master’s students in Biostatistics and PhD students in other fields who wish to learn causal methods to apply them to topics in the health sciences.

This course uses the statistical software of R, a freely available statistical software package, to implement many of the methods we discuss. Most (but not all) of the methods discussed in this course can be implemented in any statistical software (e.g., SAS, Stata, SPSS, etc.). While students will be free to use any software for homework assignments, students will need to be excellent programmer in their chosen language in order to avoid using R.  

### Reproduce the Output and Manuscript

The main directory contains a `Makefile` which can be run to obtain all the output for the course and compile the slides.  This makefile encodes the dependencies between the different files described above. For those not familiar with makefiles, I have included a "Make-like" file, `r_complete_source.R` which indicates the order in which the .R files should be sourced.

### Session Info
The slides for this course were compiled with [RStudio](http://www.rstudio.com/) (v. 1.4.1717) with the following R session. The list of packages used throughout the course is maintained in `library_PUBH_7485_8485.R`; the version of these packages is listed below. 


```
## R version 4.1.1 (2021-08-10)
## Platform: x86_64-apple-darwin17.0 (64-bit)
## Running under: macOS Big Sur 10.16
## 
## Matrix products: default
## BLAS:   /Library/Frameworks/R.framework/Versions/4.1/Resources/lib/libRblas.0.dylib
## LAPACK: /Library/Frameworks/R.framework/Versions/4.1/Resources/lib/libRlapack.dylib
## 
## locale:
## [1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8
## 
## attached base packages:
## [1] grid      stats     graphics  grDevices utils     datasets  methods  
## [8] base     
## 
## other attached packages:
##  [1] CBPS_0.22           glmnet_4.1-2        numDeriv_2016.8-1.1
##  [4] nnet_7.3-16         WeightIt_0.12.0     cobalt_4.3.1       
##  [7] vip_0.3.2           pdp_0.7.0           ranger_0.13.1      
## [10] rpart.plot_3.1.0    rpart_4.1-15        FAdist_2.3         
## [13] MatchIt_4.3.0       boot_1.3-28         survey_4.1-1       
## [16] Matrix_1.3-4        reshape2_1.4.4      Matching_4.9-9     
## [19] MASS_7.3-54         forestplot_2.0.1    checkmate_2.0.0    
## [22] magrittr_2.0.1      rms_6.2-0           SparseM_1.81       
## [25] Hmisc_4.5-0         ggplot2_3.3.5       Formula_1.2-4      
## [28] survival_3.2-11     lattice_0.20-44     dplyr_1.0.7        
## [31] xtable_1.8-4        labelled_2.8.0      tableone_0.13.0    
## [34] knitr_1.34         
## 
## loaded via a namespace (and not attached):
##  [1] foreach_1.5.1       splines_4.1.1       latticeExtra_0.6-29
##  [4] pillar_1.6.2        backports_1.2.1     quantreg_5.86      
##  [7] glue_1.4.2          digest_0.6.27       RColorBrewer_1.1-2 
## [10] colorspace_2.0-2    sandwich_3.0-1      htmltools_0.5.2    
## [13] plyr_1.8.6          conquer_1.0.2       pkgconfig_2.0.3    
## [16] haven_2.4.3         purrr_0.3.4         mvtnorm_1.1-2      
## [19] scales_1.1.1        jpeg_0.1-9          MatrixModels_0.5-0 
## [22] htmlTable_2.2.1     tibble_3.1.4        generics_0.1.0     
## [25] ellipsis_0.3.2      TH.data_1.0-10      withr_2.4.2        
## [28] crayon_1.4.1        polspline_1.1.19    evaluate_0.14      
## [31] fansi_0.5.0         nlme_3.1-152        forcats_0.5.1      
## [34] foreign_0.8-81      tools_4.1.1         data.table_1.14.0  
## [37] hms_1.1.0           mitools_2.4         lifecycle_1.0.0    
## [40] matrixStats_0.60.1  multcomp_1.4-17     stringr_1.4.0      
## [43] munsell_0.5.0       cluster_2.1.2       compiler_4.1.1     
## [46] rlang_0.4.11        iterators_1.0.13    rstudioapi_0.13    
## [49] htmlwidgets_1.5.4   base64enc_0.1-3     gtable_0.3.0       
## [52] codetools_0.2-18    DBI_1.1.1           R6_2.5.1           
## [55] gridExtra_2.3       zoo_1.8-9           fastmap_1.1.0      
## [58] utf8_1.2.2          shape_1.4.6         stringi_1.7.4      
## [61] Rcpp_1.0.7          vctrs_0.3.8         png_0.1-7          
## [64] tidyselect_1.1.1    xfun_0.26
```
