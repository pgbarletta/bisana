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

cmd.load("h2lao.pdb")

cmd.color("deepblue", "h2lao")


cmd.set_view (\
     '''0.105562449,   -0.993138134,   -0.049871735,\
     0.989233077,    0.099784411,    0.106892094,\
    -0.101184383,   -0.060623284,    0.993000329,\
    -0.002009532,    0.000964239,  -93.803932190,\
    20.964019775,   56.065452576,   44.606433868,\
    54.030658722,  133.195846558,  -20.000000000''')

cmd.png("2lao.png", width=400, height=300, dpi=300, ray=1)
