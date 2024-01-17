# Start the same as what was done in previous project. 
# create a loop for the script. 
cat /files/sample | while read sample
do
echo $sample

control= /file/path/to/control

samtools view -b -@32  $control/$sample | samtools sort -o $sample.bam -@32 -n -

# do the trimming dont know which probably trim-gamlore. Remember to set max cores to tops 8. 
trim-galore - j 8 
# pointers for the 
ref_for_alignemnt=pointer/to/refernce
trimmedin1=/path/to/file/trimmed.$sample'_'1.fastq.gz
trimmedin2=/path/to/file/trimmed.$sample'_'2.fastq.gz
Aligned=/path/to/file/aligned/$sample.aligned.bam

bismark alignment talk to Mykolas about it to use his. 

# Alignment of the genome, try and use this from a previous project or from a ready made pipeline. 
# recommend from previous projects are minimap2( requires less memory and is faster) and GRAPHMAP ( is very precise but requires alot of memory.)

samtools sort -o $Aligned -@32 -

samtools index -b -@32 $Aligned \
/path/to/files/aligned/$sample.aligned.bam.bai

done

# Structural variant calling. What type to use hmmmmm. 
# use GATK 
gatk/path/to/software/gatk-version/gatk


# 
