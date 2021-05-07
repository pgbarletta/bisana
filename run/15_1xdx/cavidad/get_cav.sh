#!/bin/bash

pdb=1xdx

ANA2 fix_1xdx_13.pdb -c acb.cfg -f cav_acb 
ANA2 fix_1xdx_13.pdb -c adb.cfg -f cav_adb 

ANA2 fix_1xdx_13.pdb -c acb.cfg -t ch_acb 
ANA2 fix_1xdx_13.pdb -c adb.cfg -t ch_adb 


exit 0
