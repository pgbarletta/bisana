 - **mod_1xdx_1.pdb** es **1xdx_1.pdb** pero sin sus hidrógenos p/ q leap no se confunda. 

 - igual parece q no hizo falta el .prmtop. Con un PDB alcanza la info de topología.
Tuve q hacer esto pq los PDBs no tenían OXT, y entonces cpptraj esperaba 3504 átomos
y sólo encontraba 3502 (1 OXT de c/ cadena).

 - UPDATE: ahora decidí cortar los PDBs usando la selección q hice en los
PCA de la dinámica (:13-114,127-228@CA)  y luego en **pca_cpp** simplemente hago
:1-204@CA.



 - Frame 13 es el **top**, más cercano al average:
      13       0.4644

 - fix_1xdx_*.pdb* son los 1xdx sin cortar, pero les corrí **pdb4amber** p/ arreglarles
la numeración. No va a servir de nada, pero buen.
