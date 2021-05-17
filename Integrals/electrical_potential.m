syms x y z
gradient5 = input('Input function to find gradient of\n');
inputx = input('Input x\n');
inputy = input('Input y\n');
inputz = input('Input z\n');
answer = gradient(gradient5);
subs(answer, [x, y, z], [inputx, inputy, inputz])
%IF QUESTION ASKS FOR DIRECTION USE UNIT VECTOR CALC