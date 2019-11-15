# Assignment-05

if (!require("data.table")) install.packages("data.table")
library("data.table")

ptm <- proc.time()
header <- read.table("AAA.csv", header = TRUE, sep=",", nrow = 1)
DF <- fread("AAA.csv", skip=1, sep=",", header=FALSE, data.table=FALSE)
setnames(DF, colnames(header))
rm(header)
FREAD_READ_TIME <- (proc.time() - ptm)
FREAD_READ_TIME
