clear all; close all; clc;

% Read an image
A = imread('scenery.jpg');

% Plot and display the histogram if A is a 3 channel image with
% default number of bins
figure, subplot(2, 2, 1), imhist(A(:, :, 1)), title('Histogram of 1st channel of read image');
subplot(2, 2, 2),imhist(A(:, :, 2)), title('Histogram of 2nd channel of read image');
subplot(2, 2, 3),imhist(A(:, :, 3)), title('Histogram of 3rd channel of read image');