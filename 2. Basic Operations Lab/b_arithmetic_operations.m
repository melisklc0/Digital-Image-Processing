%%
clearvars;
close all;
clc;

lena = imread('lena.bmp');
jet = imread('jet.bmp');

figure('position', [600, 450, 600, 300]);
subplot(1, 2, 1);
imshow(lena);
title('Lena');

subplot(1, 2, 2);
imshow(jet);
title('Jet');

figure('position', [600, 100, 300, 300]);
result = imadd(lena, jet);
imshow(result, []);
title('Image Addition Result');

figure('position', [950, 100, 300, 300]);
modified_result = imadd(lena, jet, 'int16');
imshow(modified_result, []);
title('Image Addition Modified Result (int16)');

%--------------------------------

% Define the coefficients for the linear combination
coeff_lena = 0.5;
coeff_jet = 0.5; 

% Perform the linear combination
linear_combination = imlincomb(coeff_lena, lena, coeff_jet, jet);

figure('position', [600, 100, 300, 300]);
imshow(linear_combination);
title('Linear Combination 1');

coeff_lena = 0.8;
coeff_jet = 0.2;

linear_combination = imlincomb(coeff_lena, lena, coeff_jet, jet);

figure('position', [950, 100, 300, 300]);
imshow(linear_combination);
title('Linear Combination 2');

%----------------------------

% Subtract images Lena and Jet. Use the function imsubtract.

figure;
result = imsubtract(lena, jet);
imshow(result, []);
title('Subtraction Result');

% To improve the result change the datatype for the images Lena and Jet from uint8 to int16.

lena_int16 = int16(lena);
jet_int16 = int16(jet);

figure;
result = imsubtract(lena_int16, jet_int16);
imshow(result, []);
title('Subtraction Modified Result (int16)');

% Use the function imabsdiff to obtain the absolute difference of images Lena and Jet.

figure;
result = imabsdiff(lena, jet);
imshow(result, []);
title('Absolute Difference Result');

%--------------------------

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

%-------------------------------

figure;
subplot(1,2,1);
imshow(lena);
title('Lena');

negative_lena = imcomplement(lena);

subplot(1,2,2);
imshow(negative_lena, []);
title('Negative Lena');
