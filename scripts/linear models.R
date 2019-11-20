dataW = read.csv("~/Desktop/R/workshopR_UI/Data/Data_DSC.csv", header = TRUE)

wilcox.test(dataW$X1, dataW$X2, paired = TRUE, alternative = "two.sided")

#Uji man whitney
wilcox.test(dataW$X1, dataW$X2, paired = FALSE, alternative = "two.sided")

#Uji Kolgomorov smirnov (data >50)
dataR = read.csv("~/Desktop/R/workshopR_UI/data/Data_Regeresi.csv", header = TRUE)

summary(dataR)

ks.test(dataR$Y, "pnorm", mean=mean(dataR$Y), sd=sd(dataR$Y))
shapiro.test(dataR$Y, "pnorm", mean=mean(dataR$Y), sd=sd(dataR$Y))



hist(dataR$Y, main="Histogram data Y", xlab="Tumor", border="chocolate", col="chocolate1")


#correlation plots
library(car)
plot(X,Y,main="Scatter Plot",xlab="X", ylab="TMFD", pch=19)
#X1
X1 <- scatterplot(dataR$Y ~ dataR$X1,data=dataR,smooth=FALSE)

#X2
X2 <- scatterplot(dataR$Y ~ dataR$X2,data=dataR,smooth=FALSE)
#X3
X3 <- scatterplot(dataR$Y ~ dataR$X3,data=dataR,smooth=FALSE)

#LINEAR MODELS
library(stats)

model1=lm(dataR$Y~dataR$X1+dataR$X2)
summary(model1)
model2=lm(dataR$Y~dataR$X1+dataR$X3)
summary(model2)
model3=lm(dataR$Y~dataR$X2+dataR$X3)
summary(model3)
model4 = lm(dataR$Y~.,data=dataR)
summary(model4)

#kita mengetahui bahwas X3 dan X2 mengalami multikolirearitas, maka salahs atu dikeluarkan, disini
#X3 dikeluarkan. 
vif(model4)
vif(model1)
vif(model2)
vif(model3)


library(Hmisc)

#autokorelasi TEST

library(lmtest)
install.packages("lmtest")
dwtest(model4)

library(orcutt)
install.packages("orcutt")
cochrane.orcutt(model1, convergence = 8, max.iter=100)
cochrane.orcutt(model4, convergence = 8, max.iter=100)

#heteroskasdisitas (2)
library(lmtest)
bptest(model1, data=dataR)
bptest(model4, data=dataR)

#Generalized linear models
dataGLM=read.csv("~/Desktop/R/workshopR_UI/data/Data_GLM.csv", header = TRUE)
library(glm2)
install.packages("glm2")
dataGLM
model1_glm <- glm(dataGLM$Y~dataGLM$X1,
                  binomial)
model2_glm <- glm(dataGLM$Y~dataGLM$X2,
                  binomial)
model3_glm <- glm(dataGLM$Y~dataGLM$X3,
                  binomial)
summary(model1_glm)
summary(model2_glm)
summary(model3_glm)
