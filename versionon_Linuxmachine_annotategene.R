install.packages("remotes")
remotes::install_github("LTLA/csaw")
library("csaw")
library("dplyr")
library(rtracklayer)

ASMdame <- import("~/Documents/mykolasandi/C2.DAME_ASM.Gene.list.bedgraph", format = "bedgraph")
Maxima <- findMaxima(ASMdame,  range=50, metric=runif(length(ASMdame)))



asmdameDF <- as.data.frame(ASMdame)
peaks <- cbind(asmdameDF,Maxima)
#now remove the false peaks 
#check the row name to see if it is correct for the data. 

truepeaks <- filter(peaks, Maxima==TRUE)
no0zeropeaks <- filter(truepeaks, truepeaks$score>0.1)
#check if truepeaks is grange or regular df. 


#try to plot 
library("ggplot2")


ggplot(no0zeropeaks ,aes(x = NA., y = score))+
  geom_boxplot(notch = FALSE, outlier.alpha = 0.5, outlier.colour = "red")+
  stat_summary(fun.y = mean, geom = "point",
               shape = 14, size = 2.5, color = "#FC4E07")+
  scale_x_discrete(limits=c("SNRPN", "IGF2", "TUBB8"))

#Second maxima run
abovezeropoint1 <- import("~/Documents/mykolasandi/C2.DAME_ASM.Gene.list.above0.1.bedgraph", format = "bedgraph")
BIngo <- findMaxima(abovezeropoint1,  range=50, metric=runif(length(abovezeropoint1)))
bingoDF <- as.data.frame(abovezeropoint1)
peaks <- cbind(bingoDF,BIngo)
#now remove the false peaks 
#check the row name to see if it is correct for the data. 

newpeaks <- filter(peaks, Maxima==TRUE)
