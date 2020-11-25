#!/bin/bash

ANA2 ../pdbs/2lao.pdb -c ../cavidad/3_lro.cfg -M ../eigenvectors/0_modes_2lao -F ../frq/0_frq_2lao -Z 5 > flx_5

for i in `seq 1 24`
do
    ANA2 ../pdbs/2lao_${i}.pdb -c ../cavidad/3_lro.cfg -M ../eigenvectors/${i}_modes_2lao -F ../frq/${i}_frq_2lao -Z 5 >> flx_5
done

exit 0
