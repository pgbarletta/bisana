from pymol.cgo import *
from pymol import cmd

cmd.load("het_1f96_10.pdb")
cmd.load("disp_edf.pdb")
cmd.load("modevectors.py")
rgb="1.0, 1.0, 1.0"
modevectors("het_1f96_10", "disp_edf", outname="disp_edf_porky", head=0.5, tail=0.3, headrgb = rgb, tailrgb = rgb, cutoff=3.0)
cmd.delete("disp_edf")
