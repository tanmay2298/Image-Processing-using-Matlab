clear all; clc;
a = imread('me.jpg');
%a = imresize(a, 0.3);
detector = vision.CascadeObjectDetector('EyePairSmall');
%detector.MergeThreshold = 10;
bbox = step(detector, a);
out = insertObjectAnnotation(a, 'rectangle', bbox, 'detection');
imshow(out);