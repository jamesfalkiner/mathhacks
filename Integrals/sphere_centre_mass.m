%To find centre value of. Finds x and y and z coordinate of
%centre of sphere by converting to polar
%formula for x coordinate =  1/V = III x dxdydz
%first we find the volume of region and limits
clear variables

syms x y z a b c O p r

%Volume
limit1 = input('insert 1st start angle (in radians)\n');
limit2 = input('insert 1st final angle (in radians)\n');
limit3 = input('insert 2nd start angle (in radians)\n');
limit4 = input('insert 2nd final angle (in radians)\n');
radiusO=input('insert outer radius (in radians)\n');
radiusI=input('insert inner radius (in radians) (usually 0)\n');
intVradius=int(r.^2,r,radiusI,radiusO);
intVone=int(sin(O),O,limit1,limit2);
intVtwo=int(1,p, limit3,limit4);
volume=intVradius*intVone*intVtwo

%xcoord
intXradius=int(r.^3,r,radiusI,radiusO);
intXone=int(sin(O).^2,O,limit1,limit2);
intXtwo=int(cos(p),p, limit3,limit4);
xcoord=intXradius*intXone*intXtwo/volume
%ycoord
intYradius=int(r.^3,r,radiusI,radiusO);
intYone=int(sin(O).^2,O,limit1,limit2);
intYtwo=int(sin(p),p, limit3,limit4);
ycoord=intYradius*intYone*intYtwo/volume
%zcoord
intZradius=int(r.^3,r,radiusI,radiusO);
intZone=int(cos(O),O,limit1,limit2);
intZtwo=int(1,p, limit3,limit4);
zcoord=intZradius*intZone*intZtwo/volume

