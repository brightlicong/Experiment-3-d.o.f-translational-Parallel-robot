function Matrix  = getPulseMatrix(Ts)

Matrix = ones(size(Ts,2),3);

for i = 1:size(Ts,2)
    [A1,A2,A3] = ikine(Ts{i});
    [p1,p2,p3] = get_pulse(A1,A2,A3,1);
    Matrix(i,1) = p1;
    Matrix(i,2) = p2;
    Matrix(i,3) = p3;
end

