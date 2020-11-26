#!/bin/bash

d=2
ANA2 ../pdbs/4ake.pdb -c ../cavidad/3_kin.cfg -M ../eigenvectors/0_modes_4ake -F ../frq/0_frq_4ake -Z ${d} > flx_${d}

for i in `seq 1 30`
do
    ANA2 ../pdbs/4ake_${i}.pdb -c ../cavidad/3_kin.cfg -M ../eigenvectors/${i}_modes_4ake -F ../frq/${i}_frq_4ake -Z ${d} >> flx_${d}
done

exit 0
