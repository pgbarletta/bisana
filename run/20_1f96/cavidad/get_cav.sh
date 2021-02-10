#!/bin/bash

pdb=1f96

ANA2 het_1f96_10.pdb -c ecf.cfg -f cav_ecf 
ANA2 het_1f96_10.pdb -c edf.cfg -f cav_edf 

ANA2 het_1f96_10.pdb -c ecf.cfg -t ch_ecf 
ANA2 het_1f96_10.pdb -c edf.cfg -t ch_edf 

exit 0
