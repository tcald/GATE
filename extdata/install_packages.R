#!/usr/bin/env Rscript
#install required R packages, from Finnge/SAIGE-IT

req_packages <- c("R.utils", "Rcpp", "RcppParallel", "RcppArmadillo", "data.table", "RcppEigen", "Matrix", "methods", "BH", "optparse", "SPAtest", "SKAT", "roxygen2", "rversions","devtools", "MASS")
for (pack in req_packages) {
    if(!require(pack,character.only = TRUE)) {
        install.packages(pack, repos = "http://cran.us.r-project.org")
    }
}


devtools::install_github("leeshawn/MetaSKAT")
