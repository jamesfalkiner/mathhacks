clear all
clear variables
syms x y z k a b c %If other constants are used, add to this list. Or just use string
%Remember always include i j and k, even if k = 0!!
input1 = input('Input formula to be div/curl e.g. [1 2 3] or [2x 0 69z]\n');
div1 = divergence(input1,[x y z])
curl1 =  curl(input1,[x y z])
divsimp=simplify(div1)
curlsimp = simplify(curl1)

%Incompressible/solenoidal, div =  0
%Irrotational, curl = 0
%Note every irrotational (fluids) field is conservative (EM), but not vice versa

%Note curl(u x v) = -curl(v x u)
%           div(u x v) = - div(v x u)