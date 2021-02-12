#!/bin/bash

pdb1=1m14
pdb2=1xkk

ANA2 ${pdb1}.pdb -c 3_egfr.cfg -t ch_${pdb1} 
ANA2 ${pdb2}.pdb -c 3_egfr.cfg -t ch_${pdb2}

ANA2 ${pdb1}.pdb -c 3_egfr.cfg -f cav_${pdb1} -o vol_${pdb1}
ANA2 ${pdb2}.pdb -c 3_egfr.cfg -f cav_${pdb2} -o vol_${pdb2}

exit 0
