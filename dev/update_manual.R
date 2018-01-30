# create the reference manual
if (.Platform$OS.type == "windows") {
  setwd("C:/Academia/Cornell/CS 6784/2016 Fall/Project/MDMICA")
} else {
  setwd("~")
}

system("R CMD Rd2pdf MDMICA")
system("mv MDMICA.pdf MDMICA/dev/doc")
# system("R CMD check rddapp")
