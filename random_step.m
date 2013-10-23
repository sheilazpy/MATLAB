function [step] = random_step(p)
%RANDOM_WALK Summary of this function goes here
%   Detailed explanation goes here
dimensions = length (p);
% step = rand (dimensions, 1)*pi/2;
% step = cos(step);
% temp = rand (dimensions, 1);
% step (temp >= p') = -1*step (temp >= p');
step = rand (dimensions, 1)*pi/2
i = 1;
left = 1;
while i < dimensions
    this = sin (step(i))*left;
    step (i) = this;
    left = left - this*this;
    i = i+1;
step(dimensions) = left;
temp = rand (dimensions, 1);
%step (temp > p') = -1*step(temp > p');
end

