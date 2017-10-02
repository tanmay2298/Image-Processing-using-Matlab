clc;
clear all;
close all;
I=imread('retina_scan.jpg');
subplot 331
imshow(I);
title('Original Image');
[r c p]= size(I);%r-rows,c-columns,p-planes
A=I(1:r/2,1:c/2,:);
B=I(1:r/2,c/2+1:c,:);
C=I(r/2+1:r,1:c/2,:);
D=I(r/2+1:r,c/2+1:c,:);
subplot 332
imshow(A);
title('Image part 1');
subplot 333
imshow(B);
title('Image part 2');
subplot 335
imshow(C);
title('Image part 3');
subplot 336
imshow(D);
title('Image part 4');
fullImage = [A, C; B, D];
sublplot 334
imshow(fullImage)
title('On reassembling');