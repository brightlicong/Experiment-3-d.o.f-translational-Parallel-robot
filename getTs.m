function Ts = getTs(lines)
a = transl(0,0,5);
Ts = {a};
height = 0;
lift_length = 2;
m = size(lines,1);
%% 添加提笔的步骤
for i = 1:size(lines,1)
    for j = 1:size(lines{i},1)
        x = lines{i}(j,1);
        y = lines{i}(j,2);
        Ts{end+1} = transl(x,y,height);
    end
    if i < m
        Ts{end+1} = transl(0,0,lift_length)*Ts{end};
        Ts{end+1} = transl(0,0,lift_length)*transl(lines{i+1}(1,1),lines{i+1}(1,2),height);
      
    end
end

