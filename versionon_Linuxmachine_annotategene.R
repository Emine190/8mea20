install.packages("remotes")
remotes::install_github("LTLA/csaw")
library("csaw")
library("dplyr")
library(rtracklayer)


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


{ControlMaxima <-findMaxima(R1ASM_Genenames.bed,  range=50, metric=runif(length(R1ASM_Genenames.bed)))
Random1ASMdf <- as.data.frame(R1ASM_Genenames.bed)
control1peaks <- cbind(Random1ASMdf,ControlMaxima)
control1truepeaks <- filter(control1peaks, ControlMaxima==TRUE)}


cotrolmax <- findMaxima(R10ASM_Genenames.bed, range = 50, metric =(R10ASM_Genenames.bed$score))
controldf <- as.data.frame(R10ASM_Genenames.bed)


{ASMdame <- import("~/Documents/mykolasandi/Emil/bedtoolsthings/C2ASMNAMESIMP.bed", format = "bedgraph")
Maxima <- findMaxima(ASMdame,  range=10, metric=(ASMdame$score))
asmdameDF <- as.data.frame(ASMdame)
peaks <- cbind(asmdameDF,Maxima)}
#now remove the false peaks 
#check the row name to see if it is correct for the data. 

truepeaks <- filter(peaks, Maxima==TRUE)
no0zeropeaks <- filter(truepeaks, truepeaks$score>0.01)
#check if truepeaks is grange or regular df. 

nozeropeaks_control <- filter(asmdameDF, asmdameDF$score>0.25)
#try to plot 
library("ggplot2")


ggplot(no0zeropeaks ,aes(x = NA., y = score))+
  geom_boxplot(notch = FALSE, outlier.alpha = 0.5, outlier.colour = "red")+
  stat_summary(fun.y = mean, geom = "point",
               shape = 14, size = 2.5, color = "#FC4E07")+
  scale_x_discrete(limits=c("IGF2_DMR0", "AC090602.2,SNRPN", "GNAS_Ex1A", "GNAS"))+
  geom_jitter()

ggplot(control1peaks ,aes(x = NA., y = score))+
  geom_boxplot(notch = FALSE, outlier.alpha = 0.5, outlier.colour = "red")+
  stat_summary(fun.y = mean, geom = "point",
               shape = 14, size = 2.5, color = "#FC4E07")#+
 # scale_x_discrete(limits=c("GAD2", "SFMBT2", "SNAP25-AS1", "GABRB3"))+
  #geom_jitter()

ggplot(nozeropeaks_control ,aes(x = NA., y = score))+
  geom_boxplot(notch = FALSE, outlier.alpha = 0.5, outlier.colour = "red")+
  stat_summary(fun.y = mean, geom = "point",
               shape = 14, size = 2.5, color = "#FC4E07")+
  scale_x_discrete(limits=c("ELK3", "GNAS", "SNRPN_intragenic_CpG32", "SNRPN"))+
  geom_jitter()




#ignore below this as of now 23/2 - 2024
#Second maxima run
abovezeropoint1 <- import("~/Documents/mykolasandi/C2.DAME_ASM.Gene.list.above0.1.bedgraph", format = "bedgraph")
BIngo <- findMaxima(abovezeropoint1,  range=50, metric=runif(length(abovezeropoint1)))
bingoDF <- as.data.frame(abovezeropoint1)
peaks <- cbind(bingoDF,BIngo)
#now remove the false peaks 
#check the row name to see if it is correct for the data. 

newpeaks <- filter(peaks, BIngo==TRUE)


ggplot(no0zeropeaks ,aes(x = NA., y = score))+
  geom_boxplot(notch = FALSE, outlier.alpha = 0.5, outlier.colour = "red")+
  stat_summary(fun.y = mean, geom = "point",
               shape = 14, size = 2.5, color = "#FC4E07")
#  scale_x_discrete(limits=c("SNRPN", "GNAS", "TUBB8"))


#Need to write a function to get a table of mean of each gene/region in the dataset for comparision. 
library(dplyr)
resultsofmean <- mean(no0zeropeaks$score, no0zeropeaks$NA.)

resultmeans<- no0zeropeaks %>%
  group_by(NA.)%>%
  dplyr::summarize(Mean = mean(score), .groups = 'drop')

cotrol1means<- control1peaks %>%
  group_by(NA.)%>%
  dplyr::summarize(Mean = mean(score), .groups = 'drop')
  
#This par above now works as intended now just need to visualize it as the table are diffucult to read. 

############Ideas of how to explain the data. 
huh<-ggplot(Random1ASMdf, aes(x=score)) +
  geom_density()+ xlim(0.25,1)
  huh2 <- huh + geom_density(data = asmdameDF, aes(x=score)) + xlim(0.25,1)
  huh2
  
