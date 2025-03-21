clearvars;
close all;
clc;

originalImage = imread('squares.bmp');
originalImage = double(originalImage);

% Sobel filters
sobelHorizontal = fspecial('sobel');
sobelVertical = sobelHorizontal';

% Convolution
sobelHorizontalResult = imfilter(originalImage, sobelHorizontal);
sobelVerticalResult = imfilter(originalImage, sobelVertical);

combinedFilter = sqrt(sobelHorizontalResult.^2 + sobelVerticalResult.^2);

% Display
figure;

subplot(2, 2, 1);
imshow(uint8(originalImage));
title('Original Image squares.bmp');

subplot(2, 2, 2);
imshow(sobelHorizontalResult, []);
title('Result of Sobel Horizontal');

subplot(2, 2, 3);
imshow(sobelVerticalResult, []);
title('Result of Sobel Vertical');

subplot(2, 2, 4);
imshow(combinedFilter, []);
title('Result of Combined Filter');

%%
clearvars;
close all;
clc;

originalImage = imread('moon.png');
originalImage = double(originalImage);

% Sobel filters
sobelHorizontal = fspecial('sobel');
sobelVertical = sobelHorizontal';

% Convolution
sobelHorizontalResult = imfilter(originalImage, sobelHorizontal);
sobelVerticalResult = imfilter(originalImage, sobelVertical);

% Combined filter
combinedFilter = sqrt(sobelHorizontalResult.^2 + sobelVerticalResult.^2);

% Display
figure;

subplot(2, 2, 1);
imshow(uint8(originalImage));
title('Original Image moon.png');

subplot(2, 2, 2);
imshow(sobelHorizontalResult, []);
title('Result of Sobel Horizontal');

subplot(2, 2, 3);
imshow(sobelVerticalResult, []);
title('Result of Sobel Vertical');

subplot(2, 2, 4);
imshow(combinedFilter, []);
title('Result of Combined Filter');
