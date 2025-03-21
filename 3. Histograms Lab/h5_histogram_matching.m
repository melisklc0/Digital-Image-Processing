clearvars;
close all;
clc;

phobos = imread('phobos.bmp');
figure('position', [50, 100, 1400, 650]);

subplot(2, 5, 1);
imshow(phobos);
title('Original Phobos Image');

phobos_stretched = imadjust(phobos);
subplot(2, 5, 2);
imshow(phobos_stretched);
title('After Histogram Stretching');

phobos_he = histeq(phobos);
subplot(2, 5, 3);
imshow(phobos_he);
title('After Histogram Equalization (HE)');

phobos_clahe = adapthisteq(phobos);
subplot(2, 5, 4);
imshow(phobos_clahe);
title('After Adaptive Equalization');

load desiredHistogram;
phobos_matched = histeq(phobos, desiredHistogram);
subplot(2, 5, 5);
imshow(phobos_matched);
title('After Histogram Matching (HM)');

% Calculate and display histograms for all images
subplot(2, 5, 6);
imhist(phobos);
title('Histogram');

subplot(2, 5, 7);
imhist(phobos_stretched);
title('Histogram');

subplot(2, 5, 8);
imhist(phobos_he);
title('Histogram');

subplot(2, 5, 9);
imhist(phobos_clahe);
title('Histogram');

subplot(2, 5, 10);
imhist(phobos_matched);
title('Histogram');
