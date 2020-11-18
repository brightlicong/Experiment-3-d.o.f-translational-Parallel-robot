function lines = read_lines(words)
%read_lines 读取每个文件中的点信息，并将其保存到matrix中，所有的matrix组成一个cell
global para;
file_path = "dots-information\"+words+"\";
head_file = importdata (file_path+"0.txt");
x_length = head_file(1);%画板的长度 
y_length = head_file(2);%画板的高度
xx = sqrt(1/3*para.side^2/(1+(y_length/x_length)^2));
yy = sqrt(1/3*para.side^2/(1+(x_length/y_length)^2));
display(yy);
x_zoom = xx/x_length;
y_zoom = yy/y_length;
img_num = head_file(3);%关键点数
lines = cell(img_num,1);
% 读取文件
for i= 1:img_num
    file_name = file_path+num2str(i)+'.csv';
    file = importdata (file_name);
    file = [file;file(1,:)];
    lines{i} = file;
    lines{i}(:,1) = lines{i}(:,1)*x_zoom - xx/2;
    lines{i}(:,2) = lines{i}(:,2)*y_zoom -yy/2;
    
end


end

