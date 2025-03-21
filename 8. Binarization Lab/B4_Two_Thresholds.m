% Load the image
bart_image = imread('bart.bmp');

% Display the original image and its histogram
figure;

% Display the original image
subplot(2, 3, 1);
imshow(bart_image);
title('Original Image');

% Display the histogram
subplot(2, 3, 2);
imhist(bart_image);
title('Histogram');

% Determine the skin color range in the histogram (use Data Tips in MATLAB)
lower_threshold = 130;  % Adjust based on the histogram analysis
upper_threshold = 190;  % Adjust based on the histogram analysis

% Binarization using two thresholds
binary_image = (bart_image > lower_threshold) & (bart_image < upper_threshold);

% Display the binarized image
subplot(2, 3, 3);
imshow(binary_image);
title('Binarized Image');

% Display only skin color areas on the original image
skin_color_image = bart_image;
skin_color_image(~binary_image) = 0;  % Set non-skin pixels to zero

% Display the original image with skin color highlighted
subplot(2, 3, [4, 5, 6]);
imshow(skin_color_image);
title('Skin Color Areas');

