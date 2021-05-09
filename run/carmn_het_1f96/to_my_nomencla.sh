#!/bin/bash

# Conservo los modos y autovalores de cutoff 15 sólamente.

pdb=het_1f96
for i in `seq 1 20`
do
    mv ${i}_het_1f96/freq-opt-15 frq/${i}_frq_${pdb}
done
exit 0
