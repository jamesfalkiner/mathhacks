clear all
clear variables
%Flux of cylinder is div(fluxvector) r dr dO dz
%Look 2017 Q2
syms x y z r O
input = divergence(input('input flux vector [x y z]\n'),[x y z]); %PUT SOMETHING HERE IF YOU WANT, for example div?
rlimitbot=0
rlimittop=1
rint=int(input*r,r,rlimitbot, rlimittop)
Olimitbot=0
Olimittop=2*pi
Oint=int(rint,O,Olimitbot,Olimittop)
zlimitbot=-1
zlimittop=1
zint=int(Oint,z,zlimitbot,zlimittop)
disp('remember to change limits')
