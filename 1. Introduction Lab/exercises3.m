% a) Create a new section (%%). Load image colours.jpg and display each colour component of R, G, B in a 
% subplot. For example the fist channel can be assigned by: R = A(:, :, 1); Add titles for all subplots.

image = imread('Colours.jpg');

R = image(:, :, 1);
G = image(:, :, 2);
B = image(:, :, 3);

figure;

subplot(2, 2, 1);
imshow(image);
title('Original Image');

subplot(2, 2, 2);
imshow(R);
title('Red Channel');

subplot(2, 2, 3);
imshow(G);
title('Green Channel');

subplot(2, 2, 4);
imshow(B);
title('Blue Channel');

% b) Convert the image to HSV (rgb2hsv) and display the original image and three channels:

image = imread('Colours.jpg');
hsvImage = rgb2hsv(image);

figure;

subplot(2, 2, 1);
imshow(image);
title('Original Image');

subplot(2, 2, 2);
imshow(hsvImage(:, :, 1));
title('Hue Channel');

subplot(2, 2, 3);
imshow(hsvImage(:, :, 2));
title('Saturation Channel');

subplot(2, 2, 4);
imshow(hsvImage(:, :, 3));
title('Value Channel');