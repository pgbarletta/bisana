acá arreglo los config p/ q se ajusten al PDB y los modos cortados.
Con restar 12 a los residuos de `included_area_residues` de la chain A (hasta residuo 114)
y 24 a los de la chain B, alcanza.

 - Los volúmenes de la proteína original y la cortada me dan distinto:

```
Pocket  441.786
Pocket  327.015

[chemfiles] Space group which is not P1 () ignored in 'het_top_1xdx.pdb'
Pocket  435.848
[chemfiles] Space group which is not P1 () ignored in 'het_top_1xdx.pdb'
Pocket  305.211
```

y no sé pq. Los CH son idénticos y las variaciones son mínimas, así q ya fué.


 - **cut_top_1xdx.pdb** es la posta.
