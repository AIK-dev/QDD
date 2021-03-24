#!/usr/bin/gnuplot
set terminal epslatex standalone dashed dashlength 0.5 color font ',17' header '\definecolor{vert}{RGB}{0,170,0} \definecolor{rose}{rgb}{1,0,1}'

set out "Na8-RTA-2.tex"

set size 2.5,2.26
set tmargin 0
set bmargin 0
set lmargin 0
set rmargin 0
set multiplot

set size 1,1
set origin 0.2,0.2
#set xrange [0:119]
set xrange [0:80]
set xlabel  'Time (fs)'
set ylabel  'Dipole ($a_0$)' offset 0.5
unset log y
unset log y2
set yrange [-1.7:1.7]
p "na8-tdlda-dipole.dat" u 1:4 t "TDLDA" w l lw 3 lc rgb '#00aa00',\
  "na8-rta-dipole.dat" u 1:4 t "RTA" w l lt 1 lc rgb 'red' lw 6

unset label
set origin 0.2,1.2
set xr [0:80]
set xl  ''
set form x ''
set ylabel  'nr. DCMF iterations'
set yrange [0:1050]
unset y2tics
set y2l ''
set label at graph 0.95,0.9 '\Large Na$_8$' right
set label at graph 0.95,0.8 '$\omega_\mathrm{las}=2.6$ eV' right
set label at graph 0.95,0.7 '$T_\mathrm{pulse}=25$ fs' right
set label at graph 0.95,0.6 '$I=5\times10^{11}$ W/cm$^2$' right
set arrow from 10.6,0 to 10.6,1050 dt 2 lc rgb "#00aa00" lw 10 nohead
set label '\color{vert} 10.6 fs' at 8,700 rotate by 90
set arrow from 19.2,0 to 19.2,1050 dt 2 lc rgb "blue" lw 10 nohead
set label '\color{blue} 19.2 fs' at 16.6,200 rotate by 90
set arrow from 21.6,0 to 21.6,1050 dt 2 lc rgb "magenta" lw 10 nohead
set label '\color{rose} 21.6 fs' at 24,50 rotate by 90
p 'na8-dcmf-cv.dat' u ($1*0.0048):2 not w l lt 1 lc 0 lw 5

unset arrow
unset label
set origin 1.25,0.2
set xrange [0:999]
set form x
set xlabel  "nr. DCMF iterations"
set yl ''
set y2label  '$\delta \rho_\mathrm{DCMF}/\bar\rho$'
set yrange [1e-4:1e-2]
set y2range [1e-4:1e-2]
set log y
set log y2
unset ytics
set y2tics nomirror
set form y2 '$10^{%T}$'
p "na8-rta-protocol_2200.dat" u 1:($2/3e-3) t "10.6 fs" w l lt 1 lw 10 lc rgb '#00aa00',\
 "na8-rta-protocol_4000.dat" u 1:($2/3e-3) t "19.2 fs" w l lt 1 lc rgb 'blue' lw 5,\
 "na8-rta-protocol_5500.dat" u 1:($2/3e-3) t "21.6 fs" w l dt 3 lc rgb 'magenta' lw 12

unset label
set origin 1.25,1.2
set xlabel  ""
set form x ""
set y2l '$\sqrt{\Delta h^2_{\mathrm{DCMF}}}$ (eV)'
set yl ''
set yrange [1.1e-5:0.12]
set y2range [1.1e-5:0.12]
unset ytics
p "na8-rta-protocol_2200.dat" u 1:($8*13.6) t "10.6 fs" w l lt 1 lw 10 lc rgb '#00aa00',\
 "na8-rta-protocol_4000.dat" u 1:($8*13.6) t "19.2 fs" w l lt 1 lc rgb 'blue' lw 5,\
 "na8-rta-protocol_5500.dat" u 1:($8*13.6) t "21.6 fs" w l dt 3 lc rgb 'magenta' lw 12

q
