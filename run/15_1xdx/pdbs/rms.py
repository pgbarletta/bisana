import mdtraj as md
import numpy as np

rms = []
for i in range(1, 16):
    for j in range(i+1, 16):
        f1 = md.load('1xdx_' + str(i) + '.pdb')
        f2 = md.load('1xdx_' + str(j) + '.pdb')
        rms.append(md.rmsd(f1, f2))

np.savetxt('all_rmsd', rms, fmt = '%4.6f')
