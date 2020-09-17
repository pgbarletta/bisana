## 4AKE

vi h4ake.pdb // %g/          H/d
pdb4amber h4ake.pdb --reduce > 4ake.pdb

## 2ECK

vi h2eck.pdb // %g/          H/d
pdb4amber h2eck.pdb --reduce > 2eck.pdb

## 2LAO

~/scwrl4/Scwrl4 -i 2LAO.pdb -o nrot_2lao.pdb > log_2lao
// uso pymol p/ rotar *nrot_2lao.pdb* y obtengo *h2lao.pdb*
vi h2lao.pdb // %g/          H/d
pdb4amber h2lao.pdb --reduce > 2lao.pdb


## 1LST

~/scwrl4/Scwrl4 -i 1LST.pdb -o h1lst.pdb > log_1lst
vi h1lst.pdb // %g/          H/d
pdb4amber h1lst.pdb --reduce > 1lst.pdb

