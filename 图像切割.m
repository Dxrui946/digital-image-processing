%��ȡͼƬ
I=imread('fenge.png');
figure;
subplot(2,2,1);
imshow(I);
title(' �Ҷ�ͼ��');
%��ע���ͼ��������Сֵ
axis([0,490,0,300]);
grid on;                  %��ʾ������
axis on;                  %��ʾ����ϵ
%ʹ����ֵ�任���ѻҶ�ͼ��ת���ɶ�ֵͼ��
I2=im2bw(I,70/255);  
subplot(2,2,3),imshow(~I2);
title('��ֵ70�ķָ�ͼ��')
axis([0,490,0,300]);
grid on;                  %��ʾ������
axis on;                  %��ʾ����ϵ
