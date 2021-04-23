#!/bin/bash

pdb=1f96
dir='/home/pbarletta/labo/20/bisana/run/nma_1f96_16'
d=5

for j in `seq 1 20`
do
    ANA2 ${dir}/pdbs/het_${pdb}_${j}.pdb -c ${dir}/cavidad/ecf.cfg -M ${dir}/eigenvectors/${j}_modos_${pdb} -F ${dir}/frq/${j}_frq_${pdb} -Z ${d} > ${dir}/cavidad/${j}_flx_ecf_${d}
    ANA2 ${dir}/pdbs/het_${pdb}_${j}.pdb -c ${dir}/cavidad/edf.cfg -M ${dir}/eigenvectors/${j}_modos_${pdb} -F ${dir}/frq/${j}_frq_${pdb} -Z ${d} > ${dir}/cavidad/${j}_flx_edf_${d}
done

exit 0
