# Bioinformatic-institute-project---GWAS-Miratorg

The main aim of the project is to identify genetic variants in Black Angus cows genome 
related to economically important characteristics

=====================The pursued objectives:

- dataset quality control
- LD SNPs pruning
- covariats searching
- linear regression
- searching for metabolic influencing of SNPs

For GWAS we used PLINK version 1.9
It allows to filter and preparing your data
Characteristics we used for filtering:

- minor allele frequency 
- proportion of missing genotypes
- Hardy-Weinberg equilibrium
- proportion of individuals with missing genotypes
- filtering according linkage disequilibrium 

Script for filtering:
./plink --file marble_df --maf 0.05 --geno 0.05 --hwe 1e-6 --mind 0.1 --indep 50 5 2 --cow 

Also PLINK used for linear regression
Script for linear regression:
./plink --covar-number 1-5 --file new_marble --gplink --linear --cow --covar new_plink.eigenvec 

For screen plot and Manhattan plot we used R script applied to this repository
Links between SNPs and metabolic characteristics  were identify using Cattle QTL database

PLINK 1.9 - www.cog-genomics.org/plink/1.9/
Cattle QTL db - www.animalgenome.org/
