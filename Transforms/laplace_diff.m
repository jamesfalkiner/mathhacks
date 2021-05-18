clear variables 
clear all
syms t X(t) s x x(t) d1(t) Y
assume([t Y] > 0);
d1 = diff(x,t);
d2=diff(d1,t);
coeffd2= input('input d2 coefficient\n');
coeffd1= input('input d1 coefficient\n');
coeffd0= input('input non-diff coefficient\n');
equals=input('what does the equation equal?\n');
eqn1=coeffd2*d2+coeffd1*d1+coeffd0*x ==equals
leqn1= laplace(eqn1,t,s);
%inpuit initial conditions
LT_Y=subs(leqn1,laplace(x,t,s),Y);
LT_Y=subs(LT_Y, x(0), input('x(0) equals what?\n'));                            %  y(0) = 1
LT_Y=subs(LT_Y, subs(diff(x(t), t), t, 0), input('dx/dt(0) equals what?\n'));
ys=solve(LT_Y,Y);
x = ilaplace(ys,s,t)
ezplot(x); shg