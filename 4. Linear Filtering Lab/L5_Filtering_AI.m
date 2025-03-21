clearvars;
close all;
clc;

A = [0 0 0 200 200 200 100 100 100; 
     0 0 0 200 200 200 100 100 100; 
     0 0 0 200 200 200 100 100 100];

Fv = [1 0 -1;
      2 0 -2;
      1 0 -1];

% Calculate the output values only where the filter mask fully covers the image, which corresponds to Matlab 
% function filter2 with shape parameter 'valid': filter2(h,x,'valid'). 
resultManual = filter2(Fv, A, 'valid');

% Display
disp('Manually Calculated Result:');
disp(resultManual);
