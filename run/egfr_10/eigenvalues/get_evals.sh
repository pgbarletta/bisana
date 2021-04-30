#!/bin/bash

coff=10
list=$(<../pdbs.list)

for pdb in $list
do
    echo -------- $pdb -------
    pdbDir=$pdb
    cp /home/pbarletta/ANM-Ring/${pdbDir}-CA/freq-opt-${coff} ./frq_${pdb}
done
