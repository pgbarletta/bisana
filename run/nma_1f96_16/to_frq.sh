#!/bin/bash

pdb=1f96
cd eigenvalues
for i in `seq 1 20`
do
    # Conservo sólo las primeras 10 frecuencias.
    tail -n +8 ${i}_frq_${pdb} | head -n 10 > ../frq/${i}_frq_${pdb}
done
exit 0
