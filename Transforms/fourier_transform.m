clear variables
clear all
syms t n infini L a w T A
func =  input("input function\n");
limit2 = input('input top limit\n');
limit1 = input('input bottom limit\n');
answer = simplify(int(func*exp(-1i*w*t),t,limit1,limit2))
%maybe instead of sin(at) write (j/2)*(exp(-j*a*t)-exp(j*a*t))
%or cos = (1/2)*(exp(-j*a*t)+exp(j*a*t))
%infinity is inf

%To do modulus/absolute you need to do positive then positive limits, then
%do the negative of thing thats modulus with negative limits