% ===================================
% Author:lsqls                     
% github:https://github.com/lsqls/erlangb  
% Email:764666894@qq.com
% ===================================
function s=erlangBs(b,a)%逐次逼近法
%erlangBs(b,a)
s = 1;
Bs = erlangBb(s,a);
err = abs(b -Bs);
err_s = err;
while err_s <= err %偏差值变大时,退出循环
   err = err_s;
   s = s+1 ;
   Bs = erlangBb(s,a);
   err_s = abs(b - Bs);
end
s=s-1;
end