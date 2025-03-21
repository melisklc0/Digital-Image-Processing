close all;
clearvars;
clc;

imageWithNoise = imread('boatsBWNoise.bmp');

averageFilter = fspecial('average');
averagingResult = filter2(averageFilter, imageWithNoise);

median = medfilt2(imageWithNoise);

figure;

subplot(1, 3, 1);
imshow(imageWithNoise);
title('Original Image');

subplot(1, 3, 2);
imshow(uint8(averagingResult));
title('Averaging Filtering');

subplot(1, 3, 3);
imshow(median);
title('Median Filtering');
