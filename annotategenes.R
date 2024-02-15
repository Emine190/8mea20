Maxima <- findMaxima(ASMdame,  range=10, metric=runif(length(regions)))

peaks <- cbind(ASMdame[1:3] ,Maxima)
#now remove the false peaks 
#check the row name to see if it is correct for the data. 

truepeaks <- filter(peaks, z==TRUE)

#check if truepeaks is grange or regular df. 

install.pacakge("ggplot2")
#load in the gene_names list
library(GenomicRanges)

genenames.gr <- import("gene_names", Format = "bed")


# what regions overlap what genes? HAve to be grange object for the code to work. 
overlapGenes <- findOverlaps(truepeaks, genenames.gr)

# Return any genes with an overlap. More info about this code on https://www.biostars.org/p/147916/ 
# Convert the resulting "Hits" object to a data frame
# and use it as an index
overlapGenes.df <- as.data.frame(overlapGenes)
names(genes.gr[overlapGenes.df$subjectHits])

# extract the regions that hit genes
regionsWithHits <- as.data.frame(regions.gr[overlapGenes.df$queryHits])
# add the names of the genes
regionsWithHits$genes <- names(genes.gr)[overlapGenes.df$subjectHits]

# Some segments might not overlap any gene.
# Find the distance to the nearest gene
distanceToNearest(truepeaks, genes.gr)

# if your genes and segments were in a bed file you could easily import them
library(rtracklayer)
regions <- import.bed("myRegions.bed",asRangedData=FALSE)
genes <- import.bed("myGenes.bed",asRangedData=FALSE)
#might not be needed depends.

#try to plot 
library("ggplot2")


ggplot(ToothGrowth, aes(x = genename, y = ASM_score))+
geomboxplot(notch = TRUE, fill = "lightgray")+
  stat_summary(fun.y = mean, geom = "point",
               shape = 18, size = 2.5, color = "#FC4E07")+
scale_x_discrete(limits=c("GNAS", "SNRPN", "H19/IGF2"))

