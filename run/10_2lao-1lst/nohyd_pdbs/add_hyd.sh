#!/bin/bash

pdb4amber -i h2lao.pdb -o 2lao.pdb  --reduce
mv 2lao.pdb ../pdbs/2lao.pdb

for i in `seq 1 24`
do
    pdb4amber -i h2lao_${i}.pdb -o 2lao_${i}.pdb  --reduce
    mv 2lao_${i}.pdb ../pdbs/2lao_${i}.pdb
done
