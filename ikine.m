function [A1,A2,A3] = ikine(T)
global para;
l_3 = para.stage;
d_1 = para.pen;
l = para.link;
l_2 = para.side;

%机器人的逆解函数
T_pen_B1 = transl(-l_3/2,sqrt(3)*l_3/6,-d_1);
T_pen_B2 = transl(l_3/2,sqrt(3)*l_3/6,-d_1);
T_pen_B3 = transl(0,-sqrt(3)*l_3/3,-d_1);
T_B1 = T*T_pen_B1;
T_B2 = T*T_pen_B2;
T_B3 = T*T_pen_B3;
A1 = T_B1(3,4)+sqrt(l^2 - (-l_2/2 - T_B1(1,4))^2 - (-sqrt(3)*l_2/6 - T_B1(2,4))^2);
A2 = T_B2(3,4)+sqrt(l^2 - (l_2/2 - T_B2(1,4))^2 - (-sqrt(3)*l_2/6 - T_B2(2,4))^2);
A3 = T_B3(3,4)+sqrt(l^2 - (0 - T_B3(1,4))^2 - (sqrt(3)*l_2/3 - T_B3(2,4))^2);
end

