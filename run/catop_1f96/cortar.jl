# Script p/ cortar los modos de Calpha q mandó Tadeo.
# Fueron hechos con los PDBs completos de 1F96 y yo sólo quiero incluir las cadenas
# A y B, descartanto las C y D. Así q estos modos son de 564 x 558 (188 residuos)
# y yo quiero modos de 510xnmodos (170 residuos).

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
aa = 170
aa3 = aa * 3
casa = joinpath("/home/pbarletta/labo/20/bisana/run/catop_1f96")

for coff = 7:20
    modos_in_file = joinpath(casa, "eigenvectors", string(coff, "_modes_", pdb))
    modos_out_file = joinpath(casa, "eigenvectors", string(coff, "_modos_", pdb))
    write_mtx(readdlm(modos_in_file)[1:aa3, 1:nmodos], modos_out_file)
end


