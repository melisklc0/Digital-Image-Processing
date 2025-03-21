
%% Task 4a

clearvars;
close all;
clc;

image = imread('fingerprint.bmp');

thinned_image_1 = bwmorph(image, 'thin', 1);
thinned_image_2 = bwmorph(image, 'thin', 2);
thinned_image_inf = bwmorph(image, 'thin', Inf);

figure;

subplot(2, 2, 1);
imshow(image);
title('Original Image');

subplot(2, 2, 2);
imshow(thinned_image_1);
title('Thinning');

subplot(2, 2, 3);
imshow(thinned_image_2);
title('2x Thinning');

subplot(2, 2, 4);
imshow(thinned_image_inf);
title('\infty Thinning');

%% Task 4b

clearvars;
close all;
clc;

image = imread('bone.bmp');
skeleton_image = bwmorph(image, 'skel', Inf);

figure;

subplot(1, 2, 1);
imshow(image);
title('Original Image');

subplot(1, 2, 2);
imshow(skeleton_image);
title('Skeleton');


%% Task 4c

clearvars;
close all;
clc;

image = imread('text.bmp');
filled_image = imfill(image, 'holes');

figure;

subplot(1, 2, 1);
imshow(image);
title('Original Image');

subplot(1, 2, 2);
imshow(filled_image);
title('Image with Holes Filled');


%% Task 4c

clearvars;
close all;
clc;

image = imread('text.bmp');
cleared_image = imclearborder(image);

figure;

subplot(1, 2, 1);
imshow(image);
title('Original Image');

subplot(1, 2, 2);
imshow(cleared_image);
title('Image with Cleared Border');