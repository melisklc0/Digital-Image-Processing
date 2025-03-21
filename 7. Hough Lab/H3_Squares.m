% Create a new section
close all; clearvars; clc;

originalImage = imread('squares.png');
edgesImage = edge(originalImage, 'Canny');
[H, theta, rho] = hough(edgesImage);

% Display results in subplots
figure('Name', 'Hough Transform Results');
colormap(gray);

% Original image
subplot(2, 2, 1);
imshow(originalImage);
title('Original Image');
axis on;

% Hough space
subplot(2, 2, 2);
imshow(imadjust(mat2gray(H)), 'XData', theta, 'YData', rho, 'InitialMagnification', 'fit');
title('Hough Space');
xlabel('Theta (degrees)');
ylabel('Rho');
axis on;
axis normal;
hold on;

% Edges
subplot(2, 2, 3);
imshow(edgesImage);
title('Edges');
axis on;

% Are the expected number of maxima visible?
subplot(2, 2, 4);
imshow(imadjust(mat2gray(H)), 'XData', theta, 'YData', rho, 'InitialMagnification', 'fit');
title('Hough Space with Expected Maxima');
xlabel('Theta (degrees)');
ylabel('Rho');
axis on;
axis normal;
hold on;

% Use houghpeaks to look for 8 maxima
peaks = houghpeaks(H, 8, 'NHoodSize', [19, 19]);

% Plot maxima in Hough space
plot(theta(peaks(:, 2)), rho(peaks(:, 1)), 'o', 'MarkerSize', 10, 'MarkerEdgeColor', 'r', 'LineWidth', 2);

% Find and display lines in the image using houghlines
lines = houghlines(edgesImage, theta, rho, peaks);

% Display the lines on the original image
subplot(2, 2, 1);
hold on;
for k = 1:length(lines)
    xy = [lines(k).point1; lines(k).point2];
    plot(xy(:, 1), xy(:, 2), 'LineWidth', 2, 'Color', 'g');
end
hold off;

% Display the lines in the Hough space with maxima marked
subplot(2, 2, 2);
for k = 1:length(lines)
    plot(lines(k).theta, lines(k).rho, 'g', 'LineWidth', 2);
end
hold off;
