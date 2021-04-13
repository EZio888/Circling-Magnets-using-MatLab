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