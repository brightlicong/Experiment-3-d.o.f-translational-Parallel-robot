tic
words = "聚";%在此处写明UR5机器人要写的话。
%% 导入总体信息
%txt中的点都为[x y]的格式。 
file_path = "dots-information\"+words+"\";
head_file = importdata (file_path+"0.txt");
x_length = head_file(1);%画板的长度 
y_length = head_file(2);%画板的高度
line_num = head_file(3);%关键点数 
%% 构造机器人
global para;
para = get_parameters();
global r;
r = getRobot();
[a,b,c] = ikine(transl(0,0,0.2)*trotx(pi));
%% 相关信息设置
% pen_length = 0.1; %笔的长度
% lift_dis = 0.05; %抬笔的距离
% original_display_mode = 0; %是否显示理想预览图
% path_disply_mode = 1;%是否显示实际刀路
% coVal = [rand rand rand];
% 
% %% 必要对象的声明 
% r1 = creat_ur5('left',transl(0,-0.544,0)*trotz(pi)); %左臂机器人
% r2 = creat_ur5('right',transl(0,0.544,0)); %右臂机器人
% Qlist = [];
% dots_list = cell(dots_num,1); %存储所有的关键点信息 
% head_tail_inf = zeros(dots_num,5);%储存每个笔画的头与尾的坐标
% %% 导入关键点信息
% for i= 1:dots_num
%     file_name = file_path+num2str(i)+'.txt';
%     file = importdata (file_name);
%     head_tail_inf(i,1) = i;
%     head_tail_inf(i,2:3) = file(1,:);
%     head_tail_inf(i,4:5) = file(end,:);
% end
% %% 对书写顺序进行排序
% %贪心算法
% %从坐标[0 0]开始，以距离为标准寻找最近的点。
% this_point = [0 0];
% 
% for i= 1:dots_num
%     [head_index,head_dis] = find_closed_point(this_point,head_tail_inf(:,[1 2 3]));
%     [tail_index,tail_dis] = find_closed_point(this_point,head_tail_inf(:,[1 4 5]));
%     %display([i head_index head_dis  tail_index tail_dis])
%     if head_dis < tail_dis
%         head_delet_index = find(head_tail_inf(:,1)==head_index);
%         this_point = head_tail_inf(head_delet_index,[2 3]);
%         file_name = file_path+num2str(head_index)+'.txt';
%         file = importdata (file_name);
%         dots_list{i,1}= file;        
%         head_tail_inf(head_delet_index,:)=[];
%         %display([i head_index head_delet_index]);
%     else
%         tail_delet_index = find(head_tail_inf(:,1)==tail_index);
%         this_point = head_tail_inf(tail_delet_index,[4 5]);
%         file_name = file_path+num2str(tail_index)+'.txt';
%         file = importdata (file_name);
%         dots_list{i,1}= flipud(file);%上下翻转矩阵
%         head_tail_inf(tail_delet_index,:)=[];
%         %display([i tail_index tail_delet_index]);
%     end   
% end
