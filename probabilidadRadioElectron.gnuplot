# gnuplot
reset
set encoding utf8
#set terminal epslatex size 14cm,9cm color
set output 'grafProbabilidadRadioElectron.tex'
a0 = 0.5e-10
Z = 70
a = a0/Z
r0 = 1.25e-15
A= 173
R = r0*A**(1./3)
phi(r) = 1/(sqrt(pi*a**3))*exp(-r/a)
P(r) = 4*pi*r**2*abs(phi(r))**2
set samples 1000
set dummy r
set xlabel "Distancia radial [m]" font "Times-Roman,18"
set ylabel "Densidad de probabilidad" font "Times-Roman,18"
set xtics font "Times-Roman, 12"
unset ytics
unset border
set grid
set style line 1 lw 3 lc rgb "orange"
set xzeroaxis lt 1 lc rgb "black" lw 1.5
set yzeroaxis lt 1 lc rgb "black" lw 1.5
set key font ",24"
plot [0:(16./3*a)] P(r) lw 7 lc rgb "#556B2F"
