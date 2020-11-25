#!/bin/bash

for i in `seq 3 3`
do
    ANA2 ../pdbs/2lao_${i}.pdb -c ../cavidad/lro_3.cfg -M ../eigenvectors/2lao-modos-${i} -F ../frq/${i}_frq_2lao -Z 5 
done

exit 0
