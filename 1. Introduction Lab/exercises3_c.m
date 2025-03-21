% c) Perform (a) and (b) for lena.bmp and observe the results.

image = imread('lena.bmp');

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

%----------------------------

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