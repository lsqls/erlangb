% ===================================
% Author:lsqls                     
% github:https://github.com/lsqls  
% Email:764666894@qq.com
% ����̫�Σ���Ҫ�Ľ�
% ===================================
clear
figure(1)
a=20;
B=[];
S=0:1:50;
for s =S
    B(end+1)=erlangBb(s,a);
end
plot(S,B),xlabel("�м���"),ylabel("������"),title("a=20");
clear

figure(2)
s=20;
B=[];
A=0:0.01:20;
for a =A
    B(end+1)=erlangBb(s,a);
end
plot(A,B),xlabel("������"),ylabel("������"),title("s=20");
clear

figure(3)
b=0.001;
S=[];
A=10:0.01:20;
for a=A
    S(end+1)=erlangBs(b,a);
end
plot(A,S),xlabel("������"),ylabel("�м���"),title("b=0.001");
clear

figure(4)
S=1:50;
B=[];
AE=[];
SE=[];
for s=S
    A=0:0.001:60;
    for a=A
        AE(end+1)=a;
        SE(end+1)=s;
        B(end+1)=erlangBb(s,a);
    end
end
plot3(SE,AE,B),xlabel("�м���"),ylabel("������"),zlabel("������");
clear
    

