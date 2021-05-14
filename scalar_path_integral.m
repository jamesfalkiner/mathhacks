clear variables
syms x y z r a t
input1 = input('Input r in cartesian e.g. 2*x - y (set equal to 0)\n');
diff1= diff(input1,t)
%diff2=diff(input1(2),t)
%diff3=diff(input1(3),t)
mod1 = simplify(sqrt(diff1(1).^2+diff1(2).^2+diff1(3).^2));
limits1 = input("Input minimum limit (time limits)");
limits2 = input("Input maximum limit (time limits)");
answer =  int(mod1,t,limits1,limits2)