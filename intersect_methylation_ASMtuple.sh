
# This will intersect the Methylation and Tuple ASM and put it to in the new folder for easy sorting. 

bedtools intersect -wa -a /emil/C2TupleDAME.bedgraph -b /Emil/intersect_of_Methylation/C2.30to70methylation.bedgraph > ./intersect_of_methylation_tupleASM/methylation3565_DAMEtupleASMwa.bedgraph &

#
bedtools intersect -wa -a /emil/C2TupleDAME.bedgraph -b /Emil/intersect_of_Methylation/C2.35to65methylation.bedgraph > ./intersect_of_methylation_tupleASM/methylation3565_DAMEtupleASMwa.bedgraph &

#
bedtools intersect -wa -a /emil/C2TupleDAME.bedgraph -b /Emil/intersect_of_Methylation/C2.40to60methylation.bedgraph > ./intersect_of_methylation_tupleASM/methylation3565_DAMEtupleASMwa.bedgraph &



