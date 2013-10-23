function [x, norm_mean, norm_std] = standardize(x)
%NORMALIZE Summary of this function goes here
%   Detailed explanation goes here
norm_mean = mean (x);
norm_std = std (x);
x = bsxfun (@rdivide, bsxfun (@minus, x, norm_mean), norm_std);
end

