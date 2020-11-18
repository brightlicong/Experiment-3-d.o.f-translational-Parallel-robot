function preview(lines)
%preview 绘制预习的结果
global para;
a = 0.001*para.side;
figure
hold on
%%画出范围
edge_x = [-0.5*a,0.5*a,0,-0.5*a];
edge_y = [-sqrt(3)/6*a,-sqrt(3)/6*a,sqrt(3)/3*a,-sqrt(3)/6*a];
edge_z = [0 0 0 0];
plot3(edge_x,edge_y,edge_z);
%%画出预期诡计
for i = 1:size(lines,1)
    line = lines{i};
    x = line(:,1)*0.001;
    y = line(:,2)*0.001;
    z = ones(size(line,1))*0.3;
    plot3(x,y,z);
end
hold off
end

