% ===================================
% Author:lsqls                     
% github:https://github.com/lsqls  
% Email:764666894@qq.com
% ===================================
function b=erlangBb(s,a)
%erlangBb(s,a)
b = 1.0;
for count = 1:s
        b = a*b / (count + a * b);%爱尔兰公式的另一种表达形式，可以迭代计算
end
end