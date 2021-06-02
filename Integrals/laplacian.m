clear variables
syms x y z lrl
input= input('input scalar function\n');
first= diff(input,2,x);
second=diff(input,2,y);
third=diff(input,2,z);
answer1=simplify(first+second+third)
subs1=subs(answer1, x^2 + y^2 + z^2, lrl.^2)
disp('be careful with dividing and sometimes the top kinda does weird stuff')