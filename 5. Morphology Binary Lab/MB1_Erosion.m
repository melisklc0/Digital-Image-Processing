%% Task 1a
clearvars;
close all;
clc;

image = imread('ertka.bmp');

se = strel('square', 3);

singleErosion = imerode(image, se);

doubleErosion = imerode(singleErosion, se);

tripleErosion = imerode(doubleErosion, se);

% Display
figure;

subplot(2,2,1);
imshow(image);
title('Original Image');

subplot(2,2,2);
imshow(singleErosion);
title('Single Erosion');

subplot(2,2,3);
imshow(doubleErosion);
title('Double Erosion');

subplot(2,2,4);
imshow(tripleErosion);
title('Triple Erosion');

%% Task 1b

clearvars;
close all;
clc;

image = imread('face.bmp');

se_diagonal = [0 0 1;
               0 1 0;
               1 0 0];

se_vertical = [0 1 0;
               0 1 0; 
               0 1 0]; 

% Erosion
removedLines1 = imerode(image, se_diagonal);
removedLines2 = imerode(image, se_vertical);

% Display
figure;

subplot(1,3,1);
imshow(image);
title('Original Image');

subplot(1,3,2);
imshow(removedLines1);
title('Removing lines /');

subplot(1,3,3);
imshow(removedLines2);
title('Removing lines \');

%% Task 1c
clearvars;
close all;
clc;

image = imread('ertka.bmp');
se = strel('square', 5);

erosion = imerode(image, se);
dilation = imdilate(image, se);
opening = imopen(image, se);
closing = imclose(image, se);
opening_then_closing = imclose(imopen(image, se), se);

% Display
figure;

subplot(2,3,1);
imshow(image);
title('Original Image');

subplot(2,3,2);
imshow(erosion);
title('After Erosion');

subplot(2,3,3);
imshow(dilation);
title('After Dilation');

subplot(2,3,4);
imshow(opening);
title('After Opening');

subplot(2,3,5);
imshow(closing);
title('After Closing');

subplot(2,3,6);
imshow(opening_then_closing);
title('After Opening, then Closing');


