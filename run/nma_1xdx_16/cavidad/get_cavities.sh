#!/bin/bash

pdb=1xdx
dir='/home/pbarletta/labo/20/bisana/run/carmn_1xdx'

for j in `seq 1 15`
do
    ANA2 ${dir}/pdbs/${pdb}_${j}.pdb -c ${dir}/cavidad/cut_acb.cfg -o ${dir}/cavidad/vol_acb_${j}
    ANA2 ${dir}/pdbs/${pdb}_${j}.pdb -c ${dir}/cavidad/cut_adb.cfg -o ${dir}/cavidad/vol_adb_${j}
done

exit 0
