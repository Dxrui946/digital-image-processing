%读取图片
I=imread('E:\duan.tif'); 
subplot(231);imshow(I);title('原图');

%模糊处理
%初始化高斯模糊的值
P = fspecial('gaussian',[9,9],2);
%进行模糊处理
Ig = imfilter(I,P,'same');
subplot(232);imshow(Ig);title('模糊之后');

%加噪声
F = imnoise(Ig,'gaussian',0.01); %给图像加入噪声 0.1为可以修改的参数 
subplot(233);imshow(F);title('模糊再加噪声之后'); 

%去除噪声
%im2double数据类型转换
signal_var = var(im2double(F(:)));
%使用维纳滤波器处理
K2 = deconvwnr(F,P,0.01 / signal_var);
subplot(234);imshow(K2);title('复原之后');
