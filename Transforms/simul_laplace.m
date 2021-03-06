%IGNORE
clear variables 
clear all
syms t X(t) s x x(t) d1(t) Y y(t) X
assume([t Y] > 0);
dx = diff(x,t);
dy = diff(y,t);
coeffd1x= input('input dx/dt coefficient\n');
coeffd1y= input('input dy/dy coefficient\n');
coeffd0x= input('input non-diff x coefficient\n');
coeffd0y= input('input non-diff y coefficient\n');
equals=input('what does the equation equal? (with t terms)\n');
eqn1=coeffd1x*dx+ coeffd1y*dy+coeffd0x*x +coeffd0y*y==equals
coeffd1x1= input('2input dx/dt coefficient\n');
coeffd1y1= input('2input dy/dy coefficient\n');
coeffd0x1= input('2input non-diff x coefficient\n');
coeffd0y1= input('2input non-diff y coefficient\n');
equals1=input('2what does the equation equal? (with t terms)\n');
eqn2=coeffd1x1*dx+ coeffd1y1*dy+coeffd0x1*x+coeffd0y1*y  ==equals1
leqn1= laplace(eqn1,t,s)
leqn2=laplace(eqn2,t,s)
%inpuit initial conditions
LT_Y=subs(leqn1,laplace(x,t,s),X);
LT_Y=subs(LT_Y,laplace(y,t,s),Y);
LT_X=subs(leqn2,laplace(x,t,s),X);
LT_X=subs(LT_X,laplace(y,t,s),Y);
x0= input('x(0) equals what?\n');
y0= input('y(0) equals what?\n');
LT_Y=subs(LT_Y, x(0), x0);                  
LT_Y=subs(LT_Y, y(0), y0);
LT_X=subs(LT_X, x(0), x0);                  
LT_X=subs(LT_X, y(0), y0);
answer=solve([LT_Y,LT_X],[Y X]);
x = ilaplace(answer.X,s,t)
y = ilaplace(answer.Y,s,t)