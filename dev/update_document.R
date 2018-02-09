library(devtools)

# generate documents in .Rd from comments
if (.Platform$OS.type == "windows") {
  setwd("C:/Academia/Cornell/CS 6784/2016 Fall/Project")
} else {
  setwd("~")
}

devtools::document("MDMICA")
