function [longest] = euler26(in1)
%EULER26 Summary of this function goes here
%   Detailed explanation goes here
index = 1;
longest = 0;
longest_length = 0;
while index < in1
    digits = zeros (1, index);
    temp_length = 0;
    remainder = 1;
    while 1
        remainder = mod (10*remainder, index);
        if remainder == 0
            temp_length = 0;
            break
        end
        if digits (remainder) == 1
            break
        end
        digits (remainder) = 1;
        temp_length = temp_length + 1;
    end
    if temp_length > longest_length
        longest_length = temp_length;
        longest = index;
    end
    index = index + 2;
end
end

