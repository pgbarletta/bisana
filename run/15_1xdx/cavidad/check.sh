#!/bin/bash


ANA2 cut_top_1xdx.pdb -c cut_acb.cfg 
ANA2 cut_top_1xdx.pdb -c cut_adb.cfg 

ANA2 het_top_1xdx.pdb -c acb.cfg 
ANA2 het_top_1xdx.pdb -c adb.cfg 

ANA2 cut_top_1xdx.pdb -c cut_acb.cfg -t ch_cut_acb
ANA2 cut_top_1xdx.pdb -c cut_adb.cfg -t ch_cut_adb

ANA2 het_top_1xdx.pdb -c acb.cfg -t ch_acb
ANA2 het_top_1xdx.pdb -c adb.cfg -t ch_adb



exit 0
