function [d] = euler1(in1, in2, in3)
%SUM OF FACTORS Summary of this function goes here
%   Detailed explanation goes here
a = floor ((in1-1)/in2);
b = floor ((in1-1)/in3);
c = floor ((in1-1)/(in2*in3));
d = a*(in2+a*in2)/2 + b*(in3+b*in3)/2 - c*(in2*in3+c*in2*in3)/2;
end

