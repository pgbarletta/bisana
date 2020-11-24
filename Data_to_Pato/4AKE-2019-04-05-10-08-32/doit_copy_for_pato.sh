#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/sh
#

for j in `cat list_dir`
     do

     echo $j > kki
     uno=$(cut -f1 -d"-" kki)
     dos=$(cut -f2 -d"-" kki)
     dir=$(cut -f3 -d"-" kki)
     cont=$(cut -f4 -d"-" kki)

cont2=$((cont + 1))

cp ./${uno}-${dos}-${dir}-${cont}/${uno}-freq.bz2 ./4AKE-target/eigenvalue/${uno}-eigenvalue-${cont}.bz2
cp ./${uno}-${dos}-${dir}-${cont}/${uno}-temp-coord.pdb.bz2 ./4AKE-target/pdb-LF-CG/${uno}-CG-${cont}.pdb.bz2
cp ./${uno}-${dos}-${dir}-${cont}/Random-SCWRL4/4AKE-scwrl4-${dos}-${dir}-${cont}.pdb.bz2 ./4AKE-target/pdb-LF-AA/${uno}-AA-${cont2}.pdb.bz2

bzip2 -d ./${uno}-${dos}-${dir}-${cont}/${uno}-edges-close-atom-first-edge-gap1.txt.bz2
sed '/NodeId/d' ./${uno}-${dos}-${dir}-${cont}/${uno}-edges-close-atom-first-edge-gap1.txt | awk '{ print $1, $2, $3, $7, $8 }' | sed 's/:_:/ /g' | sed 's/:/ /g' | sed 's/ SC/:SC/g' | sed 's/ MC/:MC/g' | sed 's/ LIG/:LIG/g' | sed '/PIPISTACK/d' | sed '/IONIC/d' > ./4AKE-target/ring_net/${uno}-temp-contactos-${cont}
bzip2 ./${uno}-${dos}-${dir}-${cont}/${uno}-edges-close-atom-first-edge-gap1.txt

rm kki
done
