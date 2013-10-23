function [] = random_analysis(p)
%RANDOM_ANALYSIS Summary of this function goes here
%   Detailed explanation goes here
n = 1000;
steps = 1000;
i = 1;
ep = [];
agg = zeros (length (p), steps);
while i <= n
    temp = random_walk (p, steps);
    agg = agg + abs (temp)/n;
    ep (:, i) = temp (:, steps);
    i = i + 1;
end
x = [1:1:steps];
figure (1);
plot (x, agg (1, :));
grid on;
figure (2);
hist (ep (1, :));
if length (p) ~= 1
    agg = sqrt (sum (agg.^2));
    figure (3);
    plot (x, agg);
    grid on;
    figure (4);
    hist (sqrt (sum (ep.^2)));
    if length (p) <= 3
        figure (5);
        if length (p) == 1
            plot (x, temp);
        elseif length (p) == 2
            plot (temp (1, :), temp (2, :));
        elseif length (p) == 3
            plot3 (temp (1, :), temp (2, :), temp (3, :));
        end
        grid on;
    end
end
end
