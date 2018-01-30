library(devtools)

# create a test workflow
if (.Platform$OS.type == "windows") {
  setwd("C:/Academia/Cornell/CS 6784/2016 Fall/Project/MDMICA")
} else {
  setwd("~")
}

devtools::use_testthat("MDMICA")
