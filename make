#!/bin/bash
gnuplot *.gnuplot
pdflatex --output-directory=output FF3_2014_2015_Resuelto.tex
