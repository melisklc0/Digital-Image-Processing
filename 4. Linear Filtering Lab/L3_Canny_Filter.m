clearvars;
close all;
clc;

originalImage = imread('moon.png');

edgesDefault = edge(originalImage, 'canny');

sigmaAdjusted = 1.5;
edgesSigmaAdjusted = edge(originalImage, 'canny', [], sigmaAdjusted);

thresholdAdjusted = 0.2;
edgesThresholdAdjusted = edge(originalImage, 'canny', thresholdAdjusted);

% Display
figure;
imshow(originalImage);
title('Fig. 1. Original Image moon.png');

figure;
imshow(edgesDefault);
title('Fig. 2. Canny filter with default parameters');

figure;
imshow(edgesSigmaAdjusted);
title('Fig. 3. Canny filter with adjusted standard deviation');

figure;
imshow(edgesThresholdAdjusted);
title('Fig. 4. Canny filter with adjusted threshold');
