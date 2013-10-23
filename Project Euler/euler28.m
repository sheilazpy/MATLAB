function [sum] = euler28(in1)
%EULER28 Summary of this function goes here
%   Detailed explanation goes here
sum = 0;
if mod (in1, 2) == 0
    index = 2;
else
    index = 3;
    sum = 1;
end
% count = sum;
while index <= in1
    sum = sum + 4*index^2 - 6*(index - 1);
%     count = count + 4*(index - 1);
    index = index + 2;
end
end

