#!/usr/bin/gnuplot
# Description :  This script show Kepler's third law 
set term qt
set title "Kepler's third on Jupiter"
set xlabel "a**3"
set ylabel "T**2"
unset key
set datafile separator ","
plot "joviansatellites.csv" using (($2)**3):(($3)**2) with linesp
pause -1


