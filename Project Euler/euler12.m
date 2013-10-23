function [number] = euler12(in1)
%EULER12 Summary of this function goes here
%   Detailed explanation goes here
% n = 0;
% factors = 0;
% while factors <= in1
%     n = n + 1;
%     number = n*(n + 1)/2;
%     array = zeros (1, number);
%     a = 1;
% %    while a <= number
%     while a <= sqrt (number)
%         if mod (number, a) == 0
%             if number/a == a
%                 array (a) = 1;
%             else
%                 array (a) = 2;
%             end
%         end
% %        array (a) = 1;
%         a = a + 1;
%     end
%     factors = sum (array);
% end
array_length = floor (in1/2);
primes = zeros (1, array_length);
primes (1) = 2;
primes (2) = 3;
primes_index = 3;
test1 = 5;
while primes_index <= array_length
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
    if primes_index > array_length
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
n = ceil (in1^2.5/800); %Optimize the lower bound
n_comp = n;
array_length = array_length + 1;
factors1 = 1;
factors2 = 1;
while 1
    if mod (n, 2) == 0
        remaining2 = n + 1;
    else
        remaining2 = (n + 1)/2;
    end
    if n == n_comp
        if mod (n, 2) == 0
            remaining1 = n/2;
        else
            remaining1 = n;
        end
        count = 1;
        test = remaining1;
        while remaining1 ~= 1
            if primes (count) > sqrt (test)
                factors1 = factors1*2;
                break
            end
            temp = 0;
            while mod (remaining1, primes (count)) == 0
                remaining1 = remaining1/primes (count);
                temp = temp + 1;
            end
            factors1 = factors1*(temp + 1);
            count = count + 1;
        end
    else
        factors1 = factors2;
    end
    count = 1;
    factors2 = 1;
    test = remaining2;
    while remaining2 ~= 1
        if primes (count) > sqrt (test)
            factors2 = factors2*2;
            break
        end
        temp = 0;
        while mod (remaining2, primes (count)) == 0
            remaining2 = remaining2/primes (count);
            temp = temp + 1;
        end
        factors2 = factors2*(temp + 1);
        count = count + 1;
    end
    if factors1*factors2 > in1
        number = n*(n + 1)/2;
        break
    end
    n = n + 1;
end
end

