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
lines = read_lines("��");
%preview(lines)
%% ��ȡ�ӹ������еľ�������λ��
Ts = getTs(lines);
%previewRoutine(Ts);
%% ��������
Pulse_matrix = getPulseMatrix(Ts);
xlswrite("JU.xls",Pulse_matrix);
toc
