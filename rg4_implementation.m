%% 4th order Runge-Kutta method

% The built-in MATLAB function for runge-kutta is ode45(). 
% It can be used to simulate 
% a trajectory from a general non-linear ODE. 


% initialize values for Lorenz Diff. Eqns
Y0 = [-8; 8; 27]; 
sigma = 10;
rho = 28;
beta = 8/3;

% time points at which we want to predict trajectory 
dt = 0.01;
tspan = [0: dt: 4];

Y_now = Y0;
Y_trajectory = [Y0 zeros(3,401)];
t_index = 1;
for t = tspan
    Y_next = rg4_step(lorenz(0,Y0, sigma, rho, beta), Y_now,t, dt);
    Y_trajectory(1:3,t_index) = Y_next;
    Y_now = Y_next;
    t_index = t_index + 1;
end

plot3(Y_trajectory(1,:),Y_trajectory(2,:),Y_trajectory(3,:),'o')
xlabel('Y1')
ylabel('Y2')
zlabel('Y3')
title('Lorenz trajectory for sigma = 10, rho = 28, beta = 8/3')