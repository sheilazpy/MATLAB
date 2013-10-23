function [a] = euler7(in1)
%EULER7 Summary of this function goes here
%   Detailed explanation goes here
primes = zeros (1, in1);
primes (1) = 2;
primes (2) = 3;
primes_index = 3;
test1 = 5;
while primes_index <= in1
    test2 = test1 + 2;
    isPrime = 1;
    check_index = 1;
    while primes (check_index) <= sqrt (test1)
        if mod (test1, primes (check_index)) == 0
            isPrime = 0;
            break
        end
        check_index = check_index + 1;
    end
    if isPrime == 1
        primes (primes_index) = test1;
        primes_index = primes_index + 1;
    end
    if primes_index > in1
        break
    end
    isPrime = 1;
    check_index = 1;
    while primes (check_index) <= sqrt (test2)
        if mod (test2, primes (check_index)) == 0
            isPrime = 0;
            break
        end
        check_index = check_index + 1;
    end
    if isPrime == 1
        primes (primes_index) = test2;
        primes_index = primes_index + 1;
    end
    test1 = test1 + 6;
end
a = primes (in1);
end

