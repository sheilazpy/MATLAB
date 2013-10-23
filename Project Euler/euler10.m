function [sum] = euler10(in1)
%EULER10 Summary of this function goes here
%   Detailed explanation goes here
primes = ones (1, in1);
primes (1) = 0;
index2 = 4;
while index2 <= in1
    primes (index2) = 0;
    index2 = index2 + 2;
end
index = 3;
while index <= in1
    index2 = 2*index;
    if primes (index) == 1
        while index2 <= in1
            primes (index2) = 0;
            index2 = index2 + index;
        end
    end
    index = index + 2;
end
if in1 >= 2
    sum = 2;
else
    sum = 0;
end
index = 3;
while index <= in1
    if primes (index) == 1
        sum = sum + index;
    end
    index = index + 2;
end
end

