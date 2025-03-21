% a) Display the image lena.jpg. Use function imread to read the image to matrix A and then imshow to
% display the matrix (see help for details).

figure;

subplot(2,2,1);
A = "lena.jpg";
imshow(A);
title('Original image');

% b) Convert the image to grayscale using rgb2gray (assign the grayscale image to new variable B) and
% display it. Before you display new image you may use figure to open new window, so the previous
% image will be preserved.

subplot(2,2,2);
B = imread("lena.jpg");
B = rgb2gray(B);
imshow(B);
title('Grayscale image');

% c) Greyscale images can be treated as a two-dimensional brightness function f(x, y), where: x, y are the
% coordinates of the pixel and f(x, y) is the brightness level (usually 0 – 255). Display image lena.bmp
% as a two-dimensional function using Matlab function mesh. It is necessary to convert the data into a
% double type – e.g. mesh(double(A)). Display the result. Rotate the image using the mouse. 

subplot(2,2,3);
C = imread("lena.bmp");
C = rgb2gray(C);
mesh(double(C));
title('Mesh f(x,y)');

% d) Plot an intersection (“slice”) of the grayscale version of the image, i.e. values of f(x,y) for when either
% x or y is constant. Use plot function, e.g. plot(A(10, :)) to plot row 10 and all columns. Display the
%result. 

subplot(2,2,4);
plot(B(10,:));
title('Intersection');

% f) *Mark the line of intersection by replacing row 10 of the grayscale image by zeros (dark line) and
% modify subplot with the grayscale image in point (e). 

subplot(2,2,2);
B(10,:)= zeros();
imshow(B);
title('Grayscale image with dark line');
