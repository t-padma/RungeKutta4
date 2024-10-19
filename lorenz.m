function [dYdt] = lorenz(t, Y, sigma, rho, beta)
% function describing lorenz differential eqns
% Y is a 3-dim column vector
dYdt = @(t,Y) [ sigma*(Y(2)-Y(1)); 
                Y(1)*(rho-Y(3))-Y(2);
                Y(1)*Y(2)-beta*Y(3)];
end