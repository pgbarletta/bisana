# -*- coding: utf-8 -*-
# `nb_templater` generated Python script
# Generated from .ipynb template: 1f96.ipynb
# www.github.com/ismailuddin/jupyter-nb-templater/
# Generated on: 2021-01-16 16:10 

import nbformat as nbf 
import sys
nb = nbf.v4.new_notebook() 

cell_0=r"""
using DelimitedFiles, FileIO
using Plots, Rsvg, LaTeXStrings
using Chemfiles, JUMD, NamedArrays
using LinearAlgebra, Statistics
pdb = "1f96"
casa_ca = string("/home/pbarletta/labo/20/bisana/run/carmn_1f96")
casa_6 = string("/home/pbarletta/labo/20/bisana/run/rmn_1f96")
rtdos = "/home/pbarletta/labo/20/bisana/rtdos_log"
""".strip()

cell_1=r"""
## Volúmenes de cavidades 1F96
""".strip()

cell_2=r"""
n_rmn = 20
vol_ecf = Array{Float64, 1}(undef, n_rmn)
vol_edf = Array{Float64, 1}(undef, n_rmn)

for i in 1:n_rmn
    vol_ecf[i] = convert(Float64, readdlm(joinpath(
        casa_ca, "cavidad", string("vol_ecf_", i)))[1, 2])
    vol_edf[i] = convert(Float64, readdlm(joinpath(
        casa_ca, "cavidad", string("vol_edf_", i)))[1, 2])
end
""".strip()

cell_3=r"""
st = 50
min_vol = 100
max_vol = 500
bin_vol = collect(min_vol:st:max_vol)
wgh_vol = fill(1.0, length(vol_ecf))

# Histograma ponderado
Wbins_vol_acb, Whis_vol_acb = JUMD.weightedHist(vol_ecf, bin_vol, wgh_vol, true, false);

plt_his_vol = bar(Wbins_vol_acb, Whis_vol_acb,
    xlims = (0, max_vol), ylims = (0, .8),
    xticks = 100:100:max_vol-50,
    linecolor = false, fillcolor = Colors.colorant"Brown",
    grid = false, legend = false,
    guidefont = font(18, "Arial"), tickfont = font(14, "Arial"),
    legendfont = font(14, "Arial"), titlefont = font(20, "Arial"),
    title = "ACB", yaxis = "Relative probability", xaxis = "Volume")
""".strip()

cell_4=r"""
# Histograma ponderado
Wbins_vol_adb, Whis_vol_adb = JUMD.weightedHist(vol_edf, bin_vol, wgh_vol, true, false);

plt_his_vol = bar(Wbins_vol_adb, Whis_vol_adb,
    xlims = (0, max_vol), ylims = (0, .8),
    xticks = 100:100:max_vol-50,
    linecolor = false, fillcolor = Colors.colorant"Tan",
    grid = false, legend = false,
    guidefont = font(18, "Arial"), tickfont = font(14, "Arial"),
    legendfont = font(14, "Arial"), titlefont = font(20, "Arial"),
    title = "ADB", yaxis = "Relative probability", xaxis = "Volume")
""".strip()

cell_5=r"""
NamedArray([ mean(vol_ecf) std(vol_ecf) std(vol_ecf) / mean(vol_ecf) ; 
     mean(vol_edf) std(vol_edf) std(vol_edf) / mean(vol_ecf) ],
    (["ACB" ; "ADB"], ["μ" ; "std" ; "μ/std"]))
""".strip()

cell_6=r"""
# Flexibilidad con modos de 6 partículas
""".strip()

cell_7=r"""
for coff in 7:12
    global flx_ecf = Array{Float64, 1}(undef, n_rmn)
    global flx_edf = Array{Float64, 1}(undef, n_rmn)

    for i in 1:n_rmn
        flx_ecf[i] = convert(Float64, readdlm(joinpath(
            casa_6, string(coff, "_cutoff_1f96"), "flx", string(i, "_flx_ecf_5")))[1, 2])
        flx_edf[i] = convert(Float64, readdlm(joinpath(
            casa_6, string(coff, "_cutoff_1f96"), "flx", string(i, "_flx_edf_5")))[1, 2])
    end
    
    sym_flx_ecf = Symbol("flx_ecf_", coff)
    sym_flx_edf = Symbol("flx_edf_", coff)
    eval(:($sym_flx_ecf = flx_ecf))
    eval(:($sym_flx_edf = flx_edf))
end
""".strip()

nb['cells'] = [
    nbf.v4.new_code_cell(cell_0),
    nbf.v4.new_markdown_cell(cell_1),
    nbf.v4.new_code_cell(cell_2),
    nbf.v4.new_code_cell(cell_3),
    nbf.v4.new_code_cell(cell_4),
    nbf.v4.new_code_cell(cell_5),
    nbf.v4.new_markdown_cell(cell_6),
    nbf.v4.new_code_cell(cell_7),
]

for coff in range(7, 13):
    cell_8=(r"""
    plt_his_flx = histogram(flx_ecf_""" + str(coff) + """, norm = :probability,
        linecolor = false, fillcolor = Colors.colorant"Brown",
        grid = false, legend = false,
        guidefont = font(18, "Arial"), tickfont = font(12, "Arial"),
        legendfont = font(12, "Arial"), titlefont = font(20, "Arial"),
        title = "ACB - Cutoff: """ + str(coff) + r'"' + """, yaxis = "Relative probability", xaxis = "Flexibility")
    """).strip()

    cell_9=(r"""
    plt_his_flx = histogram(flx_edf_""" + str(coff) + """, norm = :probability,
        linecolor = false, fillcolor = Colors.colorant"Tan",
        grid = false, legend = false,
        guidefont = font(18, "Arial"), tickfont = font(12, "Arial"),
        legendfont = font(12, "Arial"), titlefont = font(20, "Arial"),
        title = "ADB - Cutoff: """ + str(coff) + r'"' + """, yaxis = "Relative probability", xaxis = "Flexibility")
    """).strip()

    nb['cells'].append(nbf.v4.new_code_cell(cell_8))
    nb['cells'].append(nbf.v4.new_code_cell(cell_9))

cell_10=r"""
# Flexibilidad con modos de Calpha
""".strip()
nb['cells'].append(nbf.v4.new_markdown_cell(cell_10))

cell_11=r"""
for coff in 7:20
    global flx_ecf_ca = Array{Float64, 1}(undef, n_rmn)
    global flx_edf_ca = Array{Float64, 1}(undef, n_rmn)

    for i in 1:n_rmn
        flx_ecf_ca[i] = convert(Float64, readdlm(joinpath(
            casa_ca, string(coff, "_cutoff_1f96"), "flx", string(i, "_flx_ecf_5")))[1, 2])
        flx_edf_ca[i] = convert(Float64, readdlm(joinpath(
            casa_ca, string(coff, "_cutoff_1f96"), "flx", string(i, "_flx_edf_5")))[1, 2])
    end
    
    sym_flx_ecf_ca = Symbol("flx_ecf_ca_", coff)
    sym_flx_edf_ca = Symbol("flx_edf_ca_", coff)
    eval(:($sym_flx_ecf_ca = flx_ecf_ca))
    eval(:($sym_flx_edf_ca = flx_edf_ca))
end
""".strip()

nb['cells'].append(nbf.v4.new_code_cell(cell_11))

for coff in range(7, 20):

    cell_12=(r"""
    plt_his_flx = histogram(flx_ecf_ca_""" + str(coff) + """, norm = :probability,
        linecolor = false, fillcolor = Colors.colorant"Brown",
        grid = false, legend = false,
        guidefont = font(18, "Arial"), tickfont = font(12, "Arial"),
        legendfont = font(12, "Arial"), titlefont = font(20, "Arial"),
        title = "ACB - Cutoff: """ + str(coff) + r'"' + """, yaxis = "Relative probability", xaxis = "Flexibility")
    """).strip()
    
    cell_13=(r"""
    plt_his_flx = histogram(flx_edf_ca_""" + str(coff) + """, norm = :probability,
        linecolor = false, fillcolor = Colors.colorant"Tan",
        grid = false, legend = false,
        guidefont = font(18, "Arial"), tickfont = font(12, "Arial"),
        legendfont = font(12, "Arial"), titlefont = font(20, "Arial"),
        title = "ADB - Cutoff: """ + str(coff) + r'"' + """, yaxis = "Relative probability", xaxis = "Flexibility")
    """).strip()

    nb['cells'].append(nbf.v4.new_code_cell(cell_12))
    nb['cells'].append(nbf.v4.new_code_cell(cell_13))

nb['metadata'] = {'kernelspec': {'display_name': 'Julia 1.5.0', 'language': 'julia', 'name': 'julia-1.5'}}


nbf.write(nb, r'1f96_vol_flx.ipynb')
print(r"Jupyter notebook 1f96_vol_flx.ipynb successfully generated.")
