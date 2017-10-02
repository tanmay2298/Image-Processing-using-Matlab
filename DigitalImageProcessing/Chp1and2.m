imfinfo('Guns.png') %Image Information
imformats('Guns.png') %Determines which formats are supported
RGB = imread('Guns.png'); %Reads an image


a = [1; 2; 3; 4; 5; 6; 7; 8; 9; 10];
imwrite(a, 'CustomVectorImage.png')

imwrite(RGB, 'Guns.jpg') %Changing the file format of the image
imshow('Guns.jpg') %RGB is in the 3rd Line(see)
