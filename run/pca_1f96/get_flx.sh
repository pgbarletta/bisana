#!/bin/bash

pdb=1f96
dir='/home/pbarletta/labo/20/bisana/run/pca_1f96'
d=5

ANA2 top_1f96.pdb -c ecf.cfg -M modes_1f96 -Z ${d} > flx_ecf_${d}
ANA2 top_1f96.pdb -c edf.cfg -M modes_1f96 -Z ${d} > flx_edf_${d}

exit 0
