#!/bin/bash

pdb=1f96
dir='/home/pbarletta/labo/20/bisana/run/20_1f96'
d=5

ANA2 het_1f96_10.pdb -c ecf.cfg -M modes_1f96 -Z ${d} > flx_ecf_${d}
ANA2 het_1f96_10.pdb -c edf.cfg -M modes_1f96 -Z ${d} > flx_edf_${d}

ANA2 het_1f96_10.pdb -c vecf.cfg -M modes_1f96 -Z ${d} -O vgv_ecf_${pdb} 
ANA2 het_1f96_10.pdb -c vedf.cfg -M modes_1f96 -Z ${d} -O vgv_edf_${pdb} 

exit 0
