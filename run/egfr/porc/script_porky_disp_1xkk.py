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

cmd.load("1xkk.pdb")
cmd.load("disp_1xkk.pdb")
cmd.load("modevectors.py")
rgb=".8, .2, .2"
modevectors("1xkk", "disp_1xkk", outname="disp_1xkk_porky", head=0.5, tail=0.3, headrgb = rgb, tailrgb = rgb, cutoff=3.0)
cmd.delete("disp_1xkk")

cmd.color("slate", "1xkk")

cmd.set_view (\
     '''0.800493002,    0.201568723,   -0.564429343,\
     0.392988801,   -0.887567461,    0.240382716,\
    -0.452515632,   -0.414239049,   -0.789706230,\
    -0.000019692,    0.000001983, -167.228256226,\
    27.578765869,    7.859089851,   56.769912720,\
   125.584449768,  208.870651245,  -20.000000000''')

cmd.png("porc_1xkk.png", width=600, height=800, dpi=600, ray=1)
