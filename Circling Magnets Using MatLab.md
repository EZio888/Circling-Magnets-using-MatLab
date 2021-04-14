# Circling Magnets Using MatLab

## 子函数模块

### 参数初始化

```matlab
function [R,miu,g,V,r] = Initiate_params
%建模参数初始化

R = 200;%回路总电阻
miu = 0.2;%动摩擦系数
g = 9.8;%重力加速度
V = 1.612;%电池电压/V 
r = 5.11/100;%两磁铁中心长度（电池长度/m）
```

### 磁铁模块

```matlab
function [B1,B2,r1,r2,m1,m2] = Initiate_Magenets
%磁铁模块

B1 = 0.5;%小磁铁磁感应强度
B2 = 0.5;%大磁铁磁感应强度
r1 = 0.5/100;%小磁铁半径/m
r2 = 1.5/100;%大磁铁半径/m
m1 = 3.1/1000;%小磁铁质量/kg
m2 = 47.4/1000;%大磁铁质量/kg
```

### 计算模块

```matlab
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
```

### 可视化模块

#### 轨迹描绘

```matlab
function [] =trail(rzhuan1,rzhuan2)
%描绘两端磁铁轨迹

aplha=0:pi/40:2*pi;
x1=rzhuan1*cos(aplha);
y1=rzhuan1*sin(aplha);
x2=rzhuan2*cos(aplha);
y2=rzhuan2*sin(aplha);

%轨迹
plot(x2,y2,'-');hold on;
plot(x1,y1,'-');axis equal;
```

#### 动画描绘

```matlab
function [] =movie(rzhuan1,rzhuan2)
%动画形式展示

aplha=0:pi/40:2*pi;
x1=rzhuan1*cos(aplha);
y1=rzhuan1*sin(aplha);
x2=rzhuan2*cos(aplha);
y2=rzhuan2*sin(aplha);

for i=1:length(alpha)
    plot(x1,y1,x2,y2,x1(i),y1(i),'.',x2(i),y2(i),'.',[x1(i),x2(i)],[y1(i),y2(i)])
    grid on
    xlabel('x');ylabel('y');
    len=11;
    legend('小磁铁','大磁铁')
    axis equal
    axis([-len len -len len]);
    f(i) = getframe;
end
movie(f,1,24)
```

## 主函数

```matlab
function main
%主程序

[B1.B2,r1,r2,m1,m2] = Initiate_Magenets;
[R,miu,g,V,r] = Initiate_params;

[rzhuan1,rzhuan2,Omegazhuan] = Calculation(...
    B1.B2,r1,r2,m1,m2,R,miu,g,V,r);

%trail(rzhuan1,rzhuan2)%轨迹描绘
%movie(rzhuan1,rzhuan2)%动画可视化
```

