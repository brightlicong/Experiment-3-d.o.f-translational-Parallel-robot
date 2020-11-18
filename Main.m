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
lines = read_lines("聚");
preview(lines)
%% 获取加工过程中的经历过的位姿
Ts = getTs(lines);
previewRoutine(Ts);
%% 计算脉冲
Pulse_matrix = getPulseMatrix(Ts);
xlswrite("pulse.xls",Pulse_matrix);
toc
