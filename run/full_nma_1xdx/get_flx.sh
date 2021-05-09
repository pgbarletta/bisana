#!/bin/bash

pdb=1xdx
dir='/home/pbarletta/labo/20/bisana/run/full_nma_1xdx'
d=5

for j in `seq 1 15`
do
    ANA2 ${dir}/pdbs/fix_${pdb}_${j}.pdb -c ${dir}/cavidad/acb.cfg -M ${dir}/eigenvectors/${j}_modos_${pdb} -F ${dir}/frq/${j}_frq_${pdb} -Z ${d} > ${dir}/cavidad/${j}_flx_acb_${d}
    ANA2 ${dir}/pdbs/fix_${pdb}_${j}.pdb -c ${dir}/cavidad/adb.cfg -M ${dir}/eigenvectors/${j}_modos_${pdb} -F ${dir}/frq/${j}_frq_${pdb} -Z ${d} > ${dir}/cavidad/${j}_flx_adb_${d}
done

exit 0
