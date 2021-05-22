clear variables
syms x y z r a t
point1 = input('Input 1st point \n');
point2 = input('Input 2st point \n');

path  = input('Input path in terms of y \n');
y_value = subs(path,x,t)

vector = [t y_value];
limits2=point1(1);
limits1=point2(1);
pointsx = point2(1)-point1(1);
pointsy = point2(2)-point1(2);


mod1 = sqrt(sym((pointsx.^2+pointsy.^2)))

input1 = input('Input r in cartesian in terms of x and y e.g. x.^2+y.^2)\n');
thing1 =  subs(input1, x, t)
disp(y_value)
thing2 = subs(thing1, y, vector(2))

answer = int((thing2*mod1),t,limits1,limits2)
%Be careful, answer might be negative of actual answer