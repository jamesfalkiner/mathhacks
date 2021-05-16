syms x y z a r O
base = r.^2;
limit1 =input('insert radius of widest circle (inner limit top)\n');
limit2 =input('insert radius of smallest\n');
intone =  int(base, r, limit2, limit1)
angle=1;
limit3 =input('insert start angle\n');
limit4 =input('insert final angle\n');
inttwo= int(angle,O,limit3,limit4)

answer = intone*inttwo

%CONVERT TO POLAR IF sqrt(x.^2+y.^2)
%USE DESMOS