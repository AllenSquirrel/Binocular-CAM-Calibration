% 代码功能：每次按下enter键，采集一次棋盘格图片，并将左右相机的图像分离，各自存到事先建好的目录下
clear all;close all;clc;

% Open the ZED
zed = webcam('ZED');
preview(zed);
% Set video resolution=720P
zed.Resolution = zed.AvailableResolutions{1};
% Get image size
[height, width, channels] = size(snapshot(zed));
ok = 1;
i = 0;
% Start loop
while ok
  % get key value
  w = waitforbuttonpress;
  if w
      % Capture the current image
      img = snapshot(zed);

      % Split the side by side image image into two images
      image_left = img(:, 1 : width/2, :);
      image_right = img(:, width/2 +1: width, :);
      % save images
      imwrite(image_left, ['F:\文件\毕设-无人机图像测量系统\标定2次\zed\leftImage\',num2str(i),'.jpg']);
      imwrite(image_right, ['F:\文件\毕设-无人机图像测量系统\标定2次\zed\rightImage\',num2str(i),'.jpg']);
      % Display the left and right images
      subplot(1,2,1);
      imshow(image_left);
      title('Image Left');
      subplot(1,2,2);
      imshow(image_right);
      title('Image Right');
      drawnow;
      i = i+1;
  end
end

  % close the camera instance
  clear zed