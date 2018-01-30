library(devtools)

# add a package to imports
if (.Platform$OS.type == "windows") {
  setwd("C:/Academia/Cornell/CS 6784/2016 Fall/Project/MDMICA")
} else {
  setwd("~")
}

args <- commandArgs(TRUE)
devtools::use_package(args[1], type = "Imports", pkg = "MDMICA")
