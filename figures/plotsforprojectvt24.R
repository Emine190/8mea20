install.packages("readxl")
install.packages("dplyr")
install.packages("ggplot2")
install.packages("fortify")

library(ggplot2)
library(readxl)
library(dplyr)
library(fortify)
Site_Region <- read_excel("~/Downloads/8mea20_Site_Region.xlsx")

Methylation_Site_REgion<-read_excel("~/Downloads/8mea20_Site_Region.xlsx")


Site_region.df <- as.data.frame(Site_Region)

g <- ggplot(Site_Region, aes(x=Data))
 
g + geom_bar(aes())
g + geom_point()


p <- ggplot(data = Site_Region)

p + geom_bar(aes(y=Data))+
  scale_x_log10()

p + geom_point(aes(y= Data, x = NumberofsitesinCriteria)) +
  scale_x_log10()



ggplot(Methylation_Site_REgion, aes(x=Data_Methylation, y= SitesinMethylation, fill= Data_Methylation))+
  geom_col()+
  scale_fill_brewer(palette = "Set1")


ggplot(Methylation_Site_REgion, aes(x=Data_M_TupleASM, y= SitesinCriteria, fill=Data_M_TupleASM))+
  geom_col()+
  scale_fill_brewer(palette = "Set1")


ggplot(Methylation_Site_REgion, aes(x=Methylation_TupleASM_Sites, y= Sites, fill= Methylation_TupleASM_Sites))+
  geom_col()+
  scale_fill_brewer(palette = "Set1")

ggplot(Methylation_Site_REgion, aes(x=Methylation_TupleASM_Region, y= Regions, fill=Methylation_TupleASM_Region ))+
  geom_col()+
  scale_fill_brewer(palette = "Set1")


ggplot(Methylation_Site_REgion, aes(x= firstMethylationSubset, y= Sites_Regions, fill="30to70%" ))+
  geom_col()+
  scale_fill_brewer(palette = "Accent")


ggplot(Methylation_Site_REgion, aes(x= SecondMethylationSubset, y= Sites3565, fill="35to65%" ))+
  geom_col()+
  scale_fill_brewer(palette = "Dark2")


ggplot(Methylation_Site_REgion, aes(x= thirdMethylationSubset, y= Sites4060, fill="40to60%" ))+
  geom_col()+
  scale_fill_brewer(palette = "Set1")

