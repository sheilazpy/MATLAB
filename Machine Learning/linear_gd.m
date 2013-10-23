function [fit_parameters, cost] = linear_gd(x, y, learning_rate, threshold)
%GRADIENT_DESCENT Summary of this function goes here
%   Detailed explanation goes here
reduce_factor = 2;
iterations = 1;
num_reduce = 0;
num_samples = size (x, 1);
extra_column = ones (num_samples, 1);
x = [extra_column x];
fit_parameters = zeros (size (x, 2), 1);
cost (iterations) = sum ((x*fit_parameters - y).^2)/num_samples;
xxp = x*fit_parameters;
while iterations <= 2 | abs (cost (iterations) - cost (iterations - 1)) > threshold
    iterations = iterations + 1;
    temp_parameters = sum (bsxfun (@times, x, (xxp - y)));
    fit_parameters = fit_parameters - learning_rate/num_samples*temp_parameters';
    xxp = x*fit_parameters;
    cost (iterations) = sum ((xxp - y).^2)/num_samples;
    if cost (iterations) >= cost (iterations - 1)
        learning_rate = learning_rate/reduce_factor;
        num_reduce = num_reduce + 1;
    end
end
plot ([1:iterations], cost);
fprintf ('Learning rate reduced by %f-fold and is now %f. \n', reduce_factor^num_reduce, learning_rate);
end