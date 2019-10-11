#library(BSDA)
library(visualize)
#data1 = c(54.2 ,50.4 ,44.2 ,49.7 ,55.4 ,57.0 ,58.2 ,56.6 ,61.9 ,57.5 ,53.4 )
#t.test(data1,mu=50)
#qt(p=0.05/2,df = 10,lower.tail =FALSE)
#visualize.t(stat=c(-3.097,3.097),df=10,section = "tails")


zvalue = (152-150)/(2/sqrt(100))
pnorm(zvalue)
visualize.norm(stat = zvalue,mu=0,sd=1,section = "upper")
qnorm(0.95)#if the p value is low then null hypothesis is rejected and the mean is not changed
?dnorm()
dnorm(zvalue,mean =0,sd=1,log = T)

zvalue = (11-10.2)/(2.1/sqrt(55))
zvalue
pnorm(zvalue)
visualize.norm(stat = zvalue,mu = 0,sd =1,section = "upper")#null hypothesis is rejected  

