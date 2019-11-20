data <- read.csv("~/Desktop/R/workshopR_UI/Data/data_uji_validitas.csv", header = TRUE)
data

library(Hmisc)
cor(data, method=c("pearson"))
korelasi <- rcorr(as.matrix(data))
korelasi
#Interpretation
#If P value all below 0.05 it is valid

dataReliabel <- read.csv("~/Desktop/R/workshopR_UI/Data/data_reliabilitas.csv", header = TRUE)
dataReliabel
install.packages("ltm")
library(ltm)
cronbach.alpha(dataReliabel, standardized = FALSE, CI = FALSE, probs = c(0.025, 0.975), B= 1000, na.rm = FALSE)
#the meaning of this data is this was reliable becaise > 0.6