function dichotomy_method
%����� ���������
a=0.2;
b=1;
%�������� ��������
eps=10e-4;
%������� ����� ��������
x=(a+b)/2;
%������� �������� � ������� �����
f_x=f(x);
disp(f_x);
end

function f=f(x)
%�������� �������
f=x*sin(x);
end