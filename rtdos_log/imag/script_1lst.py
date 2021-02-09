from pymol.cgo import *
from pymol import cmd

cmd.set("cartoon_fancy_helices", 1)
cmd.set("cartoon_transparency", 0.2)
cmd.set("sphere_transparency", 0.2)
cmd.set("ray_trace_mode",  1)
cmd.set("two_sided_lighting", "on")
cmd.set("reflect", 0.9)
cmd.set("ambient", 0.1)
cmd.set('''ray_opaque_background''', '''off''')

cmd.load("h1lst.pdb")

cmd.color("deepblue", "h1lst")

cmd.hide("sticks")
cmd.show("spheres", "resi 239")
cmd.color("red", "resi 239 ")


cmd.set_view (\
     '''0.264732152,   -0.941167891,   -0.210043237,\
     0.962684810,    0.270628482,    0.000700614,\
     0.056184497,   -0.202390835,    0.977693737,\
     0.000125530,    0.000071950, -101.452575684,\
    20.737874985,   58.336189270,   44.889797211,\
    66.306503296,  136.631347656,  -20.000000000''')

cmd.png("1lst.png", width=400, height=300, dpi=300, ray=1)
