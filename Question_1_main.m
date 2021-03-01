%% main
% by Maurits van den Oever, 22/feb/2021


% import rates, if importfile_func doesnt run, change the directory inside
% the function...
[swaprates, zero_rates] = importfile_func();

%% Q1a)
% index is corresponds to maturity
% also, I'm assuming that the rates given are continuously compounded, even
% though w/ small adjustments can be changed to
% annual/semi-annual/quarterly etc

zero_rates = Q1a(swaprates, zero_rates);

%% Q1b)
% forward_rates(i) := forward rate that goes from i-1 to i

forward_rates = Q1b(zero_rates);


%% Q1c)
% UFR method
UFR = Q1c(forward_rates);

%% Q1d)
forwardbased_zerocurve = Q1d(forward_rates, zero_rates);
UFRbased_zerocurve = Q1d(UFR, zero_rates);

% now to plot xdd
plot(forwardbased_zerocurve)
hold on 
plot(UFRbased_zerocurve)
ylabel("zero rates")
xlabel("maturity (years)")
legend("Flat forward rate curve", "UFR curve")
hold off
%  Q1e)
% so the UFR based is much higher, leading to a lower valuation of
% liabilities, so more careful. makes sense after sovereign debt crisis
% where 
