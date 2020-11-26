#!/bin/bash

dir='/home/pbarletta/labo/20/bisana/run/4ake-2eck'
d=5


for i in `seq 2 30`
do
    for j in `seq 1 100`
    do
        k=`expr $i - 1` 
        ANA2 ${dir}/pasos_100/${i}/${j}.pdb -c ${dir}/cavidad/3_kin.cfg -M ${dir}/eigenvectors/${k}_modes_4ake -F ${dir}/frq/${k}_frq_4ake -Z ${d} >> ${dir}/100_ndd_pasos/${i}_flx_${d}
    done

done

exit 0
