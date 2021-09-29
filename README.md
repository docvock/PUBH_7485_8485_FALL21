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
##   |                                                                              |                                                                      |   0%  |                                                                              |...                                                                   |   4%
##   ordinary text without R code
## 
##   |                                                                              |.....                                                                 |   7%
## label: setup (with options) 
## List of 1
##  $ include: logi FALSE
## 
##   |                                                                              |........                                                              |  11%
##   ordinary text without R code
## 
##   |                                                                              |..........                                                            |  15%
## label: unnamed-chunk-2 (with options) 
## List of 2
##  $ echo : logi FALSE
##  $ cache: logi TRUE
```

```
##   |                                                                              |.............                                                         |  19%
##   ordinary text without R code
## 
##   |                                                                              |................                                                      |  22%
## label: unnamed-chunk-3 (with options) 
## List of 2
##  $ echo : logi FALSE
##  $ cache: logi TRUE
```

```
##   |                                                                              |..................                                                    |  26%
##   ordinary text without R code
## 
##   |                                                                              |.....................                                                 |  30%
## label: unnamed-chunk-4 (with options) 
## List of 2
##  $ echo : logi FALSE
##  $ cache: logi TRUE
## 
##   |                                                                              |.......................                                               |  33%
##   ordinary text without R code
## 
##   |                                                                              |..........................                                            |  37%
## label: unnamed-chunk-5 (with options) 
## List of 3
##  $ echo   : logi TRUE
##  $ warning: logi FALSE
##  $ include: logi FALSE
## 
##   |                                                                              |.............................                                         |  41%
##   ordinary text without R code
## 
##   |                                                                              |...............................                                       |  44%
## label: unnamed-chunk-6 (with options) 
## List of 3
##  $ echo   : logi FALSE
##  $ warning: logi FALSE
##  $ include: logi FALSE
## 
##   |                                                                              |..................................                                    |  48%
##   ordinary text without R code
## 
##   |                                                                              |....................................                                  |  52%
## label: unnamed-chunk-7 (with options) 
## List of 3
##  $ echo   : logi TRUE
##  $ warning: logi FALSE
##  $ results: chr "hide"
## 
##   |                                                                              |.......................................                               |  56%
##   ordinary text without R code
## 
##   |                                                                              |.........................................                             |  59%
## label: unnamed-chunk-8 (with options) 
## List of 4
##  $ echo   : logi TRUE
##  $ warning: logi FALSE
##  $ size   : chr "tiny"
##  $ results: chr "asis"
## 
##   |                                                                              |............................................                          |  63%
##   ordinary text without R code
## 
##   |                                                                              |...............................................                       |  67%
## label: unnamed-chunk-9 (with options) 
## List of 2
##  $ echo : logi FALSE
##  $ cache: logi TRUE
## 
##   |                                                                              |.................................................                     |  70%
##   ordinary text without R code
## 
##   |                                                                              |....................................................                  |  74%
## label: unnamed-chunk-10 (with options) 
## List of 3
##  $ echo   : logi TRUE
##  $ warning: logi FALSE
##  $ cache  : logi TRUE
## 
##   |                                                                              |......................................................                |  78%
##   ordinary text without R code
## 
##   |                                                                              |.........................................................             |  81%
## label: unnamed-chunk-11 (with options) 
## List of 2
##  $ echo : logi TRUE
##  $ cache: logi TRUE
## 
##   |                                                                              |............................................................          |  85%
##   ordinary text without R code
## 
##   |                                                                              |..............................................................        |  89%
## label: unnamed-chunk-12 (with options) 
## List of 2
##  $ echo : logi TRUE
##  $ cache: logi TRUE
## 
##   |                                                                              |.................................................................     |  93%
##   ordinary text without R code
## 
##   |                                                                              |...................................................................   |  96%
## label: unnamed-chunk-13 (with options) 
## List of 2
##  $ echo : logi FALSE
##  $ cache: logi TRUE
## 
##   |                                                                              |......................................................................| 100%
##   ordinary text without R code
## 
## 
## /private/var/folders/f4/nqs_tn8j29l78jxg3nchcb580000gn/T/AppTranslocation/FAF05EC1-8897-4CC7-8A9D-AB36C6218F5B/d/RStudio.app/Contents/MacOS/pandoc/pandoc +RTS -K512m -RTS Lecture_regression_adjustment.knit.md --to beamer --from markdown+autolink_bare_uris+tex_math_single_backslash --output Lecture_regression_adjustment.tex --lua-filter /Library/Frameworks/R.framework/Versions/4.1/Resources/library/rmarkdown/rmarkdown/lua/pagebreak.lua --lua-filter /Library/Frameworks/R.framework/Versions/4.1/Resources/library/rmarkdown/rmarkdown/lua/latex-div.lua --highlight-style tango --pdf-engine pdflatex --self-contained
```

```
## Error in parse_block(g[-1], g[1], params.src, markdown_mode): Duplicate chunk label 'unnamed-chunk-1', which has been used for the chunk:
## # upload all packages used so that information is included in session info
## source("library_PUBH_7485_8485.R")
## sessionInfo()
```

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
##  [1] rmarkdown_2.11   FAdist_2.3       MatchIt_4.3.0    boot_1.3-28     
##  [5] survey_4.1-1     Matrix_1.3-4     reshape2_1.4.4   Matching_4.9-9  
##  [9] MASS_7.3-54      forestplot_2.0.1 checkmate_2.0.0  magrittr_2.0.1  
## [13] rms_6.2-0        SparseM_1.81     Hmisc_4.5-0      ggplot2_3.3.5   
## [17] Formula_1.2-4    survival_3.2-11  lattice_0.20-44  dplyr_1.0.7     
## [21] xtable_1.8-4     labelled_2.8.0   tableone_0.13.0  knitr_1.34      
## 
## loaded via a namespace (and not attached):
##  [1] splines_4.1.1       highr_0.9           latticeExtra_0.6-29
##  [4] yaml_2.2.1          pillar_1.6.2        backports_1.2.1    
##  [7] quantreg_5.86       glue_1.4.2          digest_0.6.27      
## [10] RColorBrewer_1.1-2  colorspace_2.0-2    sandwich_3.0-1     
## [13] htmltools_0.5.2     plyr_1.8.6          conquer_1.0.2      
## [16] pkgconfig_2.0.3     haven_2.4.3         purrr_0.3.4        
## [19] mvtnorm_1.1-2       scales_1.1.1        jpeg_0.1-9         
## [22] MatrixModels_0.5-0  proxy_0.4-26        htmlTable_2.2.1    
## [25] tibble_3.1.4        generics_0.1.0      ellipsis_0.3.2     
## [28] TH.data_1.0-10      withr_2.4.2         nnet_7.3-16        
## [31] crayon_1.4.1        polspline_1.1.19    evaluate_0.14      
## [34] fansi_0.5.0         nlme_3.1-152        class_7.3-19       
## [37] forcats_0.5.1       foreign_0.8-81      tools_4.1.1        
## [40] data.table_1.14.0   hms_1.1.0           mitools_2.4        
## [43] lifecycle_1.0.0     matrixStats_0.60.1  multcomp_1.4-17    
## [46] stringr_1.4.0       munsell_0.5.0       cluster_2.1.2      
## [49] e1071_1.7-9         compiler_4.1.1      tinytex_0.33       
## [52] rlang_0.4.11        rstudioapi_0.13     htmlwidgets_1.5.4  
## [55] base64enc_0.1-3     gtable_0.3.0        codetools_0.2-18   
## [58] DBI_1.1.1           R6_2.5.1            gridExtra_2.3      
## [61] zoo_1.8-9           fastmap_1.1.0       utf8_1.2.2         
## [64] stringi_1.7.4       Rcpp_1.0.7          vctrs_0.3.8        
## [67] rpart_4.1-15        png_0.1-7           tidyselect_1.1.1   
## [70] xfun_0.26
```
