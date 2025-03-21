clearvars;
close all;
clc;

% Refer to the documentation and implement histogram stretching for the hist1.bmp image.

image = imread('hist1.bmp');
stretched_image = imadjust(image);

%  Display the result of the operation in subplots:

figure('position', [100, 100, 700, 500]);

subplot(2,2,1);
imshow(image, []);
title('Original Image');

subplot(2,2,2);
imshow(stretched_image, []);
title('Image After Histogram Stretching');

subplot(2,2,3);
histogram(image(:), 0:255);
title('Histogram of The Original Image');

subplot(2,2,4);
histogram(stretched_image(:), 0:255);
title('Histogram After Stretching');