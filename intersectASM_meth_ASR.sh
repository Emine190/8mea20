#Run this for the intersect of ASM MEthylation and ASR. Check the pointers for the files so it lands in the correct folders. 
bedtools intersect -wa -a /Emil/intersect_of_methylation_ASM_ASR/methylation3070_DAMEtupleASM2wa.bedgraph -b /Emil/intersect_of_methylation_ASM_ASR/C2.BS-SNPer.asr.true.al1.bedgraph > ./intersect_Methylation_ASMtuple_ASR/intersect_of_methylation_ASM_ASR/methylation3070_DAMEtupleASM_ASR.bedgraph

#
bedtools intersect -wa -a /Emil/intersect_of_methylation_ASM_ASR/methylation3565_DAMEtupleASMwa.bedgraph -b /Emil/intersect_of_methylation_ASM_ASR/C2.BS-SNPer.asr.true.al1.bedgraph > ./intersect_Methylation_ASMtuple_ASR/intersect_of_methylation_ASM_ASR/methylation3565_DAMEtupleASM_ASR.bedgraph

#
bedtools intersect -wa -a /Emil/intersect_of_methylation_ASM_ASR/methylation4060_DAMEtupleASMwa.bedgraph -b /Emil/intersect_of_methylation_ASM_ASR/C2.BS-SNPer.asr.true.al1.bedgraph > ./iintersect_Methylation_ASMtuple_ASR/ntersect_of_methylation_ASM_ASR/methylation4060_DAMEtupleASM_ASR.bedgraph
