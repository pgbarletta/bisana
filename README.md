# esto es una desgracia


## pca_1f96

    el *avg_1f96.pdb* fue obtenido con la máscara :1-170@CA (2 chains), así q decidí reobtener *top_1f96.pdb*
con la nueva máscara, en vez de la vieja q se usa en *dynein/1f96/pca*, ahí fue calculado con las 4 cadenas (:1-188@CA).
Al final obtuve el mismo frame como *top...*

 - 20__1f96: PCA de los 20 frames de NMR
 - carmn_1f96: 20 sets de NMA de los 20 frames de NMR. Frame closest to avg: 10
 - catop_1f96: acá veo q cutoff me dá mejor? Son los modos CA de 7 a 20 de cutoff,
sobre la estructura top, la más cercana al average. Creo.



 - carmn_het_1f96: NMA de los 20 frames de NMR. También sus volúmenes y flexibilidades.
 - ajustar_1xdx: busco el cutoff óptimo comparando los modos del frame más cercano al average de la dinámica,
contra los modos de PCA de la dinámica. 
 - carmn_1xdx: NMA de los 15 frames de NMR. También sus volúmenes y flexibilidades.
 - 15_1xdx: PCA de los 15 frames de NMR. También la única flexibilidad, obtenida con ese set de PCA.

# Pasos de EGFR
    Los pasos p/ la flexibilidad de EGFR (aplica p/ 1F96 y 1XDX también):
    ./get_modos.sh
    ./get_evals.sh
    ./to_frq.sh
    julia cortar.jl
    ./get_flx.sh
