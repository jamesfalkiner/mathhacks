clear variables
clear all
syms t n infini L a w T A
func =  input("input function\n");
limit2 = input('input top limit\n');
limit1 = input('input bottom limit\n');
answer = (1/(2*pi))simplify(int(func*exp(1i*w*t),w,limit1,limit2))
%maybe instead of sin(at) write (j/2)*(exp(-j*a*t)-exp(j*a*t))
%or cos = (1/2)*(exp(-j*a*t)+exp(j*a*t))
%infinity is inf