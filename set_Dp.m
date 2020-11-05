function set_Dp(dA1,dA2,dA3)
% 增量调整
global r;
r.A1 = r.A1+dA1;
r.A2 = r.A1+dA2;
r.A3 = r.A1+dA3;
end

