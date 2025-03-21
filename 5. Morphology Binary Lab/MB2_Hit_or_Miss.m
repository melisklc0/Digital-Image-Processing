clearvars;
close all;
clc;

image = imread('hom.bmp');

SE1 = [0 1 0; 
       1 1 1; 
       0 1 0];

SE2 = ~SE1;

resultImage = bwhitmiss(image, SE1, SE2);

% Display
figure;

subplot(1,2,1);
imshow(image);
title('Original Image');

subplot(1,2,2);
imshow(resultImage);
title('After Hit or Miss Transform');
