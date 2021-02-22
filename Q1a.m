function zero_rates = Q1a(swaprates, zero_rates)
% analytical sol to bootstrap zero rates using swap rates...
begin = length(zero_rates)+1;
ult_mat = length(swaprates);


for t = begin:ult_mat
    coupon = swaprates(t)*100;
    couponspv = 0;
    for i = 1:(t-1)
        couponspv = couponspv + coupon * exp(-1*zero_rates(i)*i);
    end

    zero_rates(t) = (log((100-couponspv)/(100+coupon))/t)*-1;
end

end