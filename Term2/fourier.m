%Need to find an, bn
%fourier is ao/2 + sumtoinfinity(ancos(2*pi*n*t/period)+bnsin(2*pi*n*t/period))
clear variables
clear all
syms t n infini L
func =  input("input function\n");
limit2 = input('input top limit\n');
limit1 = input('input bottom limit\n');
period = input('input period\n');
w1=(2*pi)/period
a0divide2=int(func*cos(0*t*w1),t,limit1,limit2)/2;
a0divide2 = 2*a0divide2/period
a0 = a0divide2*2
an=int(2*func*cos(n*t*w1)/period,t,limit1,limit2)
an = subs(an, cos(pi*n),(-1).^n);
an = subs(an, sin(pi*n),0);
an=subs(an, (2*sin((pi*n)/2)^2), 1-cos(pi*n));
bn=int(2*func*sin(n*t*w1)/period,t,limit1,limit2)
bn = subs(bn, cos(pi*n),(-1).^n);
bn = subs(bn, sin(pi*n),0);
%remember that (2*sin((pi*n)/2)^2) =  1-(-1).^n
%cos(pi*n) = ,(-1).^n
%sin(pi*n)=0
%Then remember that a0divide2+sumtoinfinity(ancos(nt+bnsin(nt))

%better formula for an = (2/period)*int(func*cos*(n*t*w) or an =  (2/period)int(func*cos*((2*pi*n*t)/period)
%where w is (2*pi)/period


