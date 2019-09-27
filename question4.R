install.packages("ggplot2")
install.packages("gcookbook")
install.packages("MASS")

library(MASS)
library(ggplot2)
library(gcookbook)


cabbage_exp
barplot(cabbage_exp$Weight,names.arg = cabbage_exp$Date, col = c("blue","orange"),beside=TRUE)

birthwt
?boxplot
boxplot(x=birthwt$age)
