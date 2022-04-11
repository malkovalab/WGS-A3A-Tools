# WGS-A3A-Tools
This repository contains tools used in the analysis of WGS variant calls of BIR induced yeast outcomes transformed with A3A

![](https://github.com/malkovalab/WGS-A3A-Tools/blob/main/Figures/A3A%20Mutations-blowout.png)

## Mutect2 calling

1. Create bam files from the reads and sort
`./createbams.sh`

2. Add missing Read Groups to the read headers
`./add_RG.sh`

3. Run Mutect2 in your tumor only mode
`./tumorOnlyMode.sh`

4. Create DataBase to be used in making the Panel of Normals
`./createGenomicsDB.sh`

5. Make Panel of Normals (PON)
`./createPON.sh`

6. Call mutations by Mutect2
`./mutect2_calling.sh`

7. (Optional Branch-1) Convert VCF into tsv format that can be next used by pandas
`vcf_to_tsv.sh`


| FileName | Short Description |
| --- | --- |
| createbams.sh | takes input reads and outputs bam files |
| tumorOnlyMode.sh | Runs Mutect2 in a tumor-only mode |
| add_RG.sh | adds Read Groups with sample information to the reads headers |
| createGenomicsDB.sh | Create DataBase to be used in making the Panel of Normals | 
| createPON.sh | For creating PON by using GenomicDB |
| mutect2_calling.sh | Mutect2 mutation calling script |
| vcf_to_tsv.sh | Convert VCF into tsv format |

## Variant Filtration, Analysis, Simulations

Variant filtration, analysis as well as guidelines are contained within the repository enclosed [Python Jupyter Notebook](https://github.com/malkovalab/WGS-A3A-Tools/blob/main/code/VaraintFilteringAndAnalysis.ipynb).

Additional example figures created through the notebook:
- Generating randomly placed mutations in the genome
![](https://github.com/malkovalab/WGS-A3A-Tools/blob/main/Figures/Random_SNP_Placement_genome_example.png)

- Simulating null hypothesis for genomewide mutations vs chr3R
![](https://github.com/malkovalab/WGS-A3A-Tools/blob/main/Figures/Probability%20of%20Finding%20a%20G%20to%20N%20mutation%20on%20Chr%20III%20Given%20Random%20Distribution%20(N%3D100%2C000)%2C%20p_0.00001_new.png)

- Drawing genomes for each sample with highlighted mutation spectra
![](https://github.com/malkovalab/WGS-A3A-Tools/blob/main/Figures/JT44_CSFP2.png)

- Drawing mutation spectra graphs (strand independent)
![](https://github.com/malkovalab/WGS-A3A-Tools/blob/main/Figures/JT44_spectra.png)
