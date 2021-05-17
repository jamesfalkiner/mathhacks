clear variables
clear all
syms t n infini L a w T A
%assume(a>0)
func =  input("input function\n");
answer=fourier(func)
%assume(a,'clear')
%You can assumptions, check out this website
%https://uk.mathworks.com/help/symbolic/sym.fourier.html