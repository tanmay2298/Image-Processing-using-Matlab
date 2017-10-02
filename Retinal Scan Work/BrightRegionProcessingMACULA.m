I = imread('retina_scan.jpg');
% Greyscaling it and then thresholding it
bw = im2bw(I, graythresh(I));
% Clean up the image a little
bw1 = bwareaopen(bw, 1);
L = bwlabel(bw1);
s = regionprops(L, 'pixelIdxList');

% Initialize vector containing max values.
max_value = zeros(numel(s), 1);

% Loop over each labeled object, grabbing the gray scale pixel values using
% PixelIdxList and computing their maximum.
for k = 1:numel(s)
    max_value(k) = max(I(s(k).PixelIdxList));
end

% Show all the maximum values as a bar chart.
bar(max_value)

bright_objects = find(max_value > 200);

imshow(ismember(L, bright_objects))