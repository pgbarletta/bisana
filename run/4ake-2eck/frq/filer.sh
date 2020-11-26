#!/bin/bash

dir='/home/pbarletta/labo/20/bisana/run'

# Copio las 1eras 10, 20 y 30 frecuencias a las otras carpetas.
for i in `seq 0 30`
do
    head -n 10 ${i}_frq_4ake > ${dir}/10_4ake-2eck/frq/${i}_frq_4ake
    head -n 20 ${i}_frq_4ake > ${dir}/20_4ake-2eck/frq/${i}_frq_4ake
    head -n 30 ${i}_frq_4ake > ${dir}/30_4ake-2eck/frq/${i}_frq_4ake
done
