syms x y z real

equation = input('insert equation in form everything = 0');
point = input('insert point of tangent in form [1 2 3]');
grad = gradient(equation);
grad = subs(grad,x,point(1));
grad = subs(grad,y,point(2));
grad = subs(grad,z,point(3));
grad=grad.'
a = ([x,y,z]-point)
ans = dot(a, grad)

% answer in form everything = 0