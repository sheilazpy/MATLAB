function [] = tresdin_analysis(atk_spd)
%TRESDIN_ANALYSIS Summary of this function goes here
%   Detailed explanation goes here
n = 500;
m = 30;
pl_low = 0.9;
pl_high = 1.2;
proc_rate = 0.2;
i = 1;
temp_low = zeros (1,m);
temp_high = zeros (1,m);
wasted_low = zeros (1,n);
wasted_high = zeros (1,n);
while i <= n
    [times,c_factor] = tresdin_init(pl_high,atk_spd);
    j = 1;
    while j <= m
        temp_low(j) = tresdin_proc(proc_rate,pl_low,times,c_factor);
        temp_high(j) = tresdin_proc(proc_rate,pl_high,times,c_factor);
        j = j+1;
    end
    wasted_low(i)=mean(temp_low);
    wasted_high(i)=mean(temp_high);
    i = i+1;
end
fprintf('Proc CD: %gs Wasted procs: %g%%.\n', pl_low, 100*mean(wasted_low));
fprintf('Proc CD: %gs Wasted procs: %g%%.\n', pl_high, 100*mean(wasted_high));
fprintf('%gs CD has %g%% of the procs of %gs CD.\n', pl_high, 100*(1-mean(wasted_high))/(1-mean(wasted_low)), pl_low);
end

