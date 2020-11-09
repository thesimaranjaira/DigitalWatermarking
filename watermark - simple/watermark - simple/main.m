img = imread('original.jpg');
if length(size(img))>2
    img = rgb2gray(img);
end
figure, imshow(img); title('Original Image');
msg = imread('watermarking.jpg');
if length(size(msg))>2
    msg = rgb2gray(msg);
end
figure, imshow(msg); title('Watermarking Image');
[embimg,ps] = wtmark(img,msg);
figure, imshow(embimg); title('Watermarked Image');

wm = exwmark(embimg);
figure, imshow(wm); title('Extracted watermarking image');