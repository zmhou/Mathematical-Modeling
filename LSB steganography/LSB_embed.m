function [] = LSB_embed(name, message, lsb)
% LSBembed(name, message, lsb)
% name: the picture's path and name
% message: the data you want to hide in the picture
% lsb: lsb-rightmost LSBs
% LSB in steganography (embed)
% Author: Moming

clear, clc, close all;

image = imread(name);
msg_origin = unicode2native(strcat(message, char(0)), 'UTF-8');  % UTF-8 encode, 'NUT' is the end tag
msg_bin = dec2bin(msg_origin);  % convert to binary
msg = strjoin(cellstr(msg_bin)','');

len = length(msg) / lsb;
if len ~= fix(len)
    strcat(msg, blanks(mod(length(msg), lsb)));
end
tmp = blanks(len);
for i = 1 : len
    tmp(i) = char(bin2dec(msg((i - 1) * lsb + 1 : i * lsb)) + '0');  % +'0' can be truncated
end

% use Red
red = image(:, :, 1);
for i = 1 : len
    red(i) = red(i) - mod(red(i), 2^lsb) + double(tmp(i) - '0');  % only to be consistent with front
end

image_result = cat(3, red, image(:, :, 2), image(:, :, 3));
imshow(image_result);
imwrite(image_result, 'result.jpg');