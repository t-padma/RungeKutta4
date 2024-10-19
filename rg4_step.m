function [Y_next] = rg4_step(fun, Y_now,t_now, dt) 
%RG4_STEP computes a single Runge Kutta fourth order update
% Inputs: function, current Y, current time, time step size

% vector field in current position 
f1 = fun(t_now, Y_now);
% vector field half time step in the direction of f1
f2 = fun(t_now + (dt/2), Y_now + (dt/2)*f1);
% vector field half time step in the direction of f2
f3 = fun(t_now + (dt/2), Y_now + (dt/2)*f2);
% full euler step in the direction of f3
f4 = fun(t_now + dt, Y_now + (dt*f3));

% update vector field in the weighted avg. direction
Y_next = Y_now + (f1 + 2*f2 + 2*f3 + f4)*(dt/6);
end