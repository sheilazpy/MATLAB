function [product] = euler9(in1)
%EULER9 Summary of this function goes here
%   Detailed explanation goes here
array = zeros (1, 3);
number = 1;
while number <= in1/4
    if mod ((in1^2/2 - in1*number)/(in1 - number), 1) == 0
        array (1) = number;
        array (2) = (in1^2/2 - in1*array (1))/(in1 - array (1));
        break
    end
    number = number + 1;
end
array (3) = in1 - array (1) - array (2);
product = prod (array);
end

