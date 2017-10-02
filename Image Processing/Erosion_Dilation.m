clear, clc;
a = imread('scenery.jpg');
a = rgb2gray(a);

%Generating a structuring element

se = strel('disk', 15);

img_erosion = imerode(a, se);

img_dilation = imdilate(a, se);

figure, subplot(2, 2, 1), imshow(a), title('Original Single Channel Grey Scale');
subplot(2,2, 2), imshow(img_erosion), title('Image Erosion');
subplot(2, 2, 3), imshow(img_dilation), title('Image Dilation');

% Dilation - The value of the output pixel is the maximum value of all the pixels in the 
% input pixel's neighborhood. In a binary image, if any of the pixels is set to the value 1,
% the output pixel is set to 1.

% Erosion - The value of the output pixel is the minimum value of all the
% pixels in the input pixel's neighborhood.
% In a binary image, if any of the pixels is set to 0, the output pixel is set to 0.