a = imread('retina_scan.jpg');
h_gaussian = fspecial('gaussian');
h_average = fspecial('average');

gaus = imfilter(a, h_gaussian);
avg = imfilter(a, h_average);

a_gray = rgb2gray(a);
a_median = medfilt2(a_gray);

figure, subplot(2, 2, 1), imshow(a), title('Original');
subplot(2, 2, 2), imshow(gaus), title('Gaussian Filter');
subplot(2, 2, 3), imshow(avg), title('Averaging Filter');
subplot(2, 2, 4), imshow(a_median), title('Median Filter');
