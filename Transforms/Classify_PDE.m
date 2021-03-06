%Order is the order of the highest derivative that occurs
%Independant variables are the bottom of the differential
%Dependant variables are on the top

%Linear - dependant variables and derivatives appear only linearly
%Homogenous is when all terms contain dependant variables

%Semilinear is when it's linear 
%Semilinear is when a pde is linear if you only consider terms in
%derivatives

%Non-linear PDE has dependant variables that are non-linear in derivatives
clear all
clear variables
syms x

a=input('input coefficent of uxx\n');
b=input('input coefficent of uxy\n');
c=input('input coefficent of uyy\n');

answer=b.^2-4*a*c

if answer ==0
    disp('parabolic')
elseif answer>0
    disp('hyperbolic')
elseif answer<0
    disp('elliptic')
end
