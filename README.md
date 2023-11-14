
<!-- README.md is generated from README.Rmd. Please edit that file -->

# STEGO.R

<!-- badges: start -->
<!-- badges: end -->

For a complete Tutorial of Using STEGO please go to [Tutorial](https://stegor-documents.readthedocs.io/en/latest/index.html)

## requirements
#### MAC:
Install [R] (https://cran.r-project.org/bin/macosx/)

Install RStudio: [https://posit.co/download/rstudio-desktop/](https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-2022.07.2-576.dmg)

install [XQuatz](https://www.xquartz.org)

#### Windows:
Install [R](https://cran.r-project.org)

Install RStudio: https://posit.co/download/rstudio-desktop/

Install Rtools https://cran.r-project.org/bin/windows/Rtools/

#### Computer requirements
Recommended to use a 64 bit OS with 16GB of RAM, but ideally 32GB of RAM.

## Installation

For detailed instruction on installing and running STEGO go to the [readthedoc](https://stegor-documents.readthedocs.io/en/latest/index.html)

For those more familiar with the R and RStudio, you can install the current version of STEGO.R with:
``` r
install.packages("devtools")

if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

devtools::install_github("KerryAM-R/STEGO.R")
```

## How to run the Shiny App

``` r
library(STEGO.R)

STEGO.R::Load_required_packages()
STEGO.R::runSTEGO()
```


