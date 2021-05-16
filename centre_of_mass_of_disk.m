%To find centre value of a circular point. Finds x and y coordinate of
%centre of circle or percentage of circle.

syms x y z a b O
base = r.^2;
yvalue= sin(O);
xvalue= cos(O);
limit1 = input('insert radius of outer circle\n');
limit2 = input('insert radius of inner circle (usually 0)\n');
limit3 = input('insert start angle (in radians)\n');
limit4 = input('insert final angle (in radians)\n');
totalangle =  limit4-limit3;
totalareaouter=(angle/2*pi)*pi*(limit1.^2)
totalareainner=(angle/2*pi)*pi*(limit2.^2)
totalarea=totalareaouter-totalareainner;
inttwoy = int(yvalue,O,limit4,limit3)
inttwox = int(xvalue,O,limit4,limit3)
intone =  int(base, r, limit1, limit2)
answery =(1/area)*inttwoy*intone
answerx=(1/area)*inttwox*intone
vpaofy=vpa(answery)
vpaofx=vpa(answerx)
