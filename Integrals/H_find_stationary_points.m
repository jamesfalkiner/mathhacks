syms x y z

equation = input('insert equation in form f(x) = ');
dx = diff(equation,x);
dy = diff(equation,y);
dx_simplify = simplify(dx)
dy_simplify = simplify(dy)
dx_solve = solve(dx,x)
dy_solve = solve(dy,y)
