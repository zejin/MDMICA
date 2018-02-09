library(devtools)

# check the source package and record the time
if (.Platform$OS.type == "windows") {
  setwd("C:/Academia/Cornell/CS 6784/2016 Fall/Project")
} else {
  setwd("~")
}

system.time(devtools::build_win("MDMICA", version = "R-release"))
system.time(devtools::build_win("MDMICA", version = "R-devel"))