clear
syms x y z t r
F=[2*y.^2*cos(z) 4*x*y*cos(z) -2*x*y.^2*sin(z)]
%F=subs(F,x,radius*cos(t))
F=subs(F,x,3*cos(t))
F=subs(F,y,3*sin(t))
F=subs(F,z,0)
todiff=[-3*sin(t) 3*cos(t) 0]
dotted=simplify(dot(todiff,F))
answer=int(dotted,t,0,2*pi)
