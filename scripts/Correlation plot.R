#writing data
x=c(15.8,22.3,14.5,15.7,26.8,24,21.8,23,29.3,20.5)
y=c(17.2,20.3,14.2,18.5,28,24.5,20.3,25.4,27.5,19.7)
data2=data.frame(x,y)

hist(data2)
hist(data2$x, main="Histogram data x", xlab="Tumor", border="chocolate", col="chocolate1")



shapiro.test(data2$x)
#interptation, based on P value > 0.05
#__________________________________________________________________________________________________
##Scatter plots

datascatter <- read.csv("~/Desktop/R/workshopR_UI/Data/data_scatter.csv", header = TRUE)
datascatter

plot(datascatter$X, datascatter$Y, main ="Scatter Plot", xlab="X", ylab="TMFD", pch=19)
#both have linear correlation
