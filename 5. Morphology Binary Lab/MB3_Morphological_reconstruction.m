clearvars;
close all;
clc;

image = imread('text.bmp');
vertical_mask = ones(51, 1);

opened_image = imopen(image, vertical_mask);

figure;

subplot(2, 1, 1);
imshow(image);
title('Original Image');

subplot(2, 1, 2);
imshow(opened_image);
title('Opening (only vertical parts of letters)');

%-----------------------------

eroded_image = imerode(image, vertical_mask);
reconstructed_image = imreconstruct(eroded_image, image);

figure;

subplot(3, 1, 1);
imshow(image);
title('Original image (also used as the mask image)');

subplot(3, 1, 2);
imshow(eroded_image);
title('Eroded image (used as the marker image) ');

subplot(3, 1, 3);
imshow(reconstructed_image);
title('Reconstruction (letters with vertical part) ');



