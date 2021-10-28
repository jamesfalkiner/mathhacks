clear variables
clear all
syms t n infini L a w
assume(t>1)
funct =exp(-w*1i)/(2 + w*1i); %input function
funct=simplify(subs(funct,a,2))
%note can only be in terms of one variable
fplot(norm(funct),[-100,100])