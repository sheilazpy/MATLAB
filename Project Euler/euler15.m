function [n] = euler15(in1, in2)
%EULER15 Summary of this function goes here
%   Detailed explanation goes here
n = factorial (in1 + in2)/(factorial (in1)*factorial (in2));
end

