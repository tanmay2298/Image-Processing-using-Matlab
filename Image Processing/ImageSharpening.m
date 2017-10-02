clear; clc;
a = imread('scenery.jpg');
b1 = imsharpen(a,'Amount', 0.5);
b2 = imsharpen(a,'Amount', 1);
b3 = imsharpen(a,'Amount', 1.5);

figure, subplot(2, 2, 1), imshow(a), title('Original');
subplot(2, 2, 2), imshow(b1), title('0.5');
subplot(2, 2, 3), imshow(b2), title('1');
subplot(2, 2, 4), imshow(b3), title('1.5');