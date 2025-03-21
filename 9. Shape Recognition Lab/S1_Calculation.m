% Read images
appleImage = imread('Models\apple.gif');
bellImage = imread('Models\bell.gif');
hammerImage = imread('Models\hammer.gif');

% Calculate circularity coefficients
RcApple = circularity(appleImage);
RcBell = circularity(bellImage);
RcHammer = circularity(hammerImage);

% Create a vector of coefficients
w = [RcApple, RcBell, RcHammer];
