clear variables

syms x y z

input1 = input('Input function to find gradient of\n');
gradded=gradient(input1, [x y z])==0
stationarypoints=[solve(gradded(1),x),solve(gradded(2),y),solve(gradded(3),z)]
disp('if it fails here, you need to find the multiple points xx')
    %Finds and solves hessian matrix
    Hessian_matrix = hessian(input1);
    lambda = eig(Hessian_matrix) 
    
    % ALL EIG +VE = MIN
    % ALL EIG -VE = MAX
    % SOME EIG OPP = SADDLE
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %TO FIND STATIONARY POINTS CHUCK EQUATION INTO DESMOS%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%