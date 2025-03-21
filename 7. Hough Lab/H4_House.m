% Create a new section
close all; clearvars; clc;

% Load image house.png
originalImage = imread('house.png');

% Convert to grayscale if the image is in RGB format
if size(originalImage, 3) == 3
    grayImage = rgb2gray(originalImage);
else
    grayImage = originalImage;
end

% Adjust the standard deviation of Canny filter for edge detection
edgesImage = edge(grayImage, 'Canny', [], 1.5);

% Perform the Hough transform for the edge image
[H, theta, rho] = hough(edgesImage);

% Display results in a single figure with subplots
figure('Name', 'Hough Transform Results for house.png');
colormap(gray);

% Original image
subplot(1, 3, 1);
imshow(originalImage);
title('Original Image');
axis on;

% Edges with houghlines superimposed
subplot(1, 3, 2);
imshow(originalImage);
title('Edges with Houghlines');
axis on;
hold on;

% Find and display lines in the image using houghlines
peaks = houghpeaks(H, 8, 'NHoodSize', [19, 19]);
lines = houghlines(edgesImage, theta, rho, peaks);
for k = 1:length(lines)
    xy = [lines(k).point1; lines(k).point2];
    plot(xy(:, 1), xy(:, 2), 'LineWidth', 2, 'Color', 'g');
end
hold off;

% Edges
subplot(1, 3, 3);
imshow(edgesImage);
title('Edges');
axis on;

% Hough space with maxima marked
figure('Name', 'Hough Space with Maxima');
imshow(imadjust(mat2gray(H)), 'XData', theta, 'YData', rho, 'InitialMagnification', 'fit');
title('Hough Space with Maxima');
xlabel('Theta (degrees)');
ylabel('Rho');
axis on;
axis normal;
hold on;
plot(theta(peaks(:, 2)), rho(peaks(:, 1)), 'o', 'MarkerSize', 10, 'MarkerEdgeColor', 'r', 'LineWidth', 2);
hold off;
