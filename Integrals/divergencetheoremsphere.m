syms x y z r O p
input1=input('input F [1 2 z] \n');
div1= divergence(input1, [x y z]);
div1=subs(div1, x, r*sin(O)*cos(p));
div1=subs(div1,y, r*sin(O)*sin(p));
div1=subs(div1,z,r*cos(O));
syms x y z a b O p o r u v
input1 = div1*r.^2*sin(O)
limit2 =input('insert radius (inner limit top)\n');
limit1 =input('insert radius(inner limit bottom)\n');
firstintegral =r
limit4 =input('insert O(middle limit top) max pi \n');
limit3 =input('insert O(middle limit bottom)\n');
secondintegral = O
limit6 =input('insert p (last limit top) max 2*pi\n');
limit5 =input('insert limit 6(last limit bottom)\n');
thirdintegral = p

intone =  simplify(int(input1, firstintegral, limit1, limit2))
inttwo = simplify(int(intone, secondintegral, limit3, limit4))
intthree = simplify(int(inttwo, thirdintegral, limit5, limit6))


%note to find second moment of area you need to evaluate int(y.^2)dxdy first sketch, then you do the
%limits as the curves in terms of y and integrate with x then you do the y
%limits and integrate with with y then do it all again but with int(x.^2)dxdy

%USE POLAR IF sqrt(x.^2+y.^2)