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

The main directory contains a `Makefile` which can be run to obtain all the output for the course and compile the slides.  This makefile encodes the dependencies between the different files described above. For those not familiar with makefiles, we have included a "Make-like" file, `rmaster_source.R` which indicates the order in which the .R files should be sourced.

### Session Info
The slides for this course were compiled with [RStudio](http://www.rstudio.com/) (v. 1.4.1717) with the following R session. The list of packages used throughout the course is maintained in `library_7485_8485.R`; the version of these packages is listed below. 


```
## R version 4.1.1 (2021-08-10)
## Platform: x86_64-apple-darwin17.0 (64-bit)
## Running under: macOS Big Sur 11.4
## 
## Matrix products: default
## LAPACK: /Library/Frameworks/R.framework/Versions/4.1/Resources/lib/libRlapack.dylib
## 
## locale:
## [1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8
## 
## attached base packages:
## [1] stats     graphics  grDevices utils     datasets  methods   base     
## 
## other attached packages:
## [1] knitr_1.34     rmarkdown_2.11
## 
## loaded via a namespace (and not attached):
##  [1] compiler_4.1.1  magrittr_2.0.1  fastmap_1.1.0   htmltools_0.5.2 tools_4.1.1     yaml_2.2.1     
##  [7] jquerylib_0.1.4 stringi_1.7.4   stringr_1.4.0   xfun_0.26       digest_0.6.27   rlang_0.4.11   
## [13] evaluate_0.14
```
