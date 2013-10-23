function [times,c_factor] = tresdin_init(proc_limit,atk_spd)
%TRESDIN_INIT Summary of this function goes here
%   Detailed explanation goes here
num_atker = length(atk_spd);
seed = rand(num_atker,1);
init_atk = seed.*atk_spd;
temp_atk_spd = unique(atk_spd);
while sum(mod(temp_atk_spd,1))~=0
    temp_atk_spd = (mod(temp_atk_spd,1)~=0)*10.*temp_atk_spd+(mod(temp_atk_spd,1)==0).*temp_atk_spd;
end
c_factor = prod(temp_atk_spd)*100;
i = 1;
times = [];
while i <= num_atker
    temp_times = [init_atk(i):atk_spd(i):c_factor+proc_limit];
    times = [times temp_times];
    i = i+1;
end
end

