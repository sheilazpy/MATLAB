function [c] = euler2(in1)
%EULER2 Summary of this function goes here
%   Detailed explanation goes here
a = 2;
b = 1;
c = 0;
while a <= in1
    c = c + a;
    d = 3*a + 2*b;
    b = 2*a + b;
    a = d;
end
end

