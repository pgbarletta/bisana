#!/bin/bash

pdb=1f96
dir='/home/pbarletta/labo/20/bisana/run/catop_1f96'
d=5

for i in `seq 7 20`
do
    ANA2 het_top_${pdb}.pdb -c ecf.cfg -M ${dir}/eigenvectors/${i}_modos_${pdb} -F ${dir}/frq/${i}_frq_${pdb} -Z ${d} > ${i}_flx_ecf_${d}
    ANA2 het_top_${pdb}.pdb -c edf.cfg -M ${dir}/eigenvectors/${i}_modos_${pdb} -F ${dir}/frq/${i}_frq_${pdb} -Z ${d} > ${i}_flx_edf_${d}
done

exit 0
