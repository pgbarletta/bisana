#!/bin/bash

pdb=1f96
for coff in `seq 6 6`
do
    cd ${coff}_cutoff_1f96/eigenvalues
    for i in `seq 1 20`
    do
        # Conservo sólo las primeras 10 frecuencias.
        tail -n +8 ${i}_frq_${pdb} | head -n 10 > ../frq/${i}_frq_${pdb}
    done
    cd ../../
done
exit 0
