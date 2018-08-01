#!/bin/bash
gnuplot *.gnuplot
pdflatex --output-directory=aux FF3_2015_Resuelto.tex
