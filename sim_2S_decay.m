function [tc, A, B, total] = sim_2S_decay(n, kdA, kdB, kAB, kBA, kA, kB)
%SIMA Summary of this function goes here
%   Detailed explanation goes here
steps = 50000;
rates(1) = kdA;
rates(2) = kdB;
rates(3) = kAB;
rates(4) = kBA;
rates(5) = kA;
rates(6) = kB;
if length (n) == 1
    total = n;
    B = round (total/(1 + kBA/kAB));
    A = total - B;
elseif length (n) == 2
    A = n(1);
    B = n(2);
    total = A + B;
end
i = 2;
tc = 0;
% t = zeros (1,6);
while i <= steps
    if A(i-1) > 0
        t(1) = rand^(1/A(i-1));
        t(3) = rand^(1/A(i-1));
%         t(1) = max (rand (1, A(i-1)));
%         t(3) = max (rand (1, A(i-1)));
    else
        t(1) = 1;
        t(3) = 1;
    end
    if B(i-1) > 0
        t(2) = rand^(1/B(i-1));
        t(4) = rand^(1/B(i-1));
%         t(2) = max (rand (1, B(i-1)));
%         t(4) = max (rand (1, B(i-1)));
    else
        t(2) = 1;
        t(4) = 1;
    end
    t(5) = rand;
    t(6) = rand;
    t = -log(t)./rates;
    [x y] = min (t);
    A(i) = A(i-1);
    B(i) = B(i-1);
    if y == 1
        A(i) = A(i) - 1;
    elseif y == 2
        B(i) = B(i) - 1;
    elseif y == 3
        A(i) = A(i) - 1;
        B(i) = B(i) + 1;
    elseif y == 4
        A(i) = A(i) + 1;
        B(i) = B(i) - 1;
    elseif y == 5
        A(i) = A(i) + 1;
    elseif y == 6
        B(i) = B(i) + 1;
    end
    if A(i) < 0
        A(i) = 0;
    end
    if B(i) < 0
        B(i) = 0;
    end
    tc(i) = tc(i-1) + x;
    total(i) = A(i) + B(i);
    i = i + 1;
end
end

