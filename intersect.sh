#this file needs to be edited to show how it actually was done as the RandomASM approach is scrapped. 


bedtools intersect -wa -a /goodfilewithASM.bedgraph -b /randomintervals/r1 > ./randomwithASM/randomASM1
bedtools intersect -wa -a /goodfilewithASM.bedgraph -b /randomintervals/r1 > ./randomwithASM/randomASM2

#CAN be repeated 18 more time for 20 files for more statisctial singnificance. 
# the new intersect used for other things.
#get the gene names for the regions if there are any 

bedtools intersect -wao -a /home/filepath/randomwithASM/RandomASM1 -b /home/filepath/Gene.List.bed > ./RandomASMwithGenenames/R1ASM_Genenames
bedtools intersect -wao -a /home/filepath/randomwithASM/RandomASM2 -b /home/filepath/Gene.List.bed > ./RandomASMwithGenenames/R2ASM_Genenames
#CAN be repeated 18 more time for 20 files for more statisctial significance. 

# here the newe intersects will be made. 


