function dichotomy_method
%концы интервала
a=0.2;
b=1;
%заданная точность
eps=10e-4;
%средняя точка сегмента
x=(a+b)/2;
%находим значение в средней точке
f_x=f(x);
while b-a > eps % Условие выхода (Пока длина сегмента локализации меньше требуемой точности)
    x_1 = a + (b - a)/4; % Вычисляем потенциально новые концы сегмента
    x_2 = b - (b - a)/4;
    f_x_1=f(x_1); % Вычисляем значения функции в потенциально новых концах сегмента
    f_x_2=f(x_1); 
    if f_x_1 < f_x % Определяем концы нового сегмента локализации
        b = x;
        x = x_1;
    else
        if f_x_2 < f_x
            a = x;
            x = x_2;
        else
            a = x_1;
            b = x_2;
        end
    end
end
f_x_min = f(x);
disp(x);
end

function f=f(x)
%заданная функция
f=x*sin(x);
end
