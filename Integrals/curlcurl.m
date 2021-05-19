%curl curl v = grad(div v) − grad.^2v
clear all
clear variables
syms a b c x y z
curl1 =  curl([x*y y*z z*x],[x y z])
curl2 =  curl(curl1,[x y z])