# Script p/ cortar los modos de Calpha. 

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


casa = joinpath("/home/pbarletta/labo/20/bisana/run/egfr_10")
nmodos = 2
lista = convert(Array{String, 1}, readdlm(joinpath(casa, "pdbs.list"))[:, 1])

for pdb in lista
    modos_in_file = joinpath(casa, "eigenvectors", string("modes_", pdb))
    modos_out_file = joinpath(casa, "eigenvectors", string("modos_", pdb))
    write_mtx(readdlm(modos_in_file)[:, 1:nmodos], modos_out_file)
end


