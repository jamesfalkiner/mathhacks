clear variables
syms x y z r a t e
% F(r(t)) · r'(t)dt
param  = input('input curve in terms of y e.g. [exp(1).^-x]\n');
param1 = subs(param, x, t);
param2 = [t, param1]
path  = input('input F [i j] \n');
diffparam = diff(param2,t)
diffparam1 = subs(diffparam, e, exp(1));
pathparam1 = subs(path, y, param2(2));
pathparam2 = subs(pathparam1, x, param2(1))
toint = dot(pathparam2,diffparam);
% 1 == log((3060513257434037/1125899906842624)/(3060513257434037/1125899906842624)
answer = int(toint,t,0,1)
% diffparam and pathparam2 work
% dot then integrate for answer