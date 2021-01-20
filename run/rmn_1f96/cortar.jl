# Script p/ cortar los modos de Calpha q mandó Tadeo.
# Fueron hechos con los PDBs completos de 1F96 y yo sólo quiero incluir las cadenas
# A y B, descartanto las C y D.
# Los modos originales son de 3288 x 3282 (188 residuos). En *pre_1f96.ipync* 
# calculé cuantos elementos deberíá tener y medio 3282. La diferencia responde
# a los OXT de las GLY terminales de las chain A y B (GLY 85 y GLY 170) que tienen
# 5 partículas en vez de 4. Así se suman 3 elementos de c/u y eso hace a la diferencia
# de 6 elementos.
# Entonces, voy a cortar los modos p/ q sean de 2967xnmodos (170 residuos), ya que
# cuando ANA vea: 2967 != 2973, me va a tirar error.

using DelimitedFiles, JUMD, Printf

function write_mtx(output_mtx, file::AbstractString)
    nrows = size(output_mtx)[1]
    ncols = size(output_mtx)[2]
    
    open(file, "w") do f
        for i in 1:nrows
            for j in 1:ncols
                @printf f "%10.6F" output_mtx[i, j]
            end
            @printf f "%s" "\n"
        end
    end
end


pdb = "1f96"
nmodos = 10
Achain_end = 1485
Bchain_sta = 1489
Bchain_end = 2973
rango_i = [ collect(1:Achain_end) ; collect(Bchain_sta:Bchain_end) ]
rango_j = collect(1:nmodos)

casa = joinpath("/home/pbarletta/labo/20/bisana/run/rmn_1f96")

for coff = 7:12
    for i = 1:20
        modos_in_file = joinpath(casa, string(coff, "_cutoff_1f96"), "eigenvectors", string(i, "_modes_", pdb))
        modos_out_file = joinpath(casa, string(coff, "_cutoff_1f96"), "eigenvectors", string(i, "_modos_", pdb))
        write_mtx(readdlm(modos_in_file)[rango_i, rango_j], modos_out_file)
    end
end

