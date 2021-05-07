#!/bin/bash

pdb=1xdx

for i in `seq 1 15`
do
    tail -n +159 noncut_${pdb}_${i}.pdb | head -n 1595 > a.pdb
    tail -n +1911 noncut_${pdb}_${i}.pdb > b.pdb
    cat a.pdb b.pdb > tmp.pdb

    pdb4amber -i tmp.pdb -o ${pdb}_${i}.pdb 
done

rm *sslink *txt *nonprot* a.pdb b.pdb tmp.pdb 

exit 0
