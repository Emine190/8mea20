install.pacakge("ggplot2")
#source for the code https://www.biostars.org/p/147916/
library(GenomicRanges)
# generate 10 random segments
regions.gr <- import("filepath", Format = "bedgraph")

# generate 5 random genes
fiveGeneNames <- paste(sample(letters,5), sample(1:100,5), sep="")
genes.gr <- import("genefile", format = "bedgraph")

# what regions overlap what genes?
overlapGenes <- findOverlaps(regions.gr, genes.gr)

# Return any genes with an overlap.
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
distanceToNearest(regions.gr, genes.gr)

# if your genes and segments were in a bed file you could easily import them
library(rtracklayer)
regions <- import.bed("myRegions.bed",asRangedData=FALSE)
genes <- import.bed("myGenes.bed",asRangedData=FALSE)

