%Feature extraction using HOG,LBP and SILTP
clc;
clear all;
H=192;
W=256;

%Feature='SILTP'; % 'HOG' or 'LBP' or 'SILTP'

%% adding path for all the used folder
 addpath(genpath('/Cross_Data'));

%%  Loading Images, and Randomly select 5 images from Training and Still groups

base_dir='/Cross_Data/BIWI_Dataset/Training/';
% seed=0;
rng('shuffle');
 j=1;
for i=1:50
    person_number = i;
    number_string = num2str(person_number);
    data_dir = [base_dir number_string];
    cd(data_dir)
    rgb_files1=dir('*b.jpg');
    nImages=length(rgb_files1);
    randImg=randperm(nImages);
    randImg=randImg(1:5);
   
    for f=randImg
        img=imread(rgb_files1(f).name);
        image = imresize(img,[H W]);
        Img_s(:,:,:,j)=image;
        j=j+1;
    end
end

base_dir='/Cross_Data/BIWI_Dataset/Still/';

for i=1:28
    person_number = i;
    number_string = num2str(person_number);
    data_dir = [base_dir number_string];
    cd(data_dir)
    rgb_files2=dir('*b.jpg');
    nImages=length(rgb_files2);
    randImg=randperm(nImages);
    randImg=randImg(1:5);
   
    for f=randImg
        img=imread(rgb_files2(f).name);
        image = imresize(img,[H W]);
        Img_s(:,:,:,j)=image;
        j=j+1;
    end
end

%% Feature extraction
nImages=j-1;
%switch Feature
    %case 'HOG'
        for i=1:nImages   % default Cellsize[8 8]
            hogFeature(i,:)=extractHOGFeatures(rgb2gray(Img_s(:,:,:,i)));
        end
        hog_rgbFeature=double(hogFeature);
        %Fature saving
         fname = '/Cross_Data/feature';
         cd(fname);
        save  hog_rgbFeature  hog_rgbFeature;
        clear hogFeature hog_rgbFeature
        
    %case 'LBP'
       % for i=1:nImages
           % Im=rgb2gray(Img_s(:,:,:,i)); % Cellsize [8 8]
           % lbpFeature(i,:)=extractLBPFeatures(Im,'Cellsize',[8 8]);
        %end
       % lbp_rgbFeature=double(lbpFeature);
        %Fature saving
        % fname = '/Cross_Data/feature';
        % cd(fname);
        %save  lbp_rgbFeature  lbp_rgbFeature;
       % clear lbpFeature lbp_rgbFeature
        
    %case 'SILTP'
       % tau = 0.3;
       % R = 3;% value of R: 3 or 5
       % numPoints = 4;

        %[imgHeight, imgWidth, ~, numImgs] = size(Img_s);
      %  images = zeros(imgHeight,imgWidth, numImgs);

        % Convert gray images
       % for i = 1 : numImgs
          %  I = Img_s(:,:,:,i);
           % I = rgb2gray(I);
           % images(:,:,i) = double(I) / 255;
       % end

        % patterns = SILTP(images, tau, R, numPoints);
        % patterns = reshape(patterns, [], numImgs);
        % siltp_rgbFeature=patterns';

        %Fature saving
        % fname = '/Cross_Data/feature';
        % cd(fname);
      %  save  siltp_rgbFeature  siltp_rgbFeature;
       % clear patterns siltp_rgbFeature
    
%end