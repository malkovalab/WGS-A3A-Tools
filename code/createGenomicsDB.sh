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


gatk --java-options "-Xmx4g -Xms4g" GenomicsDBImport -R $ref -L JT1_CSFP210017621-2a_H7VMKDSX3_.with_RG.bam.tumor.vcf.gz -ip 100 --genomicsdb-workspace-path pon_db \
    -V JT10_CSFP210017630_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT11_CSFP210017631_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT12_CSFP210017632_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT13_CSFP210017633_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT14_CSFP210017634_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT15_CSFP210017635.with_RG.bam.tumor.vcf.gz \
    -V JT17_CSFP210017637_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT18_CSFP210017638_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT19_CSFP210017639_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT20_CSFP210017640_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT21_CSFP210017641_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT22_CSFP210017642_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT23_CSFP210017643_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT24_CSFP210017644.with_RG.bam.tumor.vcf.gz \
    -V JT25_CSFP210017645_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT26_CSFP210017646.with_RG.bam.tumor.vcf.gz \
    -V JT27_CSFP210017647_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT28_CSFP210017648_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT29_CSFP210017649_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT30_CSFP210017650_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT31_CSFP210017651_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT32_CSFP210017652_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT33_CSFP210017653.with_RG.bam.tumor.vcf.gz \
    -V JT34_CSFP210017654.with_RG.bam.tumor.vcf.gz \
    -V JT35_CSFP210017655_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT36_CSFP210017656.with_RG.bam.tumor.vcf.gz \
    -V JT37_CSFP210017657.with_RG.bam.tumor.vcf.gz \
    -V JT38_CSFP210017658_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT39_CSFP210017659_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT3_CSFP210017623-2a_H7VMKDSX3_.with_RG.bam.tumor.vcf.gz \
    -V JT40_CSFP210017660_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT41_CSFP210017661_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT42_CSFP210017662.with_RG.bam.tumor.vcf.gz \
    -V JT43_CSFP210017663.with_RG.bam.tumor.vcf.gz \
    -V JT44_CSFP210017664_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT45_CSFP210017665_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT46_CSFP210017666_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT47_CSFP210017667_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT48_CSFP210017668.with_RG.bam.tumor.vcf.gz \
    -V JT49_CSFP210017669_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT4_CSFP210017624-2a_H3JNTDSX3_.with_RG.bam.tumor.vcf.gz
    -V JT50_CSFP210017670_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT51_CSFP210017671_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT52_CSFP210017672_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT53_CSFP210017673_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT54_CSFP210017674.with_RG.bam.tumor.vcf.gz \
    -V JT55_CSFP210017675_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT56_CSFP210017676_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT57_CSFP210017677_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT58_CSFP210017678_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT59_CSFP210017679_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT60_CSFP210017680_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT6_CSFP210017626_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT7_CSFP210017627_merged_1.fq.with_RG.bam.tumor.vcf.gz \
    -V JT8_CSFP210017628-2a_H3JNTDSX3_.with_RG.bam.tumor.vcf.gz \
    -V JT9_CSFP210017629_merged_1.fq.with_RG.bam.tumor.vcf.gz
