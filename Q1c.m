function UFR = Q1c(forward_rates)

UFR = forward_rates(1:20);
for i = (length(UFR)+1):60
    Bh = (1 - exp(-0.5))/0.5; %as h = 1 yrs
    UFR(i) = 0.042 + (UFR(i-1)-0.042)*Bh;
end
    
end