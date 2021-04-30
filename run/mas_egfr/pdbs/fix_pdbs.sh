#!/bin/bash
list=$(<pdbs.list)
#list="1XKK_A"
i=0
for file in $list
do
    echo -------- $file -------
    sed s/1M14_A/$file/g template/fix_pdbs_cpp > ./fix_pdbs_cpp
    cpptraj < fix_pdbs_cpp
done

rm fix_pdbs_cpp
