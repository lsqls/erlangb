% ===================================
% Author:lsqls                     
% github:https://github.com/lsqls  
% Email:764666894@qq.com
% ===================================
function b=erlangBb(s,a)
%erlangBb(s,a)
b = 1.0;
for count = 1:s
        b = a*b / (count + a * b);
end
end