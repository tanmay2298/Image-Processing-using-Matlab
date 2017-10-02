clc;
clear all;


tic
% load template
load templateData
templateSize = 80;
tr = 0.5; tg = 2; tb = 1;

a = imread('2.tif');
h = fspecial('average', 6);
b = imfilter(a, h);
% imshow(b)

m = 0;
maxValue = 0;
c = zeros(size(b,1)-templateSize+1, size(b,2)-templateSize+1);
for i = 1:size(b,1)-templateSize+1
    for j = 1:size(b,2)-templateSize+1
        bTemp = b(i:i+templateSize-1, j:j+templateSize-1, :);
        red = bTemp(:,:,1); green = bTemp(:,:,2); blue = bTemp(:,:,3); % Check rgb order
        [c1, ~] = imhist(red);
        [c2, ~] = imhist(green);
        [c3, ~] = imhist(blue);
        
        sum1 = 0;
        for k = 1:200
            sum1 = sum1 + (c1(k)-counts1(k))^2;
        end
        cr = 1/(1+sum1);
        
        sum2 = 0;
        for k = 1:200
            sum2 = sum2 + (c2(k)-counts2(k))^2;
        end
        cg = 1/(1+sum2);
        
        sum3 = 0;
        for k = 1:200
            sum3 = sum3 + (c3(k)-counts3(k))^2;
        end
        cb = 1/(1+sum3);
        
        c(i, j) = cr*tr + cg*tg + cb*tb;
        if(c(i,j) > maxValue)
            maxValue = c(i,j);
            iMax = i;
            jMax = j;
        end
    end
end
toc

beep;
pause(1);
beep;

imshow(a)
hold on
plot(jMax+templateSize/2, iMax+templateSize/2, 'kx','MarkerSize',12,'LineWidth',2)


