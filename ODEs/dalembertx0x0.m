clear all
clear syms
syms c t x f(x) g(x) k a b
% FOR WHEN utt = c^2uxx

non_diff = input("INput your oundary condition for u(x,0) \n");
is_diff = input("Input yoyr oundary cionitui for ut(x,0) \n");

equation_1 = a + b==non_diff
asdf=subs(int(is_diff/c,x),0,k)
equation_2=-a+b==asdf
sol=solve([equation_1,equation_2],[a,b])
disp(sol.a)
disp(sol.b)
disp('dfsdf')
fxminusct=subs(sol.a,x,x-c*t)
gxplusct=subs(sol.b,x,x+c*t)
answer=fxminusct+gxplusct