clear
syms x y z t p;
F = [y.^2*cos(z) 2*x*y*cos(z) -x*y.^2*sin(z)];
vectorPotential(F, [x y z])