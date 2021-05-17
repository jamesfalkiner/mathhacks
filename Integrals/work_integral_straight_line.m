clear variables
syms x y z r a t
param  = input('input parameterisation so that start point and end points are 0 and 1, e.g. [t t.^2]\n');
path  = input('input F [i j] \n');
diffparam = diff(param);
pathparam1 = subs(path, y, param(2));
pathparam2 = subs(pathparam1, x, param(1));
toint = dot(pathparam2,diffparam);
answer =  int(toint,t,0,1)

%If input is curve, in the form y = F(x), set the input to by [t F(t)]
%If limits are not 1 and 0, simply times by the multiplier that would make
%1 and zero, e.g. if its 0<x<1/4, the input becomes [t/4 F(t/4) (divide all
%xs by 0
%Question will be like evaluate int(F,r)
