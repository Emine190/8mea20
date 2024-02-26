
# this removes the columns not in the print function in this case extracting the data that is of intrest in the file. 
awk -v OFS='\t' '{print $1,$2,$3,$4,$8}' ASM_NAMES.bed > ASMNAMESIMP.bed

#loop that does the same as above but in all the random regions generated after annotation in the intersect function. 
# loop with awk for fixing file

while IFS= read -r line;
do
awk -v OFS='\t' '{print $1,$2,$3,$4,$8}' $line > $line.bed;
done < filelist;
