#!/bin/bash

echo 'Welcome!  ....'
echo '	'
echo 'Running GWAS'


# Obtain Eigenvalues and Eigenvectors
./plink2 --bfile qc_10_12_19_hwe00001 --pca   --keep indi.list  
./plink2 --bfile qc_10_12_19_hwe00001 --freq  --keep indi.list  






