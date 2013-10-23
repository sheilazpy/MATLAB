function [n] = euler4(in1)
%EULER4 Summary of this function goes here
%   Detailed explanation goes here
test = 10^in1 - 1;
divisible = 0;
index = 1;
while divisible == 0
    n = test*10^in1;
    count = in1 - index;
    while count >= 0
        n = n + mod (floor (test/10^(count)), 10)*10^(in1 - count - index);
        count = count - 1;
    end
    count = 10^in1 - 1;
    while count >= sqrt (n)
        if mod (n, count) == 0
            divisible = 1;
            break
        end
        count = count - 1;
    end
    test = test - 1;
    if test < 10^(in1 - 1)
        if in1 - index > 0 && index == 1
            test = 10^in1 - 1;
            index = 2;
        else
            n = 0;
            break
        end
    end
end
end

