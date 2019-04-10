% ===================================
% Author:lsqls                     
% github:https://github.com/lsqls  
% Email:764666894@qq.com
% ===================================
function a=erlangBa(s,b,step)%函数采用逐次逼近法,step为精度
%erlangBa(s,b)
a = 0;
Bs = erlangBb(s,a);
err = abs(b -Bs);
err_s = err;
while err_s <= err %当偏差值变大，退出循化
   err = err_s;
   a=a+step ;
   Bs = erlangBb(s,a);
   err_s = abs(b - Bs);
end
a=a-step;
end