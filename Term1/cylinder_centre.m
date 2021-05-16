%Use cylindrical polar co-ordinates to evaluate with cone

clear variables

syms x y z a b c O p r

%Volume
equationin = input('insert equation to evaluate\n');
equation= subs(equationin, x.^2+y.^2,r.^2)
radiusO=input('insert outer radius(usually z)\n');
radiusI=input('insert inner radius (usually 0)\n');
limit1 = input('insert 1st start angle (in radians)\n');
limit2 = input('insert 1st final angle (in radians)\n');
limit3 = input('insert max z\n');
limit4 = input('insert minimum z\n');
intVradius=int(r*equation,r,radiusI,radiusO)
intVone=int(intVradius,O,limit1,limit2)
intVz=int(intVone,z, limit4,limit3)


