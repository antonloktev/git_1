function dichotomy_method
%концы интервала
a=0.2;
b=1;
%заданна€ точность
eps=10e-4;
%средн€€ точка сегмента
x=(a+b)/2;
%находим значение в средней точке
f_x=f(x);
disp(f_x);
end

function f=f(x)
%заданна€ функци€
f=x*sin(x);
end