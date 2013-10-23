function [a] = euler3(in1)
%EULER3 Summary of this function goes here
%   Detailed explanation goes here
%My initial solution was to find all of the primes <= sqrt (in1) from an
%array spanning [2 3:2:in1] and then work backwards, checking for mod (in1,
%prime) == 0.
remaining = in1;
while mod (remaining, 2) == 0
    remaining = remaining/2;
end
a = 1;
while remaining ~= 1
    a = a + 2;
    while mod (remaining, a) == 0
        remaining = remaining/a;
    end
end
end

