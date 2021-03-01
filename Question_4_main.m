%% Q4 main, 
% sim some vasicek, get lambda, and get tracking error

%% A) sim some vasicek paths
% dr = a(b-rt)dt + sigma eps sqrt(dt)
% Or in our terms
% dr = k(theta-rt)dt + sigma*N(0,1)*sqrt(dt)
n=2000;

r= -0.0052;
k = 0.35;
sigma = 0.005;
theta = -0.0052;

% expected varicek model rate for 20 yrs:
% E[rt] = b + (rs - b)*exp(-a*(t-s))
% Or in our terms:
% E[rt] = theta + (rs - theta)*exp(-k*(T-t))

price = 100*exp(-0.0023*20);

% assuming the lambda (pricing kernel) is just added to the rate,
% it would be 
lambda = -0.0023-r;

%% B) not yet, wanna sim first xdd
% assume flat term structure bc thats what the expected value entails...
% both analytical and monte carlo



%% C) 
Q4c(r, k, sigma, theta,n)


