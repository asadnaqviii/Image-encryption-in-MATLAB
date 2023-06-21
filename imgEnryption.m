close all;
myImage = imread("img2.jpg");
myImage = imresize(myImage,[256 NaN]);  % resizing to 256px

subplot(1,3,1)
imshow(myImage)
title("Original")

% generating disting 0 to 255 distinct outputs
%myTable = randi([0, 255], 256,256);
       
% save original state 
oImage = myImage;

for k = 1: 3
  myImage(:,:,k) = randi([0, 255], 256, 256); 
end


subplot(1,3,2),imshow(myImage);
title("Encrypted")
imwrite(myImage,"Encrypted.jpg")    % saves in disc
     
% decryption, setting back saved states
myImage = oImage;

subplot(1,3,3), imshow(myImage);
title("Decrypted")



