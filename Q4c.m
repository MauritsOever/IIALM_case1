function path_av = Q4c(r, k, sigma, theta, n)
% monthly sims for 1 year maturity of Vasicek model
% dr = k(theta-rt)dt + sigma*N(0,1)*sqrt(dt)

months = 12;
dt = 1/12;


paths = NaN(n,months);
path = zeros(1,months);

for i = 1:n
    paths(i,1) = r;
    for t = 2:months
        dr = k*(theta-paths(i,t-1))*dt + sigma*randn*sqrt(dt);
        paths(i,t) = paths(i,t-1)+dr;
    end
    path = path+paths(i,1:months);
end

path = path/n;

end