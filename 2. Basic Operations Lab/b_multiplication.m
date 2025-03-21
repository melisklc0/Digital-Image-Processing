lena = imread('lena.bmp');
jet = imread('jet.bmp');

% Constant factor for multiplication
constant_factor = 2.5; 

% Multiplication by the constant factor
brightened_image = immultiply(lena, constant_factor);

figure;
subplot(1,2,1);
imshow(lena);
title('Lena');

subplot(1,2,2);
imshow(brightened_image, []);
title('Brightened Lena');