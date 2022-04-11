#$ -q TELOMER
#$ -pe smp 32
#$ -cwd
#$ -r y
# -j y
# -o /dev/null
#$ -l datacenter=LC


REFERENCE="/Users/twarowski/exp_shared/1003/1003.fa"

INPUT="input.bam"
OUTPUT_unfiltered="unfiltered.vcf"
OUTPUT_filtered="filtered.vcf"

module load stack/legacy
module load gatk


#for single samples
#gatk Mutect2 -R $REFERENCE -I $INPUT -O $OUTPUT_unfiltered
#gatk FilterMutectCalls -R $REFERENCE -V unfiltered.vcf -O $OUTPUT_filtered



dir=""

#for batch processing

for i in $dir*with_RG.bam; do

    INPUT=$i
    OUTPUT_unfiltered=${i%.with_RG.bam}
    OUTPUT_filtered=${OUTPUT_unfiltered}_filtered.vcf
    OUTPUT_unfiltered=${OUTPUT_unfiltered}_unfiltered.vcf
    ID=${i%.with_RG.bam}
    echo $INPUT
    echo $ID
    echo $OUTPUT_unfiltered
    echo $OUTPUT_filtered

    gatk Mutect2 -R $REFERENCE -tumor $ID --panel-of-normals pon.vcf.gz -I $INPUT -O $OUTPUT_unfiltered
    gatk FilterMutectCalls -R $REFERENCE -V $OUTPUT_unfiltered -O $OUTPUT_filtered

done
