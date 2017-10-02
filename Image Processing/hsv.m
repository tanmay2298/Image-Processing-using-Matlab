clear; clc;
a = imread('scenery.jpg');
r = a(:, :, 1);
g = a(:, :, 2);
b = a(:, :, 3);

a_hsv = rgb2hsv(a);
h = a_hsv(:, :, 1);
s = a_hsv(:, :, 2);
v = a_hsv(:, :, 3);

figure, subplot(2, 3, 1), imshow(a), title('Original');
subplot(2, 3, 2), imshow(h), title('Channel H');
subplot(2, 3, 3), imshow(s), title('Channel S');
subplot(2, 3, 4), imshow(v), title('Channel V');
subplot(2, 3, 5), imshow(a_hsv), title('HSV Image');