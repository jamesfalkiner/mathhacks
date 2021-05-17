syms x y z x0 y0 z0

input3 = input('Input function to find gradient of\n');
inputx = input('Input x\n');
inputy = input('Input y\n');
inputz = input('Input z\n');
gradient3 = gradient(input3);
normal = subs(gradient3, [x, y, z], [inputx, inputy, inputz]);
equation = dot([(x - inputx), (y - inputy), (z - inputz)], normal)