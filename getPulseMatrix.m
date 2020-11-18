function Matrix  = getPulseMatrix(Ts)

Matrix = ones(size(Ts,2),3);

for i = 1:size(Ts,2)
    [A1,A2,A3] = ikine(Ts{i});
    
    Matrix(i,:) = get_pulse(A1,A2,A3,1);
end

