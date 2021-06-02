clear variables
syms x y z r a t
param  = input('input curve in terms of x and y e.g. [t exp(1).^-t]\n');
path  = input('input F [i j] \n');
diffparam = diff(param);
pathparam1 = subs(path, y, param(2));
pathparam2 = subs(pathparam1, x, param(1));
toint = dot(pathparam2,diffparam);
answer = int(toint,t,0,1)
