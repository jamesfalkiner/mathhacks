syms x y z t a
%This is a self enter program y = piecewise(x<-2, -2, -2<x<2, x, x>2, 2);
func = piecewise(norm(t)>pi/a,0,norm(t)<=pi/a,sin(a*t));
func =  subs(func,a,2)
fplot(func,[-10,20])
