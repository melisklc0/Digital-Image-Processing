% d) * (optional task) Do the same for colour spaces YCbCr and CIE Lab (corresponding conversion functions 
% are: rgb2ycbcr and rgb2lab). 

image = imread('Colours.jpg');

ycbcrImage = rgb2ycbcr(image);

figure;

subplot(2, 2, 1);
imshow(image);
title('Original Image');

subplot(2, 2, 2);
imshow(ycbcrImage(:, :, 1));
title('Hue Channel (ycbcr)');

subplot(2, 2, 3);
imshow(ycbcrImage(:, :, 2));
title('Saturation Channel (ycbcr)');

subplot(2, 2, 4);
imshow(ycbcrImage(:, :, 3));
title('Value Channel (ycbcr)');

% ----------------------------------

labImage = rgb2lab(image);

figure;

subplot(2, 2, 1);
imshow(image);
title('Original Image');

subplot(2, 2, 2);
imshow(labImage(:, :, 1));
title('Hue Channel (lab)');

subplot(2, 2, 3);
imshow(labImage(:, :, 2));
title('Saturation Channel (lab)');

subplot(2, 2, 4);
imshow(labImage(:, :, 3));
title('Value Channel (lab)');