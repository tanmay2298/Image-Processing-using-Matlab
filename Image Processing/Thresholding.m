clear, clc;
a = imread('himalayas.jpg');
a_gray = rgb2gray(a);
a_gray = im2double(a_gray);

otsu_level = graythresh(a_gray);

b_otsu_thresh = im2bw(a_gray, otsu_level);
b1 = im2bw(a_gray, 50/255);
b2 = im2bw(a_gray, 100/255);
b3 = im2bw(a_gray, 150/255);

figure, subplot(2, 3, 1), imshow(a), title('Original');
subplot(2, 3, 2), imshow(a_gray), title('Double Gray');
subplot(2, 3, 3), imshow(b_otsu_thresh), title('Otsu Thresh');
subplot(2, 3, 4), imshow(b1), title('Thresh = 50');
subplot(2, 3, 5), imshow(b2), title('Thresh = 100');
subplot(2, 3, 6), imshow(b3), title('Thresh = 150');