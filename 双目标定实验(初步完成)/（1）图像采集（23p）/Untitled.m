
clear all;
nframe = 120;            %视频的帧数  
nrate = 30;              %每秒的帧数 

%writerObj = VideoWriter("E:\zed\leftImage\" ,'.avi' );  
%writerObj.FrameRate = nrate;    
%open(writerObj); 

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
      while ok
      % Capture the current image
          img = snapshot(zed);

          % Split the side by side image image into two images
          image_left = img(:, 1 : width/2, :);
          image_right = img(:, width/2 +1: width, :);
          % save images
          imwrite(image_left, ['E:\zed\leftImage\',num2str(i),'.jpg']);
          
          imwrite(image_right, ['E:\zed\rightImage\',num2str(i),'.jpg']);
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
end