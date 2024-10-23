# see https://stegor.readthedocs.io/en/latest/index.html for more details on the tutorial to follow through.
# make sure that you have installed R, RStudio and the complier from either Quartz or Rtools. Install these before opening R as the changes may not be registered otherwise.

# This is to make sure with installing from source is set to the g++ compiler
Sys.setenv("CXX" = "g++")

# installing STEGO.R
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("DropletUtils")
BiocManager::install("SingleCellExperiment")
BiocManager::install("SummarizedExperiment")
BiocManager::install("ComplexHeatmap")

if (!require("devtools", quietly = TRUE))
  install.packages("devtools")

if (!require("usethis", quietly = TRUE))
  install.packages("usethis")


# Install the devtools package if not already installed
library(devtools)
# gitcreds::gitcreds_set()
# Install the GitHub repository
install_local(".")


# install STEGO.R with Devtools
# if you get asked about installing from SOURCE, select NO.
# if asked about updating the packages, select either 1 for all, or 3 for none.
# also run this line to check for updates
devtools::install_local("..")

# import all of the fonts to your system. Will only need to be done the first time.
require(extrafont)
font_import(prompt=FALSE)

# you many need to add in the git_token, and the Renviorn is opened with the following code.
usethis::edit_r_environ()