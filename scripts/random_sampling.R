install.packages("sampling")

dataconfidence <- read.csv("~/Desktop/R/workshopR_UI/Data/Data Confidance.csv", header = TRUE)

library(sampling)
sampel=srswor(30,155)

summary(sampel)

sampelfix=data.frame(sampel)

t.test(sampelfix,conf.level=0.95)

