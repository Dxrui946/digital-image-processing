%��ȡͼƬ
I=imread('E:\duan.tif'); 
subplot(231);imshow(I);title('ԭͼ');

%ģ������
%��ʼ����˹ģ����ֵ
P = fspecial('gaussian',[9,9],2);
%����ģ������
Ig = imfilter(I,P,'same');
subplot(232);imshow(Ig);title('ģ��֮��');

%������
F = imnoise(Ig,'gaussian',0.01); %��ͼ��������� 0.1Ϊ�����޸ĵĲ��� 
subplot(233);imshow(F);title('ģ���ټ�����֮��'); 

%ȥ������
%im2double��������ת��
signal_var = var(im2double(F(:)));
%ʹ��ά���˲�������
K2 = deconvwnr(F,P,0.01 / signal_var);
subplot(234);imshow(K2);title('��ԭ֮��');
