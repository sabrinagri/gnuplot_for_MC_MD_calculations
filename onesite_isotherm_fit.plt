set terminal jpeg nocrop enhanced size 700, 500
set encoding iso_8859_1
set palette model RGB

set output "FILE.jpeg"

set key horizontal inside left top box spacing 1.27 font "TimesNewRoman, 19" #alterar local da legenda

set xtics nomirror  #não coloca tics do lado oposto
set ytics nomirror  #não coloca tics do lado oposto

set xrange[0:1000]
set xtics  (0, 200, 400, 600, 800, 1000) font "TimesNewRoman, 20"
set yrange[*:6]
set ytics 2 font "TimesNewRoman, 20"
set ylabel "Adsorbed amount / mmol g^{-1}" font "TimesNewRoman, 24" offset -2.0
set xlabel "Pressure / kPa" font "TimesNewRoman, 24" offset 0, -2.0
set xtics offset 0, -1
set key
set lmargin 12
set rmargin 5
set tmargin 3
set bmargin 7


qsat = #SET SATURATION VALUE
q(x) = qsat*(a*(x**b))/(1+a*(x**b))

fit q(x) "file.dat" using (($1)):((($2))) via a, b

qsat2 = #SET SATURATION VALUE
f(x) = qsat2*(c*(x**d))/(1+c*(x**d))

fit f(x) "file.dat" using (($1)):((($2))) via c, d

qsat3 = #SET SATURATION VALUE
g(x) = qsat3*(e*(x**g))/(1+e*(x**g))

fit g(x) "file.dat" using (($1)):((($2))) via e, g

qsat4 = #SET SATURATION VALUE
h(x) = qsat4*(i*(x**j))/(1+i*(x**j))

fit h(x) "file.dat" using (($1)):((($2))) via i, j

qsat5 = #SET SATURATION VALUE
j(x) = qsat5*(k*(x**l))/(1+k*(x**l))fit k(x) "isoterma_sifsix-3-cu_N2.data" using (($1)):((($2))) via n, o

fit j(x) "file.dat" using (($1)):((($2))) via k, l

qsat6 = #SET SATURATION VALUE
k(x) = qsat6*(n*(x**o))/(1+n*(x**o))

fit k(x) "file.dat" using (($1)):((($2))) via n, o


plot "file.dat" index 0 u (($1)):((($2))) w points pt 7 lw 3 lc rgb "magenta" ti "molec1", \
     "file.dat"  index 0 u (($1)):((($2))) w points pt 7 lw 3 lc rgb "orange" ti "molec2", \
     "file.dat"  index 0 u (($1)):((($2))) w points pt 7 lw 3 lc rgb "web-green" ti "molec3", \
     "file.dat" index 0 u (($1)):((($2))) w points pt 7 lw 3 lc rgb "dark-spring-green" ti 'molec4", \
     "file.dat"  index 0 u (($1)):((($2))) w points pt 7 lw 3 lc rgb "purple" ti "molec5", \
     "file.dat" index 0 u (($1)):(($2)) w points pt 7 lw 3 lc rgb "web-blue" ti "molec6", \
     q(x) with lines lw 2 lc rgb "magenta" notitle \
     , f(x) with lines lw 2 lc rgb "orange" notitle \
     , g(x) with lines lw 2 lc rgb "web-green" notitle \
     , h(x) with lines lw 2 lc rgb "dark-spring-green" notitle \
     , j(x) with lines lw 2 lc rgb "purple" notitle \
     , k(x) with lines lw 2 lc rgb "web-blue" notitle

