#!/bin/bash

echo 'Welcome!  ....'
echo '	'
echo 'Running GWAS'


for f  in *.phe ;  do
	echo $f
        echo '----------------------------------------------------------------------------------------------------||||||----- ' 
        # Linear regression with covariate
        ./plink2 --bfile qc_10_12_19_hwe00001 --prune --pheno $f --pheno-name phenotype --glm sex --covar  covariates  --covar-name  PC1 PC2 PC3 PC4 PC5 PC6 PC7 Age BMI --adjust --out $f
done


mv *.adjusted /home/tomi/Desktop/Arena/GENUS_RMD/GWAS_BINARY/Results/adjusted
mv *.logistic.hybrid /home/tomi/Desktop/Arena/GENUS_RMD/GWAS_BINARY/Results/non_adjusted
mv *.phe /home/tomi/Desktop/Arena/GENUS_RMD/GWAS_BINARY/genusphenotypes
mv *.log /home/tomi/Desktop/Arena/GENUS_RMD/GWAS_BINARY/Results/log
