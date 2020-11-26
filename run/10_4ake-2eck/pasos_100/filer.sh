#!/bin/bash

for i in `cat dires`
do
    cd $i
    for j in `seq 1 100`
    do
        mv 4AKE-scwrl4-*-${j}-*.pdb ${j}.pdb
    done

    cd ..

done
