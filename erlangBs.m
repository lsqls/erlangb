% ===================================
% Author:lsqls                     
% github:https://github.com/lsqls/erlangb  
% Email:764666894@qq.com
% ===================================
function s=erlangBs(b,a)%��αƽ���
%erlangBs(b,a)
s = 1;
Bs = erlangBb(s,a);
err = abs(b -Bs);
err_s = err;
while err_s <= err %ƫ��ֵ���ʱ,�˳�ѭ��
   err = err_s;
   s = s+1 ;
   Bs = erlangBb(s,a);
   err_s = abs(b - Bs);
end
s=s-1;
end