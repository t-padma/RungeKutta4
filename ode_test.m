% define function in separate file
function dXdt = ode_test(t,X) 

X = zeros(2,1);
lambda = 2;
zeta = 1;

dxdt(1) = X(2);

