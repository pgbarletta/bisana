#!/bin/bash

list=$(<pdbs.list)
nmodos=2

for pdb in $list
do
    cd eigenvalues
    tail -n +8 frq_${pdb} | head -n ${nmodos} > ../frq/frq_${pdb} 
    cd ..
done

exit 0
