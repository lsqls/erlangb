% ===================================
% Author:lsqls                     
% github:https://github.com/lsqls  
% Email:764666894@qq.com
% ===================================
function a=erlangBa(s,b,step)%����������αƽ���,stepΪ����
%erlangBa(s,b)
a = 0;
Bs = erlangBb(s,a);
err = abs(b -Bs);
err_s = err;
while err_s <= err %��ƫ��ֵ����˳�ѭ��
   err = err_s;
   a=a+step ;
   Bs = erlangBb(s,a);
   err_s = abs(b - Bs);
end
a=a-step;
end