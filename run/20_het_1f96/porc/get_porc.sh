#!/bin/bash

julia porky.jl -p het_1f96_10.pdb -v xyz_vgv_ecf -m 40 -o disp_ecf --script
julia porky.jl -p het_1f96_10.pdb -v xyz_vgv_edf -m 40 -o disp_edf --script

exit 0
