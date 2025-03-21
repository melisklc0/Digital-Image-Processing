clearvars;
close all;
clc;

% Determine the cumulative histogram for the hist1.bmp image. The imhist 
% function returns vectors describing the histogram (counts and corresponding
% brightness levels): [H, x] = imhist (I, n). 

image = imread('hist1.bmp');
[H, x] = imhist(image, 256);

% For the calculation of the cumulative histogram use the cumsum function. 
cumulative_hist = cumsum(H);

% Implementing the histogram equalization algorithm

I = imread('hist1.bmp');
[H, x] = imhist(I, 256);

% Rescaling
maxCumHist = max(cumulative_hist);
scaledCumHist = (255 * cumulative_hist) / maxCumHist;

% LUT transform
lut = uint8(scaledCumHist);

equalizedImage = intlut(I, lut);

[H_equalized, x_equalized] = imhist(equalizedImage, 256);
cumulative_hist_equalized = cumsum(H_equalized);

% Display the results
figure('position', [100, 100, 1200, 500]);

subplot(2, 3, 1);
imshow(I);
title('Original Image');

subplot(2, 3, 2);
bar(x, H);
title('Histogram of the Original Image');

subplot(2, 3, 3);
plot(x, cumulative_hist);
title('Cumulative Histogram of the Original Image');

subplot(2, 3, 4);
imshow(equalizedImage);
title('Equalized Image');

subplot(2, 3, 5);
bar(x_equalized, H_equalized);
title('Histogram of Equalized Image');

subplot(2, 3, 6);
plot(x_equalized, cumulative_hist_equalized);
title('Cumulative Histogram of Equalized Image');


%------------------------------------------------------

originalImage = imread('hist2.bmp');

% Histogram stretching
stretchedImage = imadjust(originalImage);

% Histogram equalization
equalizedImageHisteq = histeq(originalImage);

% Adaptive histogram equalization
equalizedImageAdapthisteq = adapthisteq(originalImage);

% Display
figure('position', [100, 100, 1400, 400]);

subplot(1, 4, 1);
imshow(originalImage);
title('Original hist2 Image');

subplot(1, 4, 2);
imshow(stretchedImage);
title('Image after Histogram Stretching');

subplot(1, 4, 3);
imshow(equalizedImageHisteq);
title('Image after Histogram Equalization');

subplot(1, 4, 4);
imshow(equalizedImageAdapthisteq);
title('Image after Adaptive Equalization');