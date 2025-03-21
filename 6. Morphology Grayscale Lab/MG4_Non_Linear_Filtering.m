close all;
clearvars;
clc;

A = [ 10  20  30  40;
     110 120 130 140;
     256 256   0 200];

se = strel('rectangle', [3, 3]);

medianFilteredA = medfilt2(A, [3, 3]);
minFilteredA = imerode(A, se);
maxFilteredA = imdilate(A, se);

disp('Original Image:');
disp(A);
disp('-----------------------------');
disp('Median Filtered Image:');
disp(medianFilteredA);
disp('-----------------------------');
disp('Minimum Filtered Image:');
disp(minFilteredA);
disp('-----------------------------');
disp('Maximum Filtered Image:');
disp(maxFilteredA);
