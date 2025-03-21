clearvars;
close all;
clc;

% Load two images lena.bmp and jet.bmp and display them.

lena = imread('lena.bmp');
jet = imread('jet.bmp');

figure('position', [600, 450, 600, 300]);
subplot(1, 2, 1);
imshow(lena);
title('Lena');

subplot(1, 2, 2);
imshow(jet);
title('Jet');

% Subtract images Lena and Jet. Use the function imsubtract.

figure;
result = imsubtract(lena, jet);
imshow(result, []);
title('Subtraction Result');

% To improve the result change the datatype for the images Lena and Jet from uint8 to int16.

lena_int16 = int16(lena);
jet_int16 = int16(jet);

figure;
result = imsubtract(lena_int16, jet_int16);
imshow(result, []);
title('Subtraction Modified Result (int16)');

% Use the function imabsdiff to obtain the absolute difference of images Lena and Jet.

figure;
result = imabsdiff(lena, jet);
imshow(result, []);
title('Absolute Difference Result');
