#!/usr/bin/gnuplot
#: Description: This script show the lemniscate of bernoulli

set term dumb
unset ytics
unset xtics
unset key
set parametric
y(t)=(cos(t)*sin(t))/(((sin(t))**2)+1)
x(t)= cos(t)/(((sin(t))**2)+1)
plot x(t),y(t)
