#$ -q TELOMER,UI
#$ -pe smp 16
#$ -cwd
#$ -r y
# -j y
# -o /dev/null
#$ -l datacenter=LC


dir=""
ref="/Users/twarowski/exp_shared/1003/1003.fa"

module load stack/2021.1
module load gatk/4.1.8.1_gcc-9.3.0



gatk CreateSomaticPanelOfNormals -R $ref \
      -V gendb://pon_db \
      -O pon.vcf.gz
