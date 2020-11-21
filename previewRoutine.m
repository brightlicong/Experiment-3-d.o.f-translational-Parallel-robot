function previewRoutine(Ts)
%Ô¤ÀÀµ¶Â·
global para;
a = para.side;
figure
hold on
%%»­³ö·¶Î§
% edge_x = [-0.5*a,0.5*a,0,-0.5*a];
% edge_y = [-sqrt(3)/6*a,-sqrt(3)/6*a,sqrt(3)/3*a,-sqrt(3)/6*a];
% edge_z = [0 0 0 0];
% plot3(edge_x,edge_y,edge_z);
%%»­³öÔ¤ÆÚ¹ì¼£
for i = 1:size(Ts,2)-1
    x1 = Ts{i}(1,4);
    x2 = Ts{i+1}(1,4);
    y1 = Ts{i}(2,4);
    y2 = Ts{i+1}(2,4);
    z1 = Ts{i}(3,4);
    z2 = Ts{i+1}(3,4);
    plot3([x1,x2],[y1,y2],[z1,z2]);
end
hold off
end

