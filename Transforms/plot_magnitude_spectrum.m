clear variables
clear all
syms t n infini L a w
funct = w/pi; %input function
funct=subs(funct,a,2)
%note can only be in terms of one variable
fplot(norm(funct),[-10,10])