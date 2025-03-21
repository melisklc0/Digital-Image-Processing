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
