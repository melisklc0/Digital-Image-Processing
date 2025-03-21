clearvars;
close all;
clc;

originalImage = imread('moon.png');

% Laplacian mask
laplacianMask = fspecial('laplacian', 0);

% Convolution
laplacianFiltered = filter2(laplacianMask, double(originalImage), 'same');

% Normalizing
laplacianFilteredAbs = abs(laplacianFiltered);
maxValue = max(laplacianFilteredAbs(:));
laplacianFilteredNormalized = (laplacianFilteredAbs / maxValue) * 255;

% Display
figure;

subplot(1, 2, 1);
imshow(uint8(originalImage));
title('Original Image');

subplot(1, 2, 2);
imshow(uint8(laplacianFilteredNormalized));
title('Laplacian Filtered Image');
