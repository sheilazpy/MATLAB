function [path] = random_walk(p,n)
%RANDOM_WALK_ANALYSIS Summary of this function goes here
%   Detailed explanation goes here
i = 2;
path = zeros (length (p), 1);
while i <= n
    path (:, i) = random_step (p) + path (:, i - 1);
    i = i + 1;
end
end

