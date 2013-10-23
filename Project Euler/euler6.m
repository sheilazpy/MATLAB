function [a] = euler6(in1)
%EULER6 Summary of this function goes here
%   Detailed explanation goes here
a = (in1*(1 + in1)/2)^2 - in1*(2*in1 + 1)*(in1 + 1)/6;
end

