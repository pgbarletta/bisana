#!/bin/bash

# Conservo los modos y autovalores de cutoff 15 sólamente.

pdb=1xdx
for i in `seq 1 20`
do
    mv ${i}_1xdx/freq-opt-15 frq/${i}_frq_${pdb}
done
exit 0
