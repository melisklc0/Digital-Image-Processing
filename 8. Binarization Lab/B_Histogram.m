% Coins Image
coins_image = imread('coins.png');

figure;
% Display the original image
subplot(2, 2, 1);
imshow(coins_image);
title('Original Image');

% Display the histogram
subplot(2, 2, 2);
imhist(coins_image);
title('Histogram');

% Determine the binarization threshold (you can modify this part)
threshold = 120; % Modify this threshold based on the histogram analysis
binary_coins = imbinarize(coins_image, threshold / 255);

% Display the binary image
subplot(2, 2, 3);
imshow(binary_coins);
title('Binary Image');

% Shape Images
shape1_image = imread('shape1.png');
shape2_image = imread('shape2.png');
shape3_image = imread('shape3.png');

figure;
% Display original images and histograms
images = {shape1_image, shape2_image, shape3_image};
for i = 1:3
    % Display original image
    subplot(3, 4, (i - 1) * 4 + 1);
    imshow(images{i});
    title(['Shape ' num2str(i)]);

    % Display histogram
    subplot(3, 4, (i - 1) * 4 + 2);
    imhist(images{i});
    title('Histogram');

    % Determine the binarization threshold (you can modify this part)
    threshold = 120; % Modify this threshold based on the histogram analysis
    binary_shape = imbinarize(images{i}, threshold / 255);

    % Display the binary image
    subplot(3, 4, (i - 1) * 4 + 3);
    imshow(binary_shape);
    title('Binary Image');
end
