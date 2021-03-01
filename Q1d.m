function zero_curve = Q1d(forward_rates,zero_rates)
% analytical sol for zero(i) based on zero(i-1) and forward(i)
for i = (length(zero_rates)+1):60
    T2 = i;
    T1 = i-1;
    r1 = zero_rates(i-1);
    zero_rates(i) = (forward_rates(i)*(T2-T1)+r1*T1)/T2;
end

zero_curve = zero_rates;
end