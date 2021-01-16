#!/bin/bash

pdb=4ake

pdb4amber -i ${pdb}.pdb -o h${pdb}.pdb --reduce
rm h${pdb}_${i}_nonprot.pdb h${pdb}_${i}_renum.txt h${pdb}_${i}_sslink reduce_info.log
mv h${pdb}_${i}.pdb ../pdbs/${pdb}_${i}.pdb

for i in {1..31}
do
    pdb4amber -i ${pdb}_${i}.pdb -o h${pdb}_${i}.pdb --reduce
    rm h${pdb}_${i}_nonprot.pdb h${pdb}_${i}_renum.txt h${pdb}_${i}_sslink reduce_info.log
    mv h${pdb}_${i}.pdb ../pdbs/${pdb}_${i}.pdb
done
