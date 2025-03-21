%%
clearvars;
close all;
clc;

lena = imread('lena.bmp');
jet = imread('jet.bmp');

figure('position', [600, 450, 600, 300]);
subplot(1, 2, 1);
imshow(lena);
title('Lena');

subplot(1, 2, 2);
imshow(jet);
title('Jet');

figure('position', [600, 100, 300, 300]);
result = imadd(lena, jet);
imshow(result, []);
title('Image Addition Result');

figure('position', [950, 100, 300, 300]);
modified_result = imadd(lena, jet, 'int16');
imshow(modified_result, []);
title('Image Addition Modified Result (int16)');