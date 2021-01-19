#!/bin/bash

for i in `seq 7 20`
do
    mkdir -p ${i}_cutoff_1f96/eigenvalues
    mkdir -p ${i}_cutoff_1f96/eigenvectors
    mkdir -p ${i}_cutoff_1f96/frq
    mkdir -p ${i}_cutoff_1f96/pdbs
    mkdir -p ${i}_cutoff_1f96/cavidad
done

for i in `seq 1 20`
do
    for j in `seq 7 20`
    do
        cp h1f96_${i}-CA/modos-opt-${j} ${j}_cutoff_1f96/eigenvectors/${i}_modes_1f96
        cp h1f96_${i}-CA/freq-opt-${j} ${j}_cutoff_1f96/eigenvalues/${i}_frq_1f96
    done
done
