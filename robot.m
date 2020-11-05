classdef robot
    %UNTITLED 此处显示有关此类的摘要
    %   此处显示详细说明

    properties
        init_hight = 0.5;
        A1 = init_hight;
        A2 = init_hight;
        A3 = init_hight;
        robot_name
    end
    
    methods
        function obj = robot(name)
            %并联机器人的构造函数
            %   此处显示详细说明

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

