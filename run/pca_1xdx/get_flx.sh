#!/bin/bash

pdb=1xdx
dir='/home/pbarletta/labo/20/bisana/run/15_1xdx'
d=5

ANA2 pdbs/cut_top_1xdx.pdb -c cavidad/cut_acb.cfg -M modes_1xdx -Z ${d} > flx_acb_${d}
ANA2 pdbs/cut_top_1xdx.pdb -c cavidad/cut_adb.cfg -M modes_1xdx -Z ${d} > flx_adb_${d}

#ANA2 1xdx_13.pdb -c vacb.cfg -M modes_1f96 -Z ${d} -O vgv_acb_${pdb} 
#ANA2 1xdx_13.pdb -c vadb.cfg -M modes_1f96 -Z ${d} -O vgv_adb_${pdb} 

exit 0
