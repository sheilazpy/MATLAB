function [ratio] = tresdin_proc(proc_rate,proc_limit,times,c_factor)
%TRESDIN_PROC Summary of this function goes here
%   Detailed explanation goes here
proc = rand(1,length(times));
times(proc>=proc_rate) = [];
total_proc = sum(times<c_factor);
times = sort(times);
i = 2;
wasted = 0;
last = 1;
while i <= length(times)
    if times(i)-times(last)<proc_limit
        wasted = wasted + 1;
    else
        last = i;
        if last>total_proc
            last = total_proc;
        end
    end
    i = i+1;
end
ratio = wasted/total_proc;
end

