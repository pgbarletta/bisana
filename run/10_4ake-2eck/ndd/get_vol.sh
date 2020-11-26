#!/bin/bash

ANA2 ../pdbs/4ake.pdb -c ../cavidad/3_kin.cfg  > vol

for i in `seq 1 30`
do
    ANA2 ../pdbs/4ake_${i}.pdb -c ../cavidad/3_kin.cfg >> vol
done

exit 0
