%% Task 1a Hough space visualization

close all; 
clearvars; 
clc;

% 1. Create an image A 10×10 pixels initialized with values 0 (use Matlab function zeros). Set the value of 
% three colinear pixels: A(2,2), A(4,4) A(8,8) to 1. Display the image using imagesc.

A = zeros(10, 10);

A(2, 2) = 1;
A(4, 4) = 1;
A(8, 8) = 1;

figure;
imagesc(A);
title('Image A');
colormap(gray);
axis equal;
axis off;

% Perform the Hough transform. Display the Hough space in a new figure (using imshow and scaling '[]').

theta = -90:0.5:89.5;
[H, theta, rho] = hough(A, 'Theta', theta, 'RhoResolution', 0.1);

figure;
imshow(imadjust(mat2gray(H)), 'XData', theta, 'YData', rho, 'InitialMagnification', 'fit', 'Colormap', parula);
title('Task 2 Hough Space');
xlabel('Theta (degrees)');
ylabel('Rho');
axis on;
axis normal;

% Answering questions:
% - Axes of the Hough space image represent the parameters of the Hough transform: theta (angle) and rho (distance from the origin).
% - Each sinusoid corresponds to a line in the image space passing through a point. The intersection point in the Hough space represents the parameters (theta, rho) of that line.
% - Three colinear pixels in the image result in three sinusoids intersecting at one point because they lie on the same line in the image space.

%  Set also pixels: A(9,9) and A(10,10) as “1” then recalculate and display the Hough transform. 
A(9, 9) = 1;
A(10, 10) = 1;

[H, theta, rho] = hough(A, 'Theta', theta, 'RhoResolution', 0.1);

figure;
imshow(imadjust(mat2gray(H)), 'XData', theta, 'YData', rho, 'InitialMagnification', 'fit', 'Colormap', parula);
title('Final Hough Space (5 sinusoids)');
xlabel('Theta (degrees)');
ylabel('Rho');
axis on;
axis normal;


%% Task 1b Parameters of the straight line

% Task 4:
% Find the maximum in the Hough space
[maxValue, maxIndex] = max(H(:));
[row, col] = ind2sub(size(H), maxIndex);

% Display the intersection point in the Hough space
figure('Name', 'Fig4: Intersection Point in Hough Space');
imshow(imadjust(mat2gray(H)), 'XData', theta, 'YData', rho, 'InitialMagnification', 'fit', 'Colormap', parula);
title('Intersection Point in Hough Space');
xlabel('Theta (degrees)');
ylabel('Rho');
axis on;
axis normal;
hold on;
plot(theta(col), rho(row), 'rx', 'MarkerSize', 10, 'LineWidth', 2);

% Task 5:
% Calculate the line parameters
x = 0:0.1:10;
thetaRadians = deg2rad(theta(col));
y = (rho(row) - x .* cos(thetaRadians)) / sin(thetaRadians);

% Task 6:
% Display the line in the image
figure('Name', 'Fig5: Image A with Detected Line');
imagesc(A);
title('Image A with Detected Line');
colormap(gray);
axis equal;
axis off;
hold on;
plot(x + 1, y + 1, 'r', 'LineWidth', 2);
hold off;

