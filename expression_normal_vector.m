clear variables

syms v u

%useful for flux integrals, use outward facing normal (should be positive)
%for sphere, multiply all components of vector by radius
%for cylinder, multiply the i and j components by the sqrt of the
%coefficient of x and y respectively
vector = input('insert parameterised vector, e.g [u u v] for x =y or \n[r*cos(u)*sin(v) (r)*sin(u)*sin(v) r*cos(v)] for \nsphere or [2*cos(u) 3*sin(u) v] for cylinder\n');
diffu = diff(vector,u)
diffv = diff(vector, v)
normal =  cross(diffu, diffv)
answer = simplify(normal/sqrt(normal(1).^2+normal(2).^2+normal(3).^2))

%be careful for spheres, this doesn't really work for them but give them a
%shot anyway