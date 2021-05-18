%IGNORE
clear variables 
clear all
syms t X(t) s x x(t) d1(t) Y y(t)
assume([t Y] > 0);
dx = diff(x,t);
dy = diff(y,t);
coeffd1x= input('input dx/dt coefficient\n');
coeffd1y= input('input dy/dy coefficient\n');
coeffd0x= input('input non-diff x coefficient\n');
coeffd0y= input('input non-diff y coefficient\n');
equals=input('what does the equation equal? (with t terms)\n');
eqn1=coeffd1x*dx coeffd1y*dy+coeffd0*x ==equals

leqn1= laplace(eqn1,t,s);
%inpuit initial conditions
LT_Y=subs(leqn1,laplace(x,t,s),Y);
LT_Y=subs(LT_Y, x(0), input('x(0) equals what?\n'));                            %  y(0) = 1
LT_Y=subs(LT_Y, subs(diff(x(t), t), t, 0), input('dx/dt(0) equals what?\n'));
ys=solve(LT_Y,Y);
x = ilaplace(ys,s,t)
ezplot(x); shg