function [x, y, parameters] = linear_data(m, num_x, scale)
%RANDOM_DATA Summary of this function goes here
%   Detailed explanation goes here
x = scale*rand (m, num_x);
temp = ones (m, 1);
temp = [temp x];
parameters = scale*rand (num_x + 1, 1);
y = temp*parameters;
y = y + sqrt (scale)*randn (size (y));
end

