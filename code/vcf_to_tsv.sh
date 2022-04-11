module load gatk

dir=""

mkdir tsv_tables

for i in ${dir}*.vcf; do
    echo $i
    input=$i
    output=${i%.vcf}.tsv

    gatk VariantsToTable \
        -V $input \
        -F CHROM -F POS -F TYPE -F REF -F ALT -GF AD -GF AF \
        -O tsv_tables/$output

done
