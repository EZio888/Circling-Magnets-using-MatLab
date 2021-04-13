function [R,miu,g,V,r] = Initiate_params
%建模参数初始化

R = ;%回路总电阻
miu = ;%动摩擦系数
g = 9.8;%重力加速度
V = 1.612;%电池电压/V 
r = 5.11/100;%两磁铁中心长度（电池长度/m）