clear all; clc;
a = imread('text.png');
%imshow(a);
b = ocr(a);
c = insertObjectAnnotation(a, 'rectangle', ...,
     b.WordBoundingBoxes, ...,
    b.WordConfidences);
imshow(c);
