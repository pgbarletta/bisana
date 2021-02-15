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

cmd.load("1m14.pdb")
cmd.load("disp_1m14.pdb")
cmd.load("modevectors.py")
rgb="1.0, .2, .2"
modevectors("1m14", "disp_1m14", outname="disp_1m14_porky", head=0.5, tail=0.3, headrgb = rgb, tailrgb = rgb, cutoff=3.0)
cmd.delete("disp_1m14")

cmd.color("chocolate", "1m14")

cmd.set_view (\
     '''0.800493002,    0.201568723,   -0.564429343,\
     0.392988801,   -0.887567461,    0.240382716,\
    -0.452515632,   -0.414239049,   -0.789706230,\
    -0.000018060,    0.000003601, -167.228073120,\
    26.856092453,    7.504398346,   57.178234100,\
   125.584449768,  208.870651245,  -20.000000000''')

cmd.png("porc_1m14.png", width=600, height=800, dpi=600, ray=1)
