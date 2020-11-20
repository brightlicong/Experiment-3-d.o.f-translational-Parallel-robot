function [A1,A2,A3] = ikine(T)
global para;
L3 = para.stage;
D1 = para.pen;
L = para.link;
L2 = para.side;
P1 = [-L2/2,-sqrt(3)*L2/6];
P2 = [L2/2,-sqrt(3)*L2/6];
P3 = [0,sqrt(3)/3*L2];

B1 = transl(-L3/2,-sqrt(3)*L3/6,D1)*T;
B2 = transl(L3/2,-sqrt(3)*L3/6,D1)*T;
B3 = transl(0,sqrt(3)/3*L3,D1)*T;
%机器人的逆解函数
A1 = B1(3,4)+sqrt(L^2 - (P1(1) - B1(1,4))^2 - (P1(2) - B1(2,4))^2);
A2 = B2(3,4)+sqrt(L^2 - (P2(1) - B2(1,4))^2 - (P2(2) - B2(2,4))^2);
A3 = B3(3,4)+sqrt(L^2 - (P3(1) - B3(1,4))^2 - (P3(2) - B3(2,4))^2);
end

