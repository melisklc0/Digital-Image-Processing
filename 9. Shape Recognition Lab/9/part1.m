apple_image = imread('E:\Üniversite\3. SINIF\Digital Image\9\Models\apple.gif');
bell_image = imread('E:\Üniversite\3. SINIF\Digital Image\9\Models\bell.gif');
hammer_image = imread('E:\Üniversite\3. SINIF\Digital Image\9\Models\hammer.gif');

Rc_apple = circularity(apple_image);
Rc_bell = circularity(bell_image);
Rc_hammer = circularity(hammer_image);

w = [Rc_apple, Rc_bell, Rc_hammer];

figure;

for i = 1:18
    A = imread(['E:\Üniversite\3. SINIF\Digital Image\9\Queries\Image', num2str(i), '.gif']);
    circ_coefficient = circularity(A);
    [M, I] = min(abs(w - circ_coefficient));
    subplot(3, 6, i);
    imshow(A);
    title(['Class ', num2str(I)]);
end