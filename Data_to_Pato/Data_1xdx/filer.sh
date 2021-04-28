#!/bin/bash

# Conservo los modos y autovalores de cutoff 12 sólamente.

mkdir eigenvalues
mkdir eigenvectors

for i in `seq 1 15`
do
    cp 1xdx_${i}-CA/freq-opt-12.bz2 eigenvalues/${i}_frq_1xdx.bz2
    cp 1xdx_${i}-CA/modos-opt-12.bz2 eigenvectors/${i}_modes_1xdx.bz2
done
exit 0

