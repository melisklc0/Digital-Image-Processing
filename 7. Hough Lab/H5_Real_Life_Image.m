% Create a new section
close all; clearvars; clc;

% Load image real_squares.png
realImage = imread('real_squares.png');

% Convert to grayscale if the image is in RGB format
if size(realImage, 3) == 3
    grayImage = rgb2gray(realImage);
else
    grayImage = realImage;
end

% Apply filtering, morphological processing, binarization, and edge detection
threshold = 0.5; % Adjust the threshold as needed
binaryImage = imbinarize(grayImage, threshold);
se = strel('square', 5); % Adjust structuring element size
closedImage = imclose(binaryImage, se);
edgesImage = edge(closedImage, 'Canny');

% Perform the Hough transform for the edge image
[H, theta, rho] = hough(edgesImage);

% Find and display lines in the image using houghlines
peaks = houghpeaks(H, 8, 'NHoodSize', [19, 19]);

% Display results in a single figure
figure('Name', 'Hough Transform Results for real_squares.png', 'Position', [100, 100, 1200, 400]);

% Original image
subplot(1, 3, 1);
imshow(realImage);
title('Original Image');
axis on;

% Processed image
subplot(1, 3, 2);
imshow(closedImage);
title('Processed Image');
axis on;

% Edges with houghlines superimposed
subplot(1, 3, 3);
imshow(realImage);
title('Edges with Houghlines');
axis on;
hold on;

% Find and display lines in the image using houghlines
lines = houghlines(edgesImage, theta, rho, peaks);
for k = 1:length(lines)
    xy = [lines(k).point1; lines(k).point2];
    plot(xy(:, 1), xy(:, 2), 'LineWidth', 2, 'Color', 'g');
end
hold off;

% Hough space with maxima marked (in a separate figure)
figure('Name', 'Hough Space with Maxima', 'Position', [300, 100, 600, 400]);
imshow(imadjust(mat2gray(H)), 'XData', theta, 'YData', rho, 'InitialMagnification', 'fit');
title('Hough Space with Maxima');
xlabel('Theta (degrees)');
ylabel('Rho');
axis on;
axis normal;
hold on;
plot(theta(peaks(:, 2)), rho(peaks(:, 1)), 'o', 'MarkerSize', 10, 'MarkerEdgeColor', 'r', 'LineWidth', 2);
hold off;
