#!/bin/bash

pdb=1f96
d=5

ANA2 top_1f96.pdb -c vecf.cfg -M ../modes_1f96 -Z ${d} -O vgv_ecf_${pdb}
ANA2 top_1f96.pdb -c vedf.cfg -M ../modes_1f96 -Z ${d} -O vgv_edf_${pdb}

exit 0
