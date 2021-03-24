#!/bin/bash
echo $1.gnu
gnuplot $1.gnu
pdflatex $1.tex
\rm $1.aux $1.tex $1.log
evince $1.pdf
