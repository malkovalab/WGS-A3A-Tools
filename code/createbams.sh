#$ -q TELOMER,UI
#$ -pe smp 56
#$ -cwd
#$ -r y
# -j y
# -o /dev/null
#$ -l datacenter=LC


dir="./"
ref="/Users/twarowski/exp_shared/1003/1003.fa"

#for batch processing

for i in ${dir}JT*merged_1*; do

    r1=$i
    r2=${i/merged_1/merged_2}
    OUT=${i%_merged_1.fq}
    OUT=${OUT#$dir}
    echo $OUT

    bwa mem -t 56 -R "@RG\tID:$OUT\tSM:$OUT\tPL:ILLUMINA\tPI:330" $ref $r1 $r2 > $OUT.sam
    samtools sort -@56 -m 2G -O bam -T temp.sort -o $OUT.sorted.bam $OUT.sam

done

