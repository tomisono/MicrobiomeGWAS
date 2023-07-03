#!/bin/bash

echo 'Welcome!  ....'
echo '	'
echo 'Running GCTA'

./gcta-1.94.1 --bfile qc_10_12_19_hwe00001 --keep indi.list  --autosome  --make-grm  --out  matrix
./gcta-1.94.1  --grm-bin  matrix  --pca 10  --out EV

