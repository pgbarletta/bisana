#!/bin/bash

pdb=het_1f96
dir='/home/pbarletta/labo/20/bisana/run/carmn_het_1f96'

for j in `seq 1 20`
do
    ANA2 ${dir}/pdbs/${pdb}_${j}.pdb -c ${dir}/cavidad/ecf.cfg -o ${dir}/cavidad/${j}_ecf_vol -f ${dir}/cavidad/${j}_ecf_cav 
    ANA2 ${dir}/pdbs/${pdb}_${j}.pdb -c ${dir}/cavidad/edf.cfg -o ${dir}/cavidad/${j}_edf_vol -f ${dir}/cavidad/${j}_edf_cav
done

exit 0
