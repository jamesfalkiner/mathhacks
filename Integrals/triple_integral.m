syms x y z a b O p o r u v
input1 = input('insert cartesian to integrated thrice\n');
limit2 =input('insert limit 1 (inner limit top)\n');
limit1 =input('insert limit 2(inner limit bottom)\n');
firstintegral =input('integrate 1st in terms of?(inner)\n');
limit4 =input('insert limit 3(middle limit top)\n');
limit3 =input('insert limit 4(middle limit bottom)\n');
secondintegral = input('integrate 2nd in terms of?(outer)\n');
limit6 =input('insert limit 5(last limit top)\n');
limit5 =input('insert limit 6(last limit bottom)\n');
thirdintegral = input('integrate 3nd in terms of?(outer)\n');

intone =  simplify(int(input1, firstintegral, limit1, limit2))
inttwo = simplify(int(intone, secondintegral, limit3, limit4))
intthree = simplify(int(inttwo, thirdintegral, limit5, limit6))

%May be negative, manually check with second integral
%note to find second moment of area you need to evaluate int(y.^2)dxdy first sketch, then you do the
%limits as the curves in terms of y and integrate with x then you do the y
%limits and integrate with with y then do it all again but with int(x.^2)dxdy

%USE POLAR IF sqrt(x.^2+y.^2)