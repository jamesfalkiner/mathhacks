syms x y z a b
input1 = input('insert cartesian to integrated twice\n');
limit1 =input('insert limit 1 (inner limit top)\n');
limit2 =input('insert limit 2(inner limit bottom)\n');
firstintegral =input('integrate 1st in terms of?(inner)\n');
limit3 =input('insert limit 3(outer limit top)\n');
limit4 =input('insert limit 4(outer limit bottom)\n');
secondintegral = input('integrate 2nd in terms of?(outer)\n');

intone =  int(input1, firstintegral, limit1, limit2)
answer = int(intone, secondintegral, limit3, limit4)


%note to find second moment of area you need to evaluate int(y.^2)dxdy first sketch, then you do the
%limits as the curves in terms of y and integrate with x then you do the y
%limits and integrate with with y then do it all again but with int(x.^2)dxdy

%CONVERT TO POLAR IF sqrt(x.^2+y.^2)