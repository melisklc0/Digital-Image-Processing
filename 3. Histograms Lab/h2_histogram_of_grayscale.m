clearvars;
close all;
clc;

% Open baboon.bmp and convert to grayscale.

image = imread('baboon.bmp');
grayscale_image = rgb2gray(image);

% Create versions of the original image with different grayscale and contrast: 

% G – original image in grayscale
g = grayscale_image;

% G1 – values of all pixels increased by 70
g1 = g +70;

% G2 – values of all pixels decreased by 70
g2 = g -70;

% G3 – increased contrast, e.g. G3=2*G
g3 = 2 * g;

% G4 – decreased contrast, G4=0.5*G 
g4 = 0.5 * g;

% Display all images and their histograms in subplots: 

figure('position', [100, 100, 1400, 500]);

subplot(2,5,1);
imshow(g, []);
title('G');

subplot(2,5,2);
imshow(g1, []);
title('G1');

subplot(2,5,3);
imshow(g2, []);
title('G2');

subplot(2,5,4);
imshow(g3, []);
title('G3');

subplot(2,5,5);
imshow(g4, []);
title('G4');

% ----------------------------------------

subplot(2,5,6);
histogram(g(:), 0:255);
title('Histogram (G)');

subplot(2,5,7);
histogram(g1(:), 0:255);
title('Histogram (G1)');

subplot(2,5,8);
histogram(g2(:), 0:255);
title('Histogram (G2)');

subplot(2,5,9);
histogram(g3(:), 0:255);
title('Histogram (G3)');

subplot(2,5,10);
histogram(g4(:), 0:255);
title('Histogram (G4)');



