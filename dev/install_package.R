library(devtools)

# install a package from the source package
if (.Platform$OS.type == "windows") {
  setwd("C:/Academia/Cornell/CS 6784/2016 Fall/Project")
} else {
  setwd("~")
}

devtools::install("MDMICA", build_vignettes = TRUE)
