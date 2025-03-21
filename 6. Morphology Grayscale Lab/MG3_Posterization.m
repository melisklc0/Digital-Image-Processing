close all;
clearvars;
clc;

image = imread('boatsBW.bmp');

singleMedian = medfilt2(image, [5, 5]);

% Perform median filtering 10 times with context size 5×5
multipleMedianResult = image;
for i = 1:10
    multipleMedianResult = medfilt2(multipleMedianResult, [5, 5]);
end

figure;

subplot(1, 3, 1);
imshow(image);
title('Original Image');

subplot(1, 3, 2);
imshow(singleMedian);
title('Single Median Filtering');

subplot(1, 3, 3);
imshow(multipleMedianResult);
title('Multiple Median Filtering (10 times)');