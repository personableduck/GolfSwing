selectFiles;

workingDir = 'D:\golfimage';
%workingDir = 'D:\golfimage\failshot';
mkdir(workingDir)
mkdir(workingDir,'images')

Video = VideoReader([read_dir,file_1]);

ii = 1;
cc=1;
j=1;

while hasFrame(Video)
   img = readFrame(Video);
   filename = [sprintf('%03d',j) '.jpg'];
   fullname = fullfile(workingDir,'images',filename);
   if ii == cc
   imwrite(img,fullname) % Write out to a JPEG file (img1.jpg, img2.jpg, etc.)
   cc = cc + 35; %10,40
   j=j+1;
   end 
   ii = ii+1;
end

