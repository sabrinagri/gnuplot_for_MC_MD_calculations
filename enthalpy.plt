set terminal jpeg nocrop enhanced size 1100, 500
set encoding iso_8859_1
set palette model RGB

set output "enthalpy.jpeg"

set key outside right top vertical noreverse samplen 0.2 font "TimesNewRoman, 19"

set xtics nomirror  #não coloca tics do lado oposto
set ytics nomirror  #não coloca tics do lado oposto

set xrange[0:36]
set xtics  ("Xaxis1" 3, "Xaxis2" 9, "Xaxis3" 15, "Xaxis4" 21, "Xaxis5" 27, "Xaxis6" 33) font "TimesNewRoman, 24"
set yrange[-50:-5]
set ytics 10 font "TimesNewRoman, 24"
set ylabel "Q_{st} / kJ mol^{-1}" font "TimesNewRoman, 24" offset -2.5
set xtics offset 0, -1
set lmargin 13
set rmargin 23
set tmargin 3
set bmargin 8
set arrow from 6, graph 0 to 6, graph 1 nohead
set arrow from 12, graph 0 to 12, graph 1 nohead
set arrow from 18, graph 0 to 18, graph 1 nohead
set arrow from 24, graph 0 to 24, graph 1 nohead
set arrow from 30, graph 0 to 30, graph 1 nohead



plot "file.dat" using 1:2 with points pt 7 lw 9 lc rgb "web-blue" ti "legend", \
     "file.dat" using 1:2 with points pt 7 lw 9 lc rgb "web-green" ti "legend", \
     "file.dat" using 1:2 with points pt 7 lw 9 lc rgb "purple" ti "legend", \
     "file.dat" using 1:2 with points pt 7 lw 9 lc rgb "magenta" ti "legend", \
     "file.dat" using 1:2 with points pt 7 lw 9 lc rgb "orange" ti "legend", \
