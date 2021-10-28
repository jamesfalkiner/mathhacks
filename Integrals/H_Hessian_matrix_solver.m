clear variables

syms x y z

input6 = input('Input function to find gradient of\n');
if length(gradient(input6)) == 2    
    %Finds and solves hessian matrix
    Hessian_matrix = hessian(input6, [x,y,z]);
    lambda = eig(Hessian_matrix) 
    
    % BOTH EIG +VE = MIN
    % BOTH EIG -VE = MAX
    % BOTH EIG OPP = SADDLE
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %TO FIND STATIONARY POINTS CHUCK EQUATION INTO DESMOS%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end 