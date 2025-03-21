%% Task 1a Erosion and dilation

clearvars;
close all;
clc;

image = imread('ferrari.bmp');
grayImage = rgb2gray(image);

se = strel('square', 3);

erosion = imerode(grayImage, se);
dilation = imdilate(grayImage, se);

morphGradient = dilation - erosion;

figure;

subplot(2, 2, 1);
imshow(grayImage);
title('Original Image');

subplot(2, 2, 2);
imshow(erosion);
title('Erosion');

subplot(2, 2, 3);
imshow(dilation);
title('Dilation');

subplot(2, 2, 4);
imshow(morphGradient);
title('Morphological Gradient');

%% Task 1b Opening and closing

clearvars;
close all;
clc;

image = imread('ferrari.bmp');
grayImage = rgb2gray(image);

se = strel('square', 3);

opening = imopen(grayImage, se);
closing = imclose(grayImage, se);

figure;

subplot(2, 2, 1);
imshow(grayImage);
title('Original Image');

subplot(2, 2, 3);
imshow(opening);
title('Opening');

subplot(2, 2, 4);
imshow(closing);
title('Closing');

%% Task 1c Top hat and bottom hat

clearvars;
close all;
clc;

image = imread('ferrari.bmp');
grayImage = rgb2gray(image);

se = strel('square', 3);

topHat = imtophat(grayImage, se);
bottomHat = imbothat(grayImage, se);

figure;

subplot(2, 2, 1);
imshow(grayImage);
title('Original Image');

subplot(2, 2, 3);
imshow(topHat);
title('Top Hat');

subplot(2, 2, 4);
imshow(bottomHat);
title('Bottom Hat');
