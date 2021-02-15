#!/bin/bash

pdb1=1m14
pdb2=1xkk
dir='/home/pbarletta/labo/20/bisana/run/egfr'
d=5

ANA2 ${pdb1}.pdb -c 1_egfr.cfg -M ${dir}/eigenvectors/${pdb1}_modos -F ${dir}/frq/${pdb1}_frq -Z ${d} > flx_${pdb1}_${d}
ANA2 ${pdb2}.pdb -c 1_egfr.cfg -M ${dir}/eigenvectors/${pdb2}_modos -F ${dir}/frq/${pdb2}_frq -Z ${d} > flx_${pdb2}_${d}

ANA2 ${pdb1}.pdb -c 2_egfr.cfg -M ${dir}/eigenvectors/${pdb1}_modos -F ${dir}/frq/${pdb1}_frq -Z ${d} -O vgv_${pdb1}
ANA2 ${pdb2}.pdb -c 2_egfr.cfg -M ${dir}/eigenvectors/${pdb2}_modos -F ${dir}/frq/${pdb2}_frq -Z ${d} -O vgv_${pdb2}

exit 0
