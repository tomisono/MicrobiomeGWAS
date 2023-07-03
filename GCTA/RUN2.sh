#!/bin/bash

echo 'Welcome!  ....'
echo '	'
echo 'Running GCTA'


echo 'Move matrix to phenotype folder'
mv quantitative.covariates discrete.covariates matrix.grm.bin matrix.grm.id matrix.grm.N.bin matrix.log gcta-1.94.1  /home/tomi/Desktop/Arena/GENUS_RMD/GCTA/genusphenotypes/QMM
cd genusphenotypes/QMM
for f  in *.phe ;  do
	echo $f
        echo '----------------------------------------------------------------------------------------------------||||||----- ' 
        ./gcta-1.94.1  --reml  --grm matrix  --pheno $f  --qcovar quantitative.covariates --covar discrete.covariates --out  $f
done
mv *.hsq /home/tomi/Desktop/Arena/GENUS_RMD/GCTA/heritability/QMM
mv *.log /home/tomi/Desktop/Arena/GENUS_RMD/GCTA/heritability/LOG
mv quantitative.covariates discrete.covariates  matrix.grm.bin matrix.grm.id matrix.grm.N.bin matrix.log gcta-1.94.1 /home/tomi/Desktop/Arena/GENUS_RMD/GCTA

