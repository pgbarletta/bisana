#!/bin/bash

pdb=1f96
for i in `seq 1 20`
do
    head -n 2758 ${pdb}_${i}.pdb > het_1f96_${i}.pdb
    echo END >> het_${pdb}_${i}.pdb
done
exit 0
