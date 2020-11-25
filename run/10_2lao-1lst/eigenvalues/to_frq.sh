#!/bin/bash

for i in `seq 0 24`
do
    tail -n +8 2lao-freq-${i} > ../frq/${i}_frq_2lao
done
exit 0
