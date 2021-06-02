%dA for cyclinder is rdOdrk
clear all
clear variables
syms x y z r O
divd=input('input vector field equation[x y z]\n')
divd=subs(divd,x,r*cos(O))
divd=subs(divd,y,r*sin(O))
plane=input('input what plane to do this i.e. z=1 is (x,y) [0 0 1]\n')
FdA=dot(divd,r*plane)
intangles=int(FdA,O,0,pi*2);
rlimit=input('input maximum radius\n')
intr=simplify(int(intangles,r,0,zlimit))