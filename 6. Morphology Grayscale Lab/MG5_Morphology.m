close all;
clearvars;
clc;

image = imread('calculator.bmp');

% Method 1: Using Classical Opening
se1 = strel('line', 71, 0); % Horizontal line
openingResult1 = imopen(image, se1);
topHatResult1 = image - openingResult1;

% Method 2: Using Opening by Reconstruction
erosionResult2 = imerode(image, se1);
reconstructedResult2 = imreconstruct(erosionResult2, image);
topHatResult2 = image - reconstructedResult2;

figure;

subplot(2, 3, 1);
imshow(image);
title('Original Image');

subplot(2, 3, 2);
imshow(openingResult1);
title('Opening');

subplot(2, 3, 3);
imshow(topHatResult1);
title('Top-Hat');

subplot(2, 3, 4);
imshow(erosionResult2);
title('Eroded Image');

subplot(2, 3, 5);
imshow(reconstructedResult2);
title('Reconstructed Image');

subplot(2, 3, 6);
imshow(topHatResult2);
title('Top-Hat by Reconstruction');

