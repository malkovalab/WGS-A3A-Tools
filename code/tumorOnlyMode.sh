#$ -q TELOMER,UI
#$ -pe smp 56
#$ -cwd
#$ -r y
# -j y
# -o /dev/null
#$ -l datacenter=LC


dir=""
ref="/Users/twarowski/exp_shared/1003/1003.fa"

module load stack/2021.1
module load gatk/4.1.8.1_gcc-9.3.0


#for batch processing

for i in ${dir}*.with_RG.bam; do
    OUT=${i%.sorted.bam}
    gatk Mutect2 \
        --max-mnp-distance 0 \
        -R $ref \
        -I $i \
        -O $OUT.tumor.vcf.gz

done
