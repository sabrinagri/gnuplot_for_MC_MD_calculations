set terminal jpeg nocrop enhanced
set encoding iso_8859_1
set palette model RGB

set xtics nomirror  #não coloca tics do lado oposto
set ytics nomirror  #não coloca tics do lado oposto

set key at graph 1.0, graph 0.98 vertical font "TimesNewRoman, 24" #alterar local da legenda

set xrange[*:5]
set yrange[*:*]
set ylabel "{Normalized VACF / u. a.}" font "TimesNewRoman, 24" offset -0.5
set xlabel "{time / ps}" font "TimesNewRoman, 24" offset 0, -1.5
set xtics font "TimesNewRoman, 24" offset 0, -1
set ytics font "TimesNewRoman, 24"
set lmargin 10
set tmargin 3
set bmargin 5

#######################################################################################
set output "vacf_system.jpeg"
plot "vacf_system.dat" using ($1):($2) with lines lw 3 lc "grey" ti "legend"
ymax=GPVAL_DATA_Y_MAX

set output "vacf_system_normalized.jpeg"
plot "vacf_system.dat" using ($1):($2/ymax) with lines lw 3 lc "grey" ti "legend",
