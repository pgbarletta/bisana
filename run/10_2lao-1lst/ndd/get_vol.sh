#!/bin/bash

ANA2 ../pdbs/2lao.pdb -c ../cavidad/3_lro.cfg  > vol

for i in `seq 1 24`
do
    ANA2 ../pdbs/2lao_${i}.pdb -c ../cavidad/3_lro.cfg >> vol
done

exit 0
