library(devtools)

# create a source package
if (.Platform$OS.type == "windows") {
  setwd("C:/Academia/Cornell/CS 6784/2016 Fall/Project")
} else {
  setwd("~")
}

devtools::create("MDMICA")
