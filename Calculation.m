function [rzhuan1,rzhuan2,Omegazhuan] = Calculation(...
    B1.B2,r1,r2,m1,m2,R,miu,g,V,r)
%将输入参数整合、建模
%输出旋转半径、旋转角速度

Omega1 = sqrt((-(m1 * g * miu * R)/(B1 * r1) + V) * 2/(B1 * r1 + B2 * r2));
Omega2 = sqrt((-(m2 * g * miu * R)/(B2 * r2) + V) * 2/(B1 * r1 + B2 * r2));

v1 = Omega1 * r1;
v2 = Omega2 * r2;

rzhuan1 = r * v1/(v2-v1);%小磁铁旋转半径
rzhuan2 = rxin + r;%大磁铁旋转半径
Omegazhuan = v2/rzhuan;