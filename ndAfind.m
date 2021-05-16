syms x u v y z
%input [u, v, 2u+3v]
input1 = input("Input r to ndA\n");
diff1 = diff(input1,u);
diff2=diff(input1,v);
ndA=cross(diff1,diff2)

%to calculate surface integral with ndA do II F(r)*ndA and sub r into F and
%use the limits of r as the limits