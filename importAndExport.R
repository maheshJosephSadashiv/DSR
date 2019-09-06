# 1a
getwd()
setwd("C:/Documents and Settings/exam/Desktop")
myData = read.csv("mahesh.csv",header=T)
summary(myData)
class(myData)
head(myData)
plot(Unit.Cost~Total.Cost,data = myData)


#1b
myData= read.delim("mahesh.txt",header= T,sep ="\t")
myData
newCol = 1:100
newMyData = cbind(myData,newCol)
newMyData
write.table(newMyData, file = "newMahesh.txt", sep = "\t",row.names = F, col.names = T)

#1c
