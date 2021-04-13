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