library(devtools)

# set up a basic .travis.yml config file
if (.Platform$OS.type == "windows") {
  setwd("C:/Academia/Cornell/CS 6784/2016 Fall/Project/MDMICA")
} else {
  setwd("~")
}

devtools::use_travis("MDMICA")

