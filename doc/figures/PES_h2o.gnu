#!/usr/bin/gnuplot
set terminal epslatex standalone color font ',14' header '\definecolor{rose}{rgb}{1,0,1} \definecolor{vert}{rgb}{0,0.5,0}'
set output "PES_h2o.tex"
set tmargin 0
set bmargin 0
set lmargin 0
set rmargin 0
set size 1.28,1.48
set multiplot
#
E1 = -2.32561*13.6
E2 = -1.55583*13.6
E3 = -1.27252*13.6
E4 = -1.10855*13.6
w = 0.84*13.6
#
set origin 1.1,0.77
set size 0.1,0.5
set xrange [0.5:2.5]
set yrange [-35:-13]
set format x ''
set y2label 's.p.e. (eV)' offset 0,0
set ylabel ''
unset xtics
set ytics ("-31.6" -31.6,"-21.2" -21.2, "-17.3" -17.3, "-15.1" -15.1)
yoff=1.2
set label '\color{red} $\varepsilon_1$' at 1.5,E1+yoff center
set label '\color{rose} $\varepsilon_2$' at 1.5,E2+yoff center
set label '\color{vert} $\varepsilon_3$' at 1.5,E3+yoff center
set label '\color{blue} $\varepsilon_4$' at 1.5,E4+yoff center
p 'PES_h2o.gnu' u 1:($2*13.6) ev ::0::1 not w l lc rgb 'red' lw 5,\
'PES_h2o.gnu' u 1:($2*13.6) ev ::2::3 not w l lc rgb 'magenta' lw 5,\
'PES_h2o.gnu' u 1:($2*13.6) ev ::4::5 not w l lc rgb 'dark-green' lw 5,\
'PES_h2o.gnu' u 1:($2*13.6) ev ::6::7 not w l lc rgb 'blue' lw 5
#
unset y2label
unset ytics
set origin 0.2,0.27
set size 1,1
set xrange [0:23]
set x2range [0:23]
set yrange [1e-9:1e1]
set log y
set form x
set form x2
set x2tics nomirror
set ytics 1e-10,10,1 nomirror
set x2label '$E_\mathrm{kin}$ (eV)'
set ylabel 'Photo-Electron Spectrum (arb. units)' offset 0.8,0
set format y '$10^{%T}$'
set label '\Large H$_2$O' at graph 0.03,0.92
set label '$I=3\times 10^{14}$ W/cm$^2$' at graph 0.2,0.92
set label '$\omega_\mathrm{las} = 11.4$ eV, $T_\mathrm{pulse}=36$ fs'\
    at graph 0.03,0.85
set arrow from E2+2*w,1e-9 to E2+2*w,1e-7 lw 12 lc rgb 'magenta' nohead
set arrow from E3+2*w,1e-9 to E3+2*w,1e-7 lw 12 lc rgb 'dark-green' nohead
set arrow from E4+2*w,1e-9 to E4+2*w,1e-7 lw 12 lc rgb 'blue' nohead
set arrow from E1+3*w,1e-9 to E1+3*w,2e-8 lw 5 lc rgb 'red' nohead
set arrow from E2+3*w,1e-9 to E2+3*w,2e-8 lw 5 lc rgb 'magenta' nohead
set arrow from E3+3*w,1e-9 to E3+3*w,2e-8 lw 5 lc rgb 'dark-green' nohead
set arrow from E4+3*w,1e-9 to E4+3*w,2e-8 lw 5 lc rgb 'blue' nohead
xoff=0.1
#set label '${\color{rose} \varepsilon_2}+2\hbar \omega_\mathrm{las}$' at E2+2*w,2e-1 center rotate by 90
set xtics ('${\color{rose} \varepsilon_2}+2\hbar \omega_\mathrm{las}$' E2+2*w,\
    '${\color{vert} \varepsilon_3}+2\hbar \omega_\mathrm{las}$' E3+2*w, \
    '${\color{blue} \varepsilon_4}+2\hbar \omega_\mathrm{las}$' E4+2*w, \
    '${\color{red} \varepsilon_1}+3\hbar \omega_\mathrm{las}$' E1+3*w, \
    '${\color{rose} \varepsilon_2}+3\hbar \omega_\mathrm{las}$' E2+3*w, \
    '${\color{vert} \varepsilon_3}+3\hbar \omega_\mathrm{las}$' E3+3*w, \
    '${\color{blue} \varepsilon_4}+3\hbar \omega_\mathrm{las}$' E4+3*w, \
    ) right rotate by 55 nomirror offset 0,0.5
p "./iPES.H2O" u ($1*13.6):2 not w l lw 5 lc 0
q


# s.p.e.
1 -2.32561
2 -2.32561
1 -1.55583
2 -1.55583
1 -1.27252
2 -1.27252
1 -1.10855
2 -1.10855
