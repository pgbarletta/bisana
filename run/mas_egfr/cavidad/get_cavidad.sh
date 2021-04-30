#! /bin/bash
list=$(<../pdbs.list)
d=5

for pdb in $list
do
    echo -------- $pdb -------  
    
    ANA2 ../pdbs/${pdb}.pdb -c egfr.cfg -o vol_${pdb}

done
