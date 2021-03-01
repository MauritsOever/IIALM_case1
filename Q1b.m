function forward_rates = Q1b(zero_rates)
forward_rates = NaN(length(zero_rates),1);

for i = 2:length(zero_rates)
    T2 = i;
    T1 = i-1;
    r2 = zero_rates(i);
    r1 = zero_rates(i-1);
    forward_rates(i) = (r2*T2 - r1*T1)/(T2-T1);
end

last_forward_rate = forward_rates(length(forward_rates));

for i = (length(forward_rates)+1):60
    forward_rates(i) = last_forward_rate;
end