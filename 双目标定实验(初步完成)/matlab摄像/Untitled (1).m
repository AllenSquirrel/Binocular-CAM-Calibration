clear all;clc;
nframe = 2000;            %视频的帧数2000  
nrate = 15;              %每秒的帧数 

writerObj_l = VideoWriter(['left' '.avi']);  
writerObj_l.FrameRate = nrate;    
open(writerObj_l); 

writerObj_r = VideoWriter(['right' '.avi']);  
writerObj_r.FrameRate = nrate;    
open(writerObj_r);

% Open the ZED
zed = webcam('USB 视频设备');
preview(zed);
% Set video resolution=720P
zed.Resolution = zed.AvailableResolutions{1};
% Get image size
[height, width, channels] = size(snapshot(zed));

for ii = 1: nframe
      % Capture the current image
          img = snapshot(zed);

          % Split the side by side image image into two images
          image_left = img(:, 1 : width/2, :);
          image_right = img(:, width/2 +1: width, :);
          % save images
          %imwrite(image_left, ['E:\zed\leftImage\',num2str(i),'.jpg']);
          f_l.cdata = image_left;  
          f_l.colormap = colormap([]) ;  
          writeVideo(writerObj_l,f_l); 

           f_r.cdata = image_right;  
          f_r.colormap = colormap([]) ;  
          writeVideo(writerObj_r,f_r); 
          
          
          %imwrite(image_right, ['E:\zed\rightImage\',num2str(i),'.jpg']);
          % Display the left and right images
          subplot(1,2,1);
          imshow(image_left);
          title('Image Left');
          subplot(1,2,2);
          imshow(image_right);
          title('Image Right');
          drawnow;

end