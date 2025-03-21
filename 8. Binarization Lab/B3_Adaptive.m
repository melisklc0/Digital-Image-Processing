% Load the image
coins_grad_image = imread('coins_grad.png');

% Display the original image and its histogram
figure;

% Display the original image
subplot(2, 3, 1);
imshow(coins_grad_image);
title('Original Image');

% Display the histogram
subplot(2, 3, 2);
imhist(coins_grad_image);
title('Histogram');

% Manually selected threshold (modify as needed)
manual_threshold = 100;
manual_binary_image = imbinarize(coins_grad_image, manual_threshold / 255);

% Otsu, Kittler, and Yen binarization
otsu_binary_image = imbinarize(coins_grad_image, graythresh(coins_grad_image));
kittler_threshold = clusterKittler(coins_grad_image);
kittler_binary_image = imbinarize(coins_grad_image, kittler_threshold / 255);
yen_threshold = entropyYen(coins_grad_image);
yen_binary_image = imbinarize(coins_grad_image, yen_threshold / 255);

% Display manually selected, Otsu, Kittler, and Yen binarization results
subplot(2, 3, 3);
imshow(manual_binary_image);
title('Manual Binarization');

subplot(2, 3, 4);
imshow(otsu_binary_image);
title('Otsu Binarization');

subplot(2, 3, 5);
imshow(kittler_binary_image);
title('Kittler Binarization');

subplot(2, 3, 6);
imshow(yen_binary_image);
title('Yen Binarization');

% Adaptive thresholding using adaptthresh
adaptive_threshold = adaptthresh(coins_grad_image, 'NeighborhoodSize', 21, 'Statistic', 'Mean');
adaptive_binary_image = imbinarize(coins_grad_image, adaptive_threshold);

% Display adaptive threshold and the resulting binary image
figure;
subplot(1, 3, 1);
imshow(adaptive_threshold);
title('Adaptive Threshold');

% Use imfill to fill holes and imopen to correct isolated pixels
filled_image = imfill(adaptive_binary_image, 'holes');
opened_image = imopen(filled_image, strel('disk', 5));

subplot(1, 3, 2);
imshow(filled_image);
title('Filled Image');

subplot(1, 3, 3);
imshow(opened_image);
title('Corrected Image');
