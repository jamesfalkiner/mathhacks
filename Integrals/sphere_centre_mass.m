%To find centre value of. Finds x and y and z coordinate of
%centre of sphere by converting to polar
%formula for x coordinate =  1/V = III x dxdydz
%first we find the volume of region and limits
clear variables

syms x y z a b c O p r

%Volume
limit1 = input('insert 1st start angle (in radians)\n');
limit2 = input('insert 1st final angle (in radians) between 0 and 2*pi\n');
limit3 = input('insert 2nd start angle (in radians) between 0 and pi\n');
limit4 = input('insert 2nd final angle (in radians)\n');
radiusO=input('insert outer radius (sqrt(a.^2))\n');
radiusI=input('insert inner radius(usually 0)\n');
intVradius=int(r.^2*sin(p),r,radiusI,radiusO);
intVone=int(intVradius,O,limit1,limit2);
intVtwo=int(intVone,p, limit3,limit4);
volume=intVtwo

%xcoord
intXradius=int(r.^3*sin(O).^2*cos(p),r,radiusI,radiusO);
intXone=int(intXradius,O,limit1,limit2);
intXtwo=int(intXone,p, limit3,limit4);
xcoord=intXtwo/volume
%ycoord
intYradius=int(r.^3*sin(O).^2*sin(p),r,radiusI,radiusO);
intYone=int(intYradius,O,limit1,limit2);
intYtwo=int(intYone,p, limit3,limit4);
ycoord=intYtwo/volume
%zcoord
intZradius=int(r.^3*cos(O)*sin(O),r,radiusI,radiusO);
intZone=int(intZradius,O,limit1,limit2);
intZtwo=int(intZone,p, limit3,limit4);
zcoord=intZtwo/volume


