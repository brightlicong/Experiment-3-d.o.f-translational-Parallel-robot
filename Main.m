tic
%% ע������
% �����ж�����mmΪ��λ
% �����ļ����Ϊ"pulse.xls"
%% ���������
global para;
para = get_parameters();
global r;
r = getRobot();
%% ����������Ϣ
lines = read_lines("FZ");
preview(lines)
%% ��ȡ�ӹ������еľ�������λ��
Ts = getTs(lines);
previewRoutine(Ts);
%% ��������
Pulse_matrix = getPulseMatrix(Ts);
xlswrite("FZ.xls",Pulse_matrix);
%% ���������
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

%% ��������
x = 1:size(Pulse_matrix,1);
subplot(3,1,1)
plot(x,Pulse_matrix(:,1)');
subplot(3,1,2)
plot(x,Pulse_matrix(:,2)');
subplot(3,1,3)
plot(x,Pulse_matrix(:,3)');

toc
