% ===================================
% Author:lsqls                     
% github:https://github.com/lsqls  
% Email:764666894@qq.com
% ===================================
function s=erlangBs(b,a)
%erlangBs(b,a)
s = 1;
Bs = erlangBb(s,a);
err = abs(b -Bs);
err_s = err;
while err_s <= err 
   err = err_s;
   s = s+1 ;
   Bs = erlangBb(s,a);
   err_s = abs(b - Bs);
end
s=s-1;
end