#!/bin/bash

for i in `seq 11 12`
do
    cd ${i}_cutoff_1f96/eigenvectors/
    xz -vT0 *
    cd ../../
done
