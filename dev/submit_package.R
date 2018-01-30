library(devtools)

# submit the source package to cran and record the time
if (.Platform$OS.type == "windows") {
  setwd("C:/Academia/Cornell/CS 6784/2016 Fall/Project/MDMICA")
} else {
  setwd("~")
}

system.time(devtools::release("MDMICA", check = TRUE))
