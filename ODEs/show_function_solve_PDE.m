%Non-linear PDE has dependant variables that are non-linear in derivatives
clear all
clear variables
%These variables are really important for PDEs
syms x u u(t) u(x,t) a u(x)
u  = input('input function of u(x,t)\n')
bound1 = simplify(input('input du/something RHS\n'))
bound2 = simplify(input('input du/something LHS\n'))
if bound1==bound2
    disp('same')
else
    disp('not same')
end
%If RHS equals LHS then job done