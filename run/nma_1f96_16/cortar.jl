# Script p/ cortar los modos de Calpha q mandó Tadeo.
# Esta vez fueron hechos sin cadenas C y D, así q no tengo q cortar los vectores.
# Sólo tengo q conservar nmodos = 10 vectores: 510x10 (170 residuos).

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
casa = joinpath("/home/pbarletta/labo/20/bisana/run/nma_1f96_16")

for i = 1:20
    modos_in_file = joinpath(casa, "eigenvectors", string(i, "_modes_", pdb))
    modos_out_file = joinpath(casa, "eigenvectors", string(i, "_modos_", pdb))
    write_mtx(readdlm(modos_in_file)[1:aa3, 1:nmodos], modos_out_file)
end


