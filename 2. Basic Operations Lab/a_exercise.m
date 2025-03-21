clearvars;
close all;
clc;

load functionsLUT.mat;

plot(square);
title('LUT Function: Square');

% Load the image
image = imread('lena.bmp');

% List of LUT functions to apply
lut_functions = {'square', 'inverse', 'saw'};

for i = 1:numel(lut_functions)
    % Apply LUT operation
    output_image = intlut(image, eval(lut_functions{i}));
    
    % Create a new figure with custom dimensions
    figure('position', [100, 100, 1200, 400]);

    % Plot the input image
    subplot(1, 3, 1);
    imshow(image);
    title('Input Image');
    daspect([1 1 1]);
    
    % Plot the LUT function
    subplot(1, 3, 2);
    plot(eval(lut_functions{i}));
    title(['LUT Function: ' lut_functions{i}]);
    xlim([0 255]);
    ylim([0 255]);
    daspect([1 1 1]);
    
    % Plot the output image
    subplot(1, 3, 3);
    imshow(output_image);
    title('Output Image');
    daspect([1 1 1]);
    
    % Add titles to all plots
    subtitle(['LUT Transformation: ' lut_functions{i}]);
end