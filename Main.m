tic
words = "��";%�ڴ˴�д��UR5������Ҫд�Ļ���
%% ����������Ϣ
%txt�еĵ㶼Ϊ[x y]�ĸ�ʽ�� 
file_path = "dots-information\"+words+"\";
head_file = importdata (file_path+"0.txt");
x_length = head_file(1);%����ĳ��� 
y_length = head_file(2);%����ĸ߶�
line_num = head_file(3);%�ؼ����� 
%% ���������
global para;
para = get_parameters();
global r;
r = getRobot();
[a,b,c] = ikine(transl(0,0,0.2)*trotx(pi));
%% �����Ϣ����
% pen_length = 0.1; %�ʵĳ���
% lift_dis = 0.05; %̧�ʵľ���
% original_display_mode = 0; %�Ƿ���ʾ����Ԥ��ͼ
% path_disply_mode = 1;%�Ƿ���ʾʵ�ʵ�·
% coVal = [rand rand rand];
% 
% %% ��Ҫ��������� 
% r1 = creat_ur5('left',transl(0,-0.544,0)*trotz(pi)); %��ۻ�����
% r2 = creat_ur5('right',transl(0,0.544,0)); %�ұۻ�����
% Qlist = [];
% dots_list = cell(dots_num,1); %�洢���еĹؼ�����Ϣ 
% head_tail_inf = zeros(dots_num,5);%����ÿ���ʻ���ͷ��β������
% %% ����ؼ�����Ϣ
% for i= 1:dots_num
%     file_name = file_path+num2str(i)+'.txt';
%     file = importdata (file_name);
%     head_tail_inf(i,1) = i;
%     head_tail_inf(i,2:3) = file(1,:);
%     head_tail_inf(i,4:5) = file(end,:);
% end
% %% ����д˳���������
% %̰���㷨
% %������[0 0]��ʼ���Ծ���Ϊ��׼Ѱ������ĵ㡣
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
%         dots_list{i,1}= flipud(file);%���·�ת����
%         head_tail_inf(tail_delet_index,:)=[];
%         %display([i tail_index tail_delet_index]);
%     end   
% end
