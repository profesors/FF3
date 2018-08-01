# gnuplot
set encoding utf8
set terminal epslatex size 14cm,7cm color
#set size 1.0
set output 'grMoléculaDiatómica.tex'
#set title "Distancia entre los núcleos de los átomos" font ",24"
k = 8.99e9
e = 1.6e-19
B = 1e-78
U(r) = (((-k*e**2)/r)+(B/r**6))/e
set samples 1000
set dummy r
set xlabel "Radio [m]" font "Times-Roman,18"
set ylabel "Energía [eV]" font "Times-Roman,18"
set xtics font "Times-Roman, 12"
set ytics font "Times-Roman, 12"
unset border
set xtics 2e-10,4e-10,10e-10
set ytics -10, 2, 10
set grid
set style line 1 lw 3 lc rgb "orange"
set xzeroaxis lt 1 lc rgb "black" lw 1.5
set yzeroaxis lt 1 lc rgb "black" lw 1.5
set key font ",24"
#set object 1 ellipse at 1.21e-10,U(1.21e-10) size screen 0.0175,0.025 front fc rgb "blue" fillstyle solid 1.0
set object 1 ellipse at 1.21e-10,U(1.21e-10) size screen 0.025/2,0.025 front fc rgb "blue" fillstyle solid 1.0
set label 1 "Radio de equilibrio" at 0.1e-10,U(1.21e-10)-1 left front font ",12"
set arrow 1 from 0,U(1.21e-10) to 1.21e-10,U(1.21e-10) nohead ls 2 lw 4 dt 3
plot [0:1.5e-9][-12:12] U(r) lw 7 lc rgb "orange"
