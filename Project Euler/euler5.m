function [product] = euler5(in1)
%EULER5 Summary of this function goes here
%   Detailed explanation goes here
% primes = zeros(1, in1);
% if in1 >= 2
%     primes (2) = 1;
%     index = 3;
%     while index <= in1
%         remaining = index;
%         count = 0;
%         while mod (remaining, 2) == 0
%             remaining = remaining/2;
%             count = count + 1;
%         end
%         if primes (2) < count
%             primes (2) = count;
%         end
%         index2 = 3;
%         while remaining ~= 1
%             count = 0;
%             while mod (remaining, index2) == 0
%                 remaining = remaining/index2;
%                 count = count + 1;
%             end
%             if primes (index2) < count
%                 primes (index2) = count;
%             end
%             index2 = index2 + 2;
%         end
%         index = index + 1;
%     end
% end
% product = 1;
% count = 1;
% primes_length = length (primes);
% while count <= primes_length
%     product = product * (count ^ primes (count));
%     count = count + 1;
% end
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
primes (2) = floor (log (in1)/log (2));
index = 3;
primes_length = length (primes);
while index <= sqrt (primes_length)
    if primes (index) ~= 0
        if floor (log (in1)/log (index)) > primes (index)
            primes (index) = floor (log (in1)/log (index));
        end
    end
    index = index + 2;
end
product = 1;
index = 1;
while index <= primes_length
    product = product * (index ^ primes (index));
    index = index + 1;
end
end

