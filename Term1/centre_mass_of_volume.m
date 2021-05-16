%To find centre value of a circular point. Finds x and y and z coordinate of
%centre of NOT A SPHERE
%formula for x coordinate =  1/V = III x dxdydz
%first we find the volume of region and limits
clear variables

syms x y z a b c O
input1 = input('insert equation of bounded region (e.g. x==2)\n');
inxterms = solve(input1,x);
inyterms=solve(inxterms,y);
inzterms=solve(inyterms,z);

intVone=int(1,x,0,inxterms);
intVtwo=int(intVone,y,0,inyterms);
volume1=int(intVtwo,z,0,inzterms)

intxone=int(x,x,0,inxterms);
intxtwo=int(intxone,y,0,inyterms);
intxthree=int(intxtwo,z,0,inzterms);
xoordinate=intxthree/volume1

intyone=int(y,x,0,inxterms);
intytwo=int(intyone,y,0,inyterms);
intythree=int(intytwo,z,0,inzterms);
yoordinate=intythree/volume1

intzone=int(z,x,0,inxterms);
intztwo=int(intzone,y,0,inyterms);
intzthree=int(intztwo,z,0,inzterms);
zoordinate=intzthree/volume1

