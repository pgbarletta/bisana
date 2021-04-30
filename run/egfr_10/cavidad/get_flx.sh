#! /bin/bash
list=$(<../pdbs.list)
d=5

for pdb in $list
do
    echo -------- $pdb -------  
    
    ANA2 ../pdbs/${pdb}.pdb -c egfr.cfg -M ../eigenvectors/modos_${pdb} -F ../frq/frq_${pdb} -Z ${d} > flx_${pdb}

done
