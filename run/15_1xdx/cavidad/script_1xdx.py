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

cmd.load("fix_1xdx_13.pdb")
cmd.color("chocolate", "fix_1xdx_13")

cmd.load("cav_acb.pdb")
cmd.color("density", "cav_acb")
cmd.load("cav_adb.pdb")
cmd.color("density", "cav_adb")

cmd.load("ch_acb.pdb")
cmd.color("forest", "ch_acb")
cmd.load("ch_adb.pdb")
cmd.color("forest", "ch_adb")


cmd.show("spheres", "cav_a*")

cmd.set_view (\
     '''0.985927403,   -0.158083513,   -0.054349255,\
    -0.080049716,   -0.161061883,   -0.983692348,\
     0.146753371,    0.974201024,   -0.171448186,\
    -0.000008035,   -0.000002392, -104.634948730,\
     2.583818913,    5.617665291,   -4.377417088,\
   -46.898918152,  256.167358398,  -20.000000000''')

cmd.png("1xdx_cav.png", width=600, height=400, dpi=600, ray=1)
