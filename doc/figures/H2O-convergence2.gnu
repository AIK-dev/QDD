#!/usr/bin/gnuplot
set terminal epslatex standalone dashed dashlength 0.3 color font ',17'

set out "H2O-convergence2.tex"

set size 1.23,1.23
set tmargin 0
set bmargin 0
set lmargin 0
set rmargin 0
set multiplot
#------------------------------------------------------------
set size 1,1
set origin 0.2,0.2
set form y '$10^{%T}$'
set xrange [0:195]
set yrange [1e-13:0.8]
set ylabel "convergence criterion" offset 1.5,0
set xlabel "nb. of iterations $n$"
set xtics 50
set key top right spacing 1.6
#at graph 0.2,0.68
set log y
set label '\LARGE H$_2$O' at graph 0.03,0.08
p "H2O-convergence2.gnu" u 1:($4/1.1) t \
  '$\overline{\Delta \varepsilon}^{(n)}\big/ \varepsilon_\mathrm{F}$' \
  w l lc rgb "red" lw 10,\
  "" u 1:($6/0.025) t '$\delta_2^{(n)} \rho$' w l dt 2 lc rgb 'dark-green' lw 10,\
  "" u 1:($5/0.025) t '$\delta^{(n)} \rho$' w l dt 3 lc rgb 'blue' lw 10 
#
q
# protocol of static convergence
# col  1: iteration number
# col  2: energy difference
# col  3: variance of s.p. energies
# col  4: variance of s.p. energies projected
# cols 5-9 show density and potential criteria as follows:
# col  5: sqrt of average (rho-rho_old)**2
# col  6: sqrt of average (aloc-aloc_old)**2 both spins
# col  7: radius
# col  8: cartesian quadrupole along z-axis
# col  9: rms spin polarization field
# iter  diff_energ  variance  variance_2  density_criteria
    10  -1.0377      0.99816      0.99748      -1.0000      -1.0000      -1.0000      -1.0000      -1.0000    
    20  1.55618E-02  7.29351E-02  5.71402E-02  4.09682E-04  1.27794E-02 -0.16396     -0.16957       0.0000    
    30  3.02194E-04  1.81479E-02  1.14565E-02  1.93524E-05  1.28346E-03 -2.79844E-03 -5.66979E-03   0.0000    
    40  4.09596E-05  5.52103E-03  3.46185E-03  5.29631E-06  2.91399E-04 -2.34535E-04 -4.27926E-04   0.0000    
    50  6.70619E-06  1.71091E-03  1.09420E-03  1.75165E-06  6.21436E-05 -4.06413E-05 -1.24499E-05   0.0000    
    60  1.51036E-06  2.05742E-04  2.04808E-04  6.99052E-07  1.32932E-05 -1.02838E-05  2.00060E-05  7.46720E-09
    70  2.39767E-07  4.78602E-05  4.78561E-05  1.11528E-07  2.36636E-06 -1.76317E-06  4.94296E-06  5.59648E-09
    80  3.87937E-08  1.13417E-05  1.13306E-05  2.46227E-08  3.09457E-07 -3.66631E-07  1.27866E-06  1.49884E-09
    90  7.90927E-09  2.68650E-06  2.68301E-06  5.72266E-09  5.01093E-08 -7.99845E-08  3.25029E-07  3.27311E-10
   100  1.68320E-09  6.35818E-07  6.34943E-07  1.34805E-09  9.76755E-09 -1.78557E-08  8.08719E-08  7.29202E-11
   110  3.65703E-10  1.50403E-07  1.50194E-07  3.18626E-10  2.14641E-09 -4.05091E-09  1.98037E-08  1.79642E-11
   120  8.09747E-11  3.55681E-08  3.55182E-08  7.53665E-11  4.96883E-10 -9.30287E-10  4.79643E-09  4.79234E-12
   130  1.82004E-11  8.41033E-09  8.39846E-09  1.78286E-11  1.17099E-10 -2.15554E-10  1.15303E-09  1.32889E-12
   140  4.15543E-12  1.98871E-09  1.98587E-09  4.21750E-12  2.77387E-11 -5.02609E-11  2.75757E-10  3.74144E-13
   150  9.85700E-13  4.70972E-10  4.69631E-10  9.97750E-13  6.57714E-12 -1.17689E-11  6.57158E-11  1.06053E-13
   160  2.04103E-13  1.38061E-10  1.11091E-10  2.36095E-13  1.55934E-12 -2.76612E-12  1.56225E-11  3.01395E-14
   170  4.44089E-14  1.00000E-10  2.62911E-11  5.58875E-14  3.69685E-13 -6.50524E-13  3.70860E-12  8.70995E-15
   180  2.34479E-14  1.00000E-10  6.17330E-12  1.33668E-14  8.84450E-14 -1.53788E-13  8.88312E-13  2.78339E-15
   190 -3.01981E-15  1.00000E-10  1.43342E-12  3.09859E-15  2.05679E-14 -3.58824E-14  2.07545E-13  2.11689E-15
   200  8.88178E-16  1.00000E-10  3.29392E-13  7.04277E-16  4.64001E-15 -8.50431E-15  4.71734E-14  2.13019E-15
