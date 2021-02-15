#!/bin/bash

julia porky.jl -p 1m14.pdb -v xyz_vgv_1m14 -m 40 -o disp_1m14 --script
julia porky.jl -p 1xkk.pdb -v xyz_vgv_1xkk -m 40 -o disp_1xkk --script

exit 0
