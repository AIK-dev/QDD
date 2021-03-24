#!/usr/bin/gnuplot
set terminal epslatex standalone color dashed dashlength 2.0 font ',14' header '\definecolor{rose}{rgb}{1,0,1} \definecolor{vert}{rgb}{0,0.5,0}'
set output "C3-testinitv2.tex"
set tmargin 0
set bmargin 0
set lmargin 0
set rmargin 0
set size 2.05,1.4
set multiplot
#------------------------------------------------------------
set size 0.8,1.0
set origin 0.2,0.2
set xrange [0:3950]
set xtics 1000
set form y "$10^{%T}$"
set yrange [2e-7:1.4e2]
set xlabel "Number of iterations"
set ylabel "variance (eV)" offset 0
set log y
unset key
set label '\Large C$_3$' at graph 0.88,0.93
p "C3-groundstat-data/init_ho_deformed/infosp.C3"  u 2:($5*13.6) t "h.o., $\beta=0.9$, $\gamma=0$, 12 states" w l lw 8 lc rgb 'red',\
 "C3-groundstat-data/init_ho_occ/infosp.C3"  u 2:($5*13.6) t "h.o., $\beta=0.3$, $\gamma=30$, 12 states" w l lc rgb '#00aa00' lw 5,\
 "C3-groundstat-data/init_ho_unocc/infosp.C3"  u 2:($5*13.6) t "h.o., $\beta=0.3$, $\gamma=30$, 18 states" w l lw 5 lc rgb 'blue',\
 "C3-groundstat-data/init_ao/infosp.C3"  u 2:($5*13.6) t "localized, 12 states" w l lw 8 lc rgb 'magenta'
#------------------------------------------------------------
set auto
unset label
set size 0.8,1.0
set origin 1.05,0.2
set xrange [0:3950]
set xtics 1000
set form y ""
set form y2 "%g"
set y2tics
unset log y
set yrange [-433:-381]
set y2range [-433:-381]
set xlabel "Number of iterations"
set yl ''
set y2label "energy (eV)" offset -0.9
set key top right
set arrow from 0,-31.6710020*13.6 to 3950,-31.6710020*13.6 nohead lt 0 lw 2
p "C3-groundstat-data/init_ho_deformed/infosp.C3"  u 2:($3*13.6) t 'h.o.,$\beta=0.9$, $\gamma=0$, 12 states' w l lw 8 lc rgb 'red',\
 "C3-groundstat-data/init_ho_occ/infosp.C3"  u 2:($3*13.6) t 'h.o.,$\beta=0.3$, $\gamma=30$, 12 states' w l lc rgb '#00aa00' lw 5,\
 "C3-groundstat-data/init_ho_unocc/infosp.C3"  u 2:($3*13.6) t 'h.o.,$\beta=0.3$, $\gamma=30$, 18 states' w l lw 5 lc rgb 'blue',\
 "C3-groundstat-data/init_ao/infosp.C3"  u 2:($3*13.6) t 'localized, 12 states' w l lw 8 lc rgb 'magenta'
#
q
