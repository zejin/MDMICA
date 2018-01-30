library(devtools)

# resubmit the source package to cran 
if (.Platform$OS.type == "windows") {
  setwd("C:/Academia/Cornell/CS 6784/2016 Fall/Project/MDMICA")
} else {
  setwd("~")
}

submit_cran("MDMICA")
