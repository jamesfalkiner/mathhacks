syms x y z t a
%This is a self enter program y = piecewise(x<-2, -2, -2<x<2, x, x>2, 2);
func = piecewise(t>0,t*exp(-t),0);
fplot(func,[-10,20])
