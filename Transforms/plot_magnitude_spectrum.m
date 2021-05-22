clear variables
clear all
syms t n infini L a w
funct = -(a*sin((pi*w)/a)*2i)/(a^2 - w^2); %input function
funct=subs(funct,a,2)
%note can only be in terms of one variable
fplot(norm(funct),[-10,10])