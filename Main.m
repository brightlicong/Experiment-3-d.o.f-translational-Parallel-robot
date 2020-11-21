tic
%% 注意事项
% 程序中都是以mm为单位
% 脉冲文件输出为"pulse.xls"
%% 构造机器人
global para;
para = get_parameters();
global r;
r = getRobot();
%% 导入总体信息
lines = read_lines("FZ");
preview(lines)
%% 获取加工过程中的经历过的位姿
Ts = getTs(lines);
previewRoutine(Ts);
%% 计算脉冲
Pulse_matrix = getPulseMatrix(Ts);
xlswrite("FZ.xls",Pulse_matrix);
%% 绘制坐标点
% length = size(Ts,2);
% x = 1:length;
% Xs = ones(1,length);
% Ys = ones(1,length);
% Zs = ones(1,length);
% for i  = 1:size(Ts,2)
%     Xs(i) = Ts{i}(1,4);
%     Ys(i) = Ts{i}(2,4);
%     Zs(i) = Ts{i}(3,4);   
% end
% subplot(3,1,1)
% plot(x,Xs);
% subplot(3,1,2)
% plot(x,Ys);
% subplot(3,1,3)
% plot(x,Zs);

%% 绘制脉冲
x = 1:size(Pulse_matrix,1);
subplot(3,1,1)
plot(x,Pulse_matrix(:,1)');
subplot(3,1,2)
plot(x,Pulse_matrix(:,2)');
subplot(3,1,3)
plot(x,Pulse_matrix(:,3)');

toc
