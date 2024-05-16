#Run this for the intersect of ASM MEthylation and ASS. Check the pointers for the files so it lands in the correct folders. 
bedtools intersect -wa -a /home/student/Documents/mykolasandi/Emil/bedtoolsthings/intersect_of_methylation_ASM_ASS/methylation3070_DAMEtupleASM2wa.bedgraph -b /home/student/Documents/mykolasandi/Emil/bedtoolsthings/intersect_of_methylation_ASM_ASS/C2.BS-SNPer.ass.true.al1.bedgraph > ./intersect_Methylation_ASMtuple_ASS/intersect_of_methylation_ASM_ASS/methylation3070_DAMEtupleASM_ASS.bedgraph

#
bedtools intersect -wa -a /home/student/Documents/mykolasandi/Emil/bedtoolsthings/intersect_of_methylation_ASM_ASR/methylation3565_DAMEtupleASMwa.bedgraph -b /home/student/Documents/mykolasandi/Emil/bedtoolsthings/intersect_of_methylation_ASM_ASS/C2.BS-SNPer.ass.true.al1.bedgraph > ./intersect_Methylation_ASMtuple_ASS/intersect_of_methylation_ASM_ASS/methylation3565_DAMEtupleASM_ASS.bedgraph

#
bedtools intersect -wa -a /home/student/Documents/mykolasandi/Emil/bedtoolsthings/intersect_of_methylation_ASM_ASR/methylation4060_DAMEtupleASMwa.bedgraph -b /home/student/Documents/mykolasandi/Emil/bedtoolsthings/intersect_of_methylation_ASM_ASS/C2.BS-SNPer.ass.true.al1.bedgraph > ./intersect_Methylation_ASMtuple_ASS/ntersect_of_methylation_ASM_ASS/methylation4060_DAMEtupleASM_ASS.bedgraph
