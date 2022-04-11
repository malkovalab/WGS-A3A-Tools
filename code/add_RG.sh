#$ -q UI,TELOMER
#$ -pe smp 16
#$ -cwd
#$ -r y
# -j y
# -o /dev/null
#$ -l datacenter=LC

dir=""

module purge
module load stack/2019.1
module load openjdk/1.8.0_202-b08_gcc-9.1.0


for i in $dir*sorted.bam*; do

    OUT=${i%.sorted.bam}
    java -jar ~/bin/picard.jar AddOrReplaceReadGroups \
        I=$i \
        O=${OUT}.with_RG.bam \
        SORT_ORDER=coordinate \
        RGID=$OUT \
        RGLB=L001 \
        RGPL=ILLUMINA \
        RGPU=Unit1 \
        RGSM=$OUT \
        CREATE_INDEX=True
done
