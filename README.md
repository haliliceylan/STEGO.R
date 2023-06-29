
<!-- README.md is generated from README.Rmd. Please edit that file -->

# STEGO.R

<!-- badges: start -->
<!-- badges: end -->

The goal of STEGO.R is to …

## requirements
#### MAC:
Install R: https://cran.r-project.org/bin/macosx/ 
Install RStudio: [https://posit.co/download/rstudio-desktop/](https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-2022.07.2-576.dmg)
install XQuatz: https://www.xquartz.org

#### Windows:
Install R: https://cran.r-project.org
Install RStudio: https://posit.co/download/rstudio-desktop/
Install Rtools https://cran.r-project.org/bin/windows/Rtools/


## Installation

You can install the development version of STEGO.R from
[GitHub](https://github.com/KerryAM-R/STEGO.R) with:

``` r
install.packages("devtools")

if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

devtools::install_github("KerryAM-R/STEGO.R")
```

## Example

``` r
library(STEGO.R)

STEGO.R::Load_required_packages()
STEGO.R::runSTEGO()

```
