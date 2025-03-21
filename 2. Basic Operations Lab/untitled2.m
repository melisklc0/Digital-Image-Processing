clearvars;
close all;
clc;

% Load the provided "mat" file with predefined LUT functions.
load functionsLUT.mat;

% Display an exemplary function.
figure;
plot(square);
title('LUT Function: Square');

% Load a sample image and display it
image = imread('lena.bmp');
figure;
imshow(image);
title('Original Image');

% For a selected image perform LUT operations using at least three different LUT function - 
% for example use functions: square, inverse and saw. Display the result. 
% Then for each LUT create a figure with three subplots.

output_square = intlut(image, square);
output_inverse = intlut(image, inverse);
output_saw = intlut(image, saw);

% Figure for the "square" LUT function
figure('position', [100, 100, 1000, 300]);

subplot(1, 3, 1);
imshow(image);
title('Input Image');
daspect([1 1 1]);

subplot(1, 3, 2);
plot(square);
title('LUT Function: Square');
xlim([0 255]);
ylim([0 255]);
daspect([1 1 1]);

subplot(1, 3, 3);
imshow(output_square);
title('Output Image');
daspect([1 1 1]);

% Figure for the "inverse" LUT function
figure('position', [100, 100, 1000, 300]);

subplot(1, 3, 1);
imshow(image);
title('Input Image');
daspect([1 1 1]);

subplot(1, 3, 2);
plot(inverse);
title('LUT Function: Inverse');
xlim([0 255]);
ylim([0 255]);
daspect([1 1 1]);

subplot(1, 3, 3);
imshow(output_inverse);
title('Output Image');
daspect([1 1 1]);

% Figure for the "saw" LUT function
figure('position', [100, 100, 1000, 300]);

subplot(1, 3, 1);
imshow(image);
title('Input Image');
daspect([1 1 1]);

subplot(1, 3, 2);
plot(saw);
title('LUT Function: Saw');
xlim([0 255]);
ylim([0 255]);
daspect([1 1 1]);

subplot(1, 3, 3);
imshow(output_saw);
title('Output Image');
daspect([1 1 1]);