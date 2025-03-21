clearvars, close all, clc

load functionsLUT

figure;

A = imread('jet.bmp');

subplot(3,1,1);
imshow(A);
title('Input image');

subplot(3,1,2);
B = intlut(A,saw);
title('LUT');

subplot(3,1,3);
plot(saw);

%%

clearvars, close all, clc

figure;

subplot(2,1,1);
A=imread('lena.bmp');
B=imread('jet.bmp');
C=imadd(A, B);
imshow(C);
title('First output');

subplot(2,1,2);
imshow(sum,[C]);
title('Modified output');

