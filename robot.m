classdef robot
    %UNTITLED �˴���ʾ�йش����ժҪ
    %   �˴���ʾ��ϸ˵��

    properties
        init_hight = 0.5;
        A1 = init_hight;
        A2 = init_hight;
        A3 = init_hight;
        robot_name
    end
    
    methods
        function obj = robot(name)
            %���������˵Ĺ��캯��
            %   �˴���ʾ��ϸ˵��

            obj.robot_name = name;
            obj.A1 = init_hight;
             obj.A2 = init_hight;
             obj.A3 = init_hight;
        end
        
        function obj = set_position(obj,A1,A2,A3)
            obj.A1 = A1;
            obj.A2 = A2;
            obj.A3 = A3;
        end
        
        function show(obj)
            disp(obj.A1);
        end
   
    end
end

