%To find volume of region in first octant bounded by a circle

syms x y z a b c O
input1 = input('insert equation of bounded region (e.g. x==2)\n');
inxterms = solve(input1,x);
inyterms=solve(inxterms,y);
inzterms=solve(inyterms,z);
intone=int(1,x,0,inxterms)
inttwo=int(intone,y,0,inyterms)
intthree=int(inttwo,z,0,inzterms)
