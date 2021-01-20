#!/bin/bash

pdb=1f96
dir='/home/pbarletta/labo/20/bisana/run/rmn_1f96'
d=5

for i in `seq 7 12`
do
    mkdir -p ${dir}/${i}_cutoff_1f96/flx
    for j in `seq 1 20`
    do
        rm ${dir}/${i}_cutoff_1f96/flx/*_flx_*
        ANA2 ${dir}/pdbs/het_${pdb}_${j}.pdb -c ${dir}/cavidad/ecf.cfg -M ${dir}/${i}_cutoff_1f96/eigenvectors/${j}_modos_${pdb} -F ${dir}/${i}_cutoff_1f96/frq/${j}_frq_${pdb} -Z ${d} > ${dir}/${i}_cutoff_1f96/flx/${j}_flx_ecf_${d}
        ANA2 ${dir}/pdbs/het_${pdb}_${j}.pdb -c ${dir}/cavidad/edf.cfg -M ${dir}/${i}_cutoff_1f96/eigenvectors/${j}_modos_${pdb} -F ${dir}/${i}_cutoff_1f96/frq/${j}_frq_${pdb} -Z ${d} > ${dir}/${i}_cutoff_1f96/flx/${j}_flx_edf_${d}
    done
done

exit 0
