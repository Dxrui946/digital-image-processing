%读取图片
I=imread('fenge.png');
figure;
subplot(2,2,1);
imshow(I);
title(' 灰度图像');
%标注输出图像的最大最小值
axis([0,490,0,300]);
grid on;                  %显示网格线
axis on;                  %显示坐标系
%使用阈值变换法把灰度图像转换成二值图像
I2=im2bw(I,70/255);  
subplot(2,2,3),imshow(~I2);
title('阈值70的分割图像')
axis([0,490,0,300]);
grid on;                  %显示网格线
axis on;                  %显示坐标系
