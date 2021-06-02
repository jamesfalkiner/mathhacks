clear all
clear variables
%Volume of cylinder is r dr dO dz
syms x y z r O
input = 1; %PUT SOMETHING HERE IF YOU WANT, for example div?
rlimitbot=0
rlimittop=1
rint=int(input*r,r,rlimitbot, rlimittop)
Olimitbot=0
Olimittop=2*pi
Oint=int(rint,O,Olimitbot,Olimittop)
zlimitbot=-1
zlimittop=1
zint=int(Oint,z,zlimitbot,zlimittop)
