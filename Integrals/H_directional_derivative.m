syms x y z a
a = input('Input direction vector e.g. [i j k] or [2 1 3] \n');
unit_vector = a/(sqrt(a(1).^2+a(2).^2+a(3).^2));

gradient2 = input('Input function to find gradient of\n');
gradient2 = gradient(gradient2);
if length(unit_vector) ~= length(gradient2)
    gradient2(3) = 0;
end
answer = dot(gradient2, unit_vector)
inputx = input('Input x\n');
inputy = input('Input y\n');
inputz = input('Input z\n');
subs(answer, [x, y, z], [inputx, inputy, inputz])
