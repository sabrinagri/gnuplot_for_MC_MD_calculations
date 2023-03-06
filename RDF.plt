set terminal jpeg nocrop enhanced
set encoding iso_8859_1
set palette model RGB

set output "RDF_system.jpeg"

set xtics nomirror  #não coloca tics do lado oposto
set ytics nomirror  #não coloca tics do lado oposto

set key at graph 0.35, graph 0.98 vertical font "TimesNewRoman, 24" #alterar local da legenda

set xrange[*:8]
set yrange[0.0:8.5]
set ytics (0.0, 2.0, 4.0, 6.0, 8.0) font "TimesNewRoman, 24"
set xtics font "TimesNewRoman, 24"
set label at graph 0.05, graph 0.25 "1 molecule" font "TimesNewRoman, 24"
set ylabel "Radial distribution function, g(r)" font "TimesNewRoman, 24"
set xlabel "Radial distance / {\305}" font "TimesNewRoman, 24" offset 0, -1.5
set xtics offset 0, -1
set lmargin 10
set tmargin 3
set bmargin 5

#######################################################################################
####1 molécula ######
plot "RDF_pseudoatom_atom1.dat" using 2:3 with lines lw 3.5 lc rgb "magenta" ti "atom1", \
     "RDF_pseudoatom_atom2.dat" using 2:3 with lines lw 3.5 lc rgb "medium-blue" ti "atom2", \
     "RDF_pseudoatom_atom3.dat" using 2:3 with lines lw 3.5 lc rgb "web-green" ti "atom3", \
     "RDF_pseudoatom_atom4.dat" using 2:3 with lines lw 3.5 lc rgb "dark-spring-green" ti "atom4", \
     "RDF_pseudoatom_atom5.dat"  using 2:3 with lines lw 3.5 lc "black" ti "atom5", \
     "RDF_pseudoatom_atom6.dat"  using 2:3 with lines lw 3.5 lc rgb "web-blue" ti 'atom6", \
     "RDF_pseudoatom_atom7.dat"  using 2:3 with lines lw 3.5 lc "grey" ti "atom7"
