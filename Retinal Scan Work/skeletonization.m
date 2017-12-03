BW = imread('retina_scan.jpg');
imshow(BW);
BW2 = bwmorph(BW,'remove');
figure
imshow(BW2)
BW3 = bwmorph(BW,'skel',Inf);
figure
imshow(BW3);