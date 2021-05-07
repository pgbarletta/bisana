from pymol.cgo import *
from pymol import cmd

cmd.set("cartoon_fancy_helices", 1)
cmd.set("cartoon_transparency", 0.2)
cmd.set("sphere_transparency", 0.2)
cmd.set("ray_trace_mode",  0)
cmd.set("two_sided_lighting", "on")
cmd.set("reflect", 0.9)
cmd.set("ambient", 0.1)
cmd.set('''ray_opaque_background''', '''off''')

cmd.load("het_1f96_10.pdb")
cmd.color("chocolate", "het_1f96_10")

cmd.load("cav_ecf.pdb")
cmd.color("density", "cav_ecf")
cmd.load("cav_edf.pdb")
cmd.color("density", "cav_edf")

cmd.load("ch_ecf.pdb")
cmd.color("forest", "ch_ecf")
cmd.load("ch_edf.pdb")
cmd.color("forest", "ch_edf")

cmd.set_view (\
     '''0.937594831,   -0.309546888,    0.158417210,\
    -0.213422999,   -0.871947229,   -0.440635383,\
     0.274528950,    0.379327625,   -0.883597851,\
     0.000000872,    0.000000788,  -89.479774475,\
    -0.129658639,   -0.477276981,    2.447498322,\
   -78.890396118,  257.849914551,  -20.000000000''')

cmd.png("1f96_cav.png", width=600, height=400, dpi=600, ray=1)
