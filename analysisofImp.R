install.packages("remotes")
remotes::install_github("LTLA/csaw")
library("csaw")
library("dplyr")
library(rtracklayer)

ASMdame <- import("~/bedtoolsthings/ASMNAMESIMP.bed", format = "bedgraph")
Maxima <- findMaxima(ASMdame,  range=50, metric=runif(length(ASMdame)))


myFiles <- list.files(pattern="*_Genenames.bed")
for (i in 1:length(myFiles)) assign(myFiles[i], import(myFiles[i], format = "bedgraph")) 

for (i in 1:length(myFiles)) assign(myFiles[i], findMaxima(myFiles[i], range = 50, metric = metric))

for (i in seq_along(myFiles)){
  input_files <- myFiles[i]
  #Read the bed file
  bed_data <- import(input_files, format = "begraph")
  results <-findMaxima(bed_data , range = 50, metric = runif(length(input_files)))
  #store results in list
  
}

cotrolmax <- findMaxima(R10ASM_Genenames.bed, range = 50, metric = runif(length(R10ASM_Genenames.bed)))
controldf <- as.data.frame(R10ASM_Genenames.bed)
asmdameDF <- as.data.frame(ASMdame)
peaks <- cbind(asmdameDF,Maxima)
#now remove the false peaks 
#check the row name to see if it is correct for the data. 

truepeaks <- filter(peaks, Maxima==TRUE)
no0zeropeaks <- filter(truepeaks, truepeaks$score>0.1)
#check if truepeaks is grange or regular df. 

nozeropeaks_control <- filter(asmdameDF, asmdameDF$score>0.25)
#try to plot 
library("ggplot2")


ggplot(no0zeropeaks ,aes(x = NA., y = score))+
  geom_boxplot(notch = FALSE, outlier.alpha = 0.5, outlier.colour = "red")+
  stat_summary(fun.y = mean, geom = "point",
               shape = 14, size = 2.5, color = "#FC4E07")+
  scale_x_discrete(limits=c("SNRPN", "AC090602.2,SNRPN", "GNAS_Ex1A", "GNAS"))+
  geom_jitter()


ggplot(nozeropeaks_control ,aes(x = NA., y = score))+
  geom_boxplot(notch = FALSE, outlier.alpha = 0.5, outlier.colour = "red")+
  stat_summary(fun.y = mean, geom = "point",
               shape = 14, size = 2.5, color = "#FC4E07")+
  scale_x_discrete(limits=c("ELK3", "GNAS", "SNRPN_intragenic_CpG32", "SNRPN"))+
  geom_jitter()




#ignore below this as of now 23/2 - 2024
#Second maxima run
abovezeropoint1 <- import("~/DAME_ASM.Gene.list.above0.1.bedgraph", format = "bedgraph")
BIngo <- findMaxima(abovezeropoint1,  range=50, metric=runif(length(abovezeropoint1)))
bingoDF <- as.data.frame(abovezeropoint1)
peaks <- cbind(bingoDF,BIngo)
#now remove the false peaks 
#check the row name to see if it is correct for the data. 

newpeaks <- filter(peaks, BIngo==TRUE)


ggplot(newpeaks ,aes(x = NA., y = score))+
  geom_boxplot(notch = FALSE, outlier.alpha = 0.5, outlier.colour = "red")+
  stat_summary(fun.y = mean, geom = "point",
               shape = 14, size = 2.5, color = "#FC4E07")+
  scale_x_discrete(limits=c("SNRPN", "GNAS", "TUBB8"))

