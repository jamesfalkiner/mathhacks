%Need to find an, bn
%half range fourier is ao/2 + sumtoinfinity(ancos(pi*n*t/period)+bnsin(pi*n*t/period))
clear variables
clear all
%For half range (same period but half the range in the cosines

syms t n infini L a
func =  input("input function\n");
limit2 = input('input top limit\n');
limit1 = input('input bottom limit\n');
period = input('input period\n');
w1=(pi)/period
a0=int(2*func*cos(0*t*w1)/period,t,limit1,limit2)
an=int(2*func*cos(n*t*w1)/period,t,limit1,limit2);
an = subs(an, cos(pi*n),(-1).^n);
an = subs(an, sin(pi*n),0);
an=subs(an, (2*sin((pi*n)/2).^2), 1-(-1).^n)
bn=int(2*func*sin(n*t*w1)/period,t,limit1,limit2);
bn = subs(bn, cos(pi*n),(-1).^n);
bn = subs(bn, sin(pi*n),0);
bn=subs(bn, (2*sin((pi*n)/2).^2), 1-(-1).^n)
%remember that (2*sin((pi*n)/2).^2) =  1-(-1).^n
%cos(pi*n) = (-1).^n
%sin(pi*n)=0
%Then remember that a0divide2+sumtoinfinity(ancos(nt+bnsin(nt))

%better formula for an = (2/period)*int(func*cos*(n*t*w) or an =  (2/period)int(func*cos*((2*pi*n*t)/period)
%where w is (2*pi)/period

%remember that n ~= 1 means when n is not equal to 1

%even is f(-x)=f(x) e.g. an has values (cos)
%odd if f(-x) = -f(x) e.g. bn has values (sin)