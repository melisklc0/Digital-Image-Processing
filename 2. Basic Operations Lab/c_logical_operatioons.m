%%
clearvars;
close all;
clc;

% Load two images circle.bmp and square.bmp. Convert the loaded images to logical type: 
% circle = logical(circle). View the loaded images.

circle = imread('circle.bmp');
square = imread('square.bmp');

circle = logical(circle);
square = logical(square);

figure;
subplot(1, 2, 1);
imshow(circle);
title('Circle Image (Logical)');

subplot(1, 2, 2);
imshow(square);
title('Square Image (Logical)');

% On the loaded images perform selected logical operations: 
% NOT (~), AND (&), OR (|), XOR (xor). Display the results in 4 (2×2) subplots.

not_result = ~circle;
and_result = circle & square;
or_result = circle | square;
xor_result = xor(circle, square);

figure;

subplot(2, 2, 1);
imshow(not_result);
title('NOT Operation');

subplot(2, 2, 2);
imshow(and_result);
title('AND Operation');

subplot(2, 2, 3);
imshow(or_result);
title('OR Operation');

subplot(2, 2, 4);
imshow(xor_result);
title('XOR Operation');
