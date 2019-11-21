install.packages("ROCR")
library(ROCR)
list.files()
getwd()
#setwd("c:/Program Files/Rstudio/R/Dataset")
setwd("C:/Users/VIKRANTH BM/Documents")
getwd()
grep(".csv",list.files(),value = T)
var1<-read.csv("Churn_Modelling.csv")
var1

modellogit<-glm(Exited ~ CreditScore+Age+Tenure+Balance+NumOfProducts+HasCrCard+IsActiveMember+EstimatedSalary,data=var1,family = binomial(link = "logit"))
modellogit
summary(modellogit)
modeloptimiz<-glm(Exited ~ Age+Balance+IsActiveMember,data=var1,family = binomial(link = "logit"))
modeloptimiz
modeloptimiz$null.deviance
modeloptimiz$deviance
age<-var1$Age
Bal<-var1$Balance
isAct<-var1$IsActiveMember
exit<-var1$Exited
var2<-cbind.data.frame(age,Bal,isAct,exit)
var2


#Using Rocr Package
pred<-predict(modeloptimiz,type="response")
predobj<-prediction(pred,var2$exit)
predobj
rocobj<-performance(predobj,measure="tpr",x.measure="fpr")
aucobj=performance(predobj,measure="auc")
rocobj
aucobj
class(aucobj)
plot(rocobj,main=paste("Area under curve",round(aucobj@y.values[[1]],4)))
aucobj@y.values
