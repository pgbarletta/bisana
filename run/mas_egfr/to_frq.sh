#!/bin/bash

list=$(<pdbs.list)

for pdb in $list
do
    cd eigenvalues
    tail -n +8 freq_${pdb} | head -n 10 > ../frq/frq_${pdb} 
    cd ..
done

exit 0
