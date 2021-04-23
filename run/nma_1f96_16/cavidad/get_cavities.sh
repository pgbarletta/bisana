#!/bin/bash

for i in `seq 1 20`
do
    ANA2 ../pdbs/het_1f96_${i}.pdb -c ecf.cfg -o vol_ecf_${i} -f ecf_cav_${i} 
    ANA2 ../pdbs/het_1f96_${i}.pdb -c edf.cfg -o vol_edf_${i} -f edf_cav_${i}
done



exit 0
