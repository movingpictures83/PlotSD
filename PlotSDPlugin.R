## ----para, echo = FALSE, results='hide'---------------------------------------
BiocStyle::markdown()
knitr::opts_chunk$set(dev="png",fig.show="hold",
               fig.width=4,fig.height=4.5,fig.align="center",
               message=FALSE,collapse=TRUE)

## ----library------------------------------------------------------------------
library(rnaseqcomp)

input <- function(inputfile) {
   myDat <<- readRDS(inputfile)
}

run <- function() {}

output <- function(outputfile) {
pdf(outputfile)
## ----sd-----------------------------------------------------------------------
plotSD(myDat,ylim=c(0,1.4))
#print(str(myDat))
write.csv(myDat@quantData$rsem, paste(outputfile, "csv", sep="."))
}
