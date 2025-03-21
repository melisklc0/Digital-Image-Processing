% Load images
coins_image = imread('coins.png');
rice_image = imread('rice.png');
text_image = imread('text.bmp');

% Binarization using Otsu method
otsu_coins = imbinarize(coins_image, graythresh(coins_image));
otsu_rice = imbinarize(rice_image, graythresh(rice_image));
otsu_text = imbinarize(text_image, graythresh(text_image));

% Binarization using Kittler method
threshold_kittler_coins = clusterKittler(coins_image);
kittler_coins = imbinarize(coins_image, threshold_kittler_coins / 255);
threshold_kittler_rice = clusterKittler(rice_image);
kittler_rice = imbinarize(rice_image, threshold_kittler_rice / 255);
threshold_kittler_text = clusterKittler(text_image);
kittler_text = imbinarize(text_image, threshold_kittler_text / 255);

% Binarization using Yen method
threshold_yen_coins = entropyYen(coins_image);
yen_coins = imbinarize(coins_image, threshold_yen_coins / 255);
threshold_yen_rice = entropyYen(rice_image);
yen_rice = imbinarize(rice_image, threshold_yen_rice / 255);
threshold_yen_text = entropyYen(text_image);
yen_text = imbinarize(text_image, threshold_yen_text / 255);

% Display results in subplots
figure;

% Coins image
subplot(3, 4, 1);
imshow(coins_image);
title('Original Coins');
subplot(3, 4, 2);
imshow(otsu_coins);
title('Otsu Binarization');
subplot(3, 4, 3);
imshow(kittler_coins);
title('Kittler Binarization');
subplot(3, 4, 4);
imshow(yen_coins);
title('Yen Binarization');

% Rice image
subplot(3, 4, 5);
imshow(rice_image);
title('Original Rice');
subplot(3, 4, 6);
imshow(otsu_rice);
title('Otsu Binarization');
subplot(3, 4, 7);
imshow(kittler_rice);
title('Kittler Binarization');
subplot(3, 4, 8);
imshow(yen_rice);
title('Yen Binarization');

% Text image
subplot(3, 4, 9);
imshow(text_image);
title('Original Text');
subplot(3, 4, 10);
imshow(otsu_text);
title('Otsu Binarization');
subplot(3, 4, 11);
imshow(kittler_text);
title('Kittler Binarization');
subplot(3, 4, 12);
imshow(yen_text);
title('Yen Binarization');
