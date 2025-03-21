clearvars;
close all;
clc;

% Image
A = zeros(11);
A(3:7, 3:9) = 1;
A(3, 6) = 0;
A(4, 6) = 0;
A(8, 6) = 1;
A(9, 6) = 1;

% Visualize the image using command imagesc(A).
figure;
subplot(2, 3, 1);
imagesc(A);
colormap('gray');
title('Original Image');

se = ones(3);

eroded_image = imerode(A, se);
subplot(2, 3, 2);
imagesc(eroded_image);
colormap('gray');
title('Eroded Image');

opened_image = imopen(A, se);
subplot(2, 3, 3);
imagesc(opened_image);
colormap('gray');
title('Erosion -> Dilation (Opening)');

dilated_image = imdilate(A, se);
subplot(2, 3, 5);
imagesc(dilated_image);
colormap('gray');
title('Dilated Image');

closed_image = imclose(A, se);
subplot(2, 3, 6);
imagesc(closed_image);
colormap('gray');
title('Dilation -> Erosion (Closing)');