#!/bin/bash

for i in `seq 0 30`
do
    tail -n +8 ${i}_frq_4ake > ../frq/${i}_frq_4ake
done
exit 0
