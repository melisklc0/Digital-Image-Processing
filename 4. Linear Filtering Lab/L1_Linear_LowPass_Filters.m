%% Task 1a --------------------------------------------------------

clearvars;
close all;
clc;

image = imread('board.png');

filter_size = 3;
averaging_filter = fspecial('average', [filter_size filter_size]);

convolved_image = filter2(averaging_filter, image, 'same');
convolved_image = uint8(convolved_image);

absolute_difference = imabsdiff(image, convolved_image);

% Display
figure('Position', [100, 100, 1000, 300]);

subplot(1, 3, 1);
imshow(image, []);
title('Original Image');

subplot(1, 3, 2);
imshow(convolved_image, []);
title('Averaging Filter');

subplot(1, 3, 3);
imshow(absolute_difference, []);
title('Absolute Difference');

% Analyse the impact of the kernel size on the result.

filter_size2 = 35;
averaging_filter2 = fspecial('average', [filter_size2 filter_size2]);

convolved_image2 = filter2(averaging_filter2, image, 'same');
convolved_image2 = uint8(convolved_image2);

absolute_difference2 = imabsdiff(image, convolved_image2);

% Display
figure('Position', [100, 100, 1000, 600]);

subplot(2, 3, 1);
imshow(image, []);
title('Original Image');

subplot(2, 3, 2);
imshow(convolved_image, []);
title('Averaging Filter 3x3');

subplot(2, 3, 3);
imshow(absolute_difference, []);
title('Absolute Difference');

subplot(2, 3, 4);
imshow(image, []);
title('Original Image');

subplot(2, 3, 5);
imshow(convolved_image2, []);
title('Averaging Filter 35x35');

subplot(2, 3, 6);
imshow(absolute_difference2, []);
title('Absolute Difference');


%% Task 1b --------------------------------------------------------

clearvars;
close all;
clc;

image = imread('board.png');

% Kernel (mask)
M = [1 2 1; 2 4 2; 1 2 1];
M = M/sum(sum(M));

convolved_image = filter2(M, image, 'same');
convolved_image = uint8(convolved_image);

absolute_difference = imabsdiff(image, convolved_image);

% Display
figure('Position', [100, 100, 1000, 400]);

subplot(1, 3, 1);
imshow(image, []);
title('Original Image');

subplot(1, 3, 2);
imshow(convolved_image, []);
title('Filtered Using Own Mask');

subplot(1, 3, 3);
imshow(absolute_difference, []); 
title('Absolute Difference');

%% Task 1c

image = imread('jet.bmp');

filter1 = fspecial('gaussian', [15, 15], 3);
filter2 = fspecial('gaussian', [30, 30], 6);

filteredImage1 = imgaussfilt(image, 3);
filteredImage2 = imgaussfilt(image, 6);

% Display
figure;

subplot(2, 3, 1);
imshow(image);
title('Original Image');

subplot(2, 3, 2);
imshow(filteredImage1);
title('Filtrated for std=3');

subplot(2, 3, 3);
imshow(filteredImage2);
title('Filtrated for std=6');

subplot(2, 3, 5);
mesh(filter1);
title('Kernel with std=3 (mesh)');

subplot(2, 3, 6);
mesh(filter2);
title('Kernel with std=6 (mesh)');
