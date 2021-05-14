clear variables
syms x y z r a t
point1 = input('Input worst point \n');
point2 = input('Input best point \n');

path  = input('input F [i j] \n');
thing1 =  subs(path, x, t)
thing2 = subs(thing1, y, t)

limits1 = 1
limits2 = 0


toint =  dot(thing2, [1 1])

answer = int((toint),t,limits2,limits1)
%Be careful, answer might be negative of actual answer
%DOES NOT WORK DO NOT USE