% ===================================
% Author:lsqls                     
% github:https://github.com/lsqls  
% Email:764666894@qq.com
% ===================================
function a=erlangBa(s,b)
%erlangBa(s,b)
a = 0;
Bs = erlangBb(s,a);
err = abs(b -Bs);
err_s = err;
while err_s <= err 
   err = err_s;
   a=a+0.001 ;
   Bs = erlangBb(s,a);
   err_s = abs(b - Bs);
end
a=a-0.001;
end