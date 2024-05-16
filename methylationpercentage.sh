


#this is just for setting the methylation ranges that are used in previous studies See the Inscriptome paper. 

LC_NUMERIC=C awk -v OFS='\t' '{ if (70<$4>30) print $0 }' C2.CpG.Methylation.bedgraph > C2.30to70methylation.bedgraph


LC_NUMERIC=C awk -v OFS='\t' '{ if (65<$4>35) print $0 }' C2.CpG.Methylation.bedgraph > C2.35to65methylation.bedgraph




LC_NUMERIC=C awk -v OFS='\t' '{ if (60<$4>40) print $0 }' C2.CpG.Methylation.bedgraph > C2.40to60methylation.bedgraph

