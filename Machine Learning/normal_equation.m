function [fit_parameters, cost] = normal_equation(x, y)
%NORMAL_EQUATION Summary of this function goes here
%   Detailed explanation goes here
num_samples = size (x, 1);
temp = ones (num_samples, 1);
x = [temp x];
fit_parameters = pinv (x'*x)*x'*y;
cost = sum ((x*fit_parameters - y).^2)/num_samples;
end

