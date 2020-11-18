function [P1,P2,P3] = get_pulse(A1,A2,A3,t)
%GET_REPULSE 计算脉冲信号
global r;
global para;
xfs = para.xfs;
a = para.alpha;
P1 = (A1 - r.A1)*360*xfs/a/t;
P2 = (A2 - r.A2)*360*xfs/a/t;
P3 = (A3 - r.A3)*360*xfs/a/t;
%更新机器人的状态
r.A1 = A1;
r.A2 = A2;
r.A3 = A3;
end

