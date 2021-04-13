function main
%主程序

[B1.B2,r1,r2,m1,m2] = Initiate_Magenets;
[R,miu,g,V,r] = Initiate_params;

[rzhuan1,rzhuan2,Omegazhuan] = Calculation(...
    B1.B2,r1,r2,m1,m2,R,miu,g,V,r);

%trail(rzhuan1,rzhuan2)%轨迹描绘
%movie(rzhuan1,rzhuan2)%动画可视化