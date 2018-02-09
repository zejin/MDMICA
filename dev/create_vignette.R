library(devtools)

# creare a vignette
if (.Platform$OS.type == "windows") {
  setwd("C:/Academia/Cornell/CS 6784/2016 Fall/Project")
} else {
  setwd("~")
}

devtools::use_vignette("MDMICA", pkg = "MDMICA")
