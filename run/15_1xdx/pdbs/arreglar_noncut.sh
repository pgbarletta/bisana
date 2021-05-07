#!/bin/bash

pdb=1xdx

for i in `seq 1 15`
do
    pdb4amber -i noncut_${pdb}_${i}.pdb -o fix_${pdb}_${i}.pdb 
done

rm *sslink *txt *nonprot* 

exit 0
