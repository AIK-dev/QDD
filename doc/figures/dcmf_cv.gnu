#!/usr/bin/gnuplot
set terminal epslatex standalone dashed color font ',17'

set output "dcmf_cv.tex"

set size 1.25,1.25
set rmargin 0
set lmargin 0
set tmargin 0
set bmargin 0
set multiplot
set size 1,1

set origin 0.2,0.2
set format xy "$%g$"

fac=0.0484
set xlabel 'Number of iterations'
set ylabel 'Relative error ($\%$)' #offset 1,0.0
set xr [0:131]
set xtics
set yr [-0.05:2]
#set ytics 5
set xzeroaxis lt 1 lc 0 lw 2
#set nokey
set key at 85,1.95 left Right samplen 4.6 spacing 1.1
p 'cv24' u 2:($3*0.02550*100) w l lt 1 lc rgb 'red' lw 10 t '$\rho$',\
  'cv24' u 2:($4*0.02398*100) w l dt 3 lc 0 lw 10 t '$\mathbf j$',\
  'cv24' u 2:($8/32.6355*100) w l lt 1 lc rgb 'blue' lw 12 t '$E$',\
  'cv24' u 2:(sqrt($9)/32.6355*100) w l lw 10 lc rgb '#FF00FF' t \
  '$\sqrt{\delta E^2}$',\
  'cv24' u 2:($6/32.6355*100) w l dt 6 lc rgb '#008080' lw 10 t '$T$'
