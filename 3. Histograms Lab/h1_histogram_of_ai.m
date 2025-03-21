clearvars;
close all;
clc;

% Create 256x256 images with:

% a) All pixels with value 0
all_zero = zeros(256,256);

% b) All pixels with value 255
all_255 = 255 * ones(256,256);

% c) Left half of the image with values 0 and the right half with values 255
left_half_zero = zeros(256,256);
left_half_zero (: , 1 : 256/2) = 255;

% d) Random image with pixels values from uniform distribution between 0 and 255 
% (use function rand)
random_image = uint8 (255 * rand(255,255));

% e) With fluently changing grayscale from 0 (left side of the image) to 255 
% (right side of the image). To the input image use matrix multiplication of 
% column vector with ones with row vector [0:255]. 

gradient_vector = (0:255)';
gradient_image = uint8(gradient_vector * ones(1,256));

% When displaying images with imshow, either convert them to uint8 using
% Matlab command uint8(…) or usescaling: imshow(…, []).

figure('position', [100, 100, 1400, 500]);

subplot(2,5,1);
imshow(all_zero, []);
title('All Values is Zero (a)');

subplot(2,5,2);
imshow(all_255, []);
title('All Values is 255 (b)');

subplot(2,5,3);
imshow(left_half_zero, []);
title('Left Half is Zero (c)');

subplot(2,5,4);
imshow(random_image, []);
title('Random Image (d)');

subplot(2,5,5);
imshow(gradient_image, []);
title('Gradient Image (e)');

% Then calculate them using histogram(I, 0:256), where I is the image and
% the second argument are bin edges.

subplot(2,5,6);
histogram(all_zero(:), 0:255);
title('Histogram (a)');

subplot(2,5,7);
histogram(all_255(:), 0:255);
title('Histogram (b)');

subplot(2,5,8);
histogram(left_half_zero(:), 0:255);
title('Histogram (c)');

subplot(2,5,9);
histogram(random_image(:), 0:255);
title('Histogram (d)');

subplot(2,5,10);
histogram(gradient_image(:), 0:255);
title('Histogram (e)');


















