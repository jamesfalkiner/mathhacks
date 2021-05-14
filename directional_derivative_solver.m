syms x y z
a = input('Input direction vector e.g. [i j k] or [2 1] \n');
unit_vector = a/norm(a);

gradient2 = input('Input function to find gradient of\n');
answer = dot(gradient(gradient2), unit_vector)
inputx = input('Input x\n');
inputy = input('Input y\n');
inputz = input('Input z\n');
subs(answer, [x, y, z], [inputx, inputy, inputz])
