clear variables
clear all
syms t n infini L a w
funct = - 1/(a - w*1i) + 1/(a + w*1i); %input function
funct=subs(funct,a,2)
%note can only be in terms of one variable
fplot(norm(funct),[-10,10])