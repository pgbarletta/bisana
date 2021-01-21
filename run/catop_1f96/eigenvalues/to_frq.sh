#!/bin/bash

pdb=1f96
for coff in `seq 7 20`
do
    # Conservo sólo las primeras 10 frecuencias.
    tail -n +8 ${coff}_frq_${pdb} | head -n 10 > ../frq/${coff}_frq_${pdb}
done
exit 0
