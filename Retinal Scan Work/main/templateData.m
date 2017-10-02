clc;
clear all;
a = imread('1.tif');
h = fspecial('average', 6);
a = imfilter(a, h);
imtool(a);

% breakpoint

r = cropped(:,:,1); g = cropped(:,:,2); b = cropped(:,:,3);
    
[counts1, ~] = imhist(r);
[counts2, ~] = imhist(g);
[counts3, ~] = imhist(b);

save('templateData', 'counts1', 'counts2', 'counts3')