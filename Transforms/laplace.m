clear variables
clear all
syms t n infini L a w T A s x
func =  input("input function\n");
answer = laplace(func,t,s)
%maybe instead of sin(at) write (j/2)*(exp(-j*a*t)-exp(j*a*t))
%or cos = (1/2)*(exp(-j*a*t)+exp(j*a*t))
%infinity is inf

%To do modulus/absolute you need to do positive then positive limits, then
%do the negative of thing thats modulus with negative limits

%REMEMBER H(t-pi/2) = heaviside(t-pi/2)