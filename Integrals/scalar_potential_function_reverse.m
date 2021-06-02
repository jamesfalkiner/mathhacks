syms x y z k %If other constants are used, add to this list. Or just use string
%Remember always include i j and k, even if k = 0!!
input1 = input('Input gradient e.g. [1 2 3] or [2x 0 69z]\n');
xint = int(input1(1),x)
yint = int(input1(2),y)
zint = int(input1(3),z)

answer = simplify(xint+yint+zint)
%Apply some common sense to the result and you should be fine (divide by 3
%usually)
%Usually there are no scalars in the correct answer so if you get 3x +2y as
%your result, the answer is usually x+y
%REMEMBER TO ADD CONSTANT