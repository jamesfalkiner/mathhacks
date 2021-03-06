%Need to find an, bn
%fourier is ao/2 + sumtoinfinity(ancos(2*pi*n*t/period)+bnsin(2*pi*n*t/period))
clear variables
clear all
syms t n infini L a
assume(n,{'positive','integer'})
func =  input("input function\n");
limit2 = input('input top limit\n');
limit1 = input('input bottom limit\n');
period = input('input whole period (not half)\n');
w1=(2*pi)/period
a0 = int(2*func*cos(0*t*w1)/period,t,limit1,limit2)
an1=int(2*func*cos(n*t*w1)/period,t,limit1,limit2);
an = subs(an1, cos(pi*n),(-1).^n);
an = subs(an, sin(pi*n),0);
an=subs(an, (2*sin((pi*n)/2).^2), 1-(-1).^n)
ansimp=simplify(an1)
bn1=int(2*func*sin(n*t*w1)/period,t,limit1,limit2);
bn = subs(bn1, cos(pi*n),(-1).^n);
bn = subs(bn, sin(pi*n),0);
bn=subs(bn, (2*sin((pi*n)/2).^2), 1-(-1).^n)
bnsimp=simplify(bn1)
%remember that (2*sin((pi*n)/2)^2) =  1-(-1).^n
%cos(pi*n) = ,(-1).^n
%sin(pi*n)=0

%better formula for an = (2/period)*int(func*cos*(n*t*w) or an =  (2/period)int(func*cos*((2*pi*n*t)/period)
%where w is (2*pi)/period

%even is f(-x)=f(x) e.g. an has values (cos) and sub in n=2m
%odd if f(-x) = -f(x) e.g. bn has values (sin) and sub in n=2m-1

