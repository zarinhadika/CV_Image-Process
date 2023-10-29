>> a=imread('cameraman.tif');
>> b=edge(a,'canny');
>> c=bwareaopen(imfill(b,'holes'),20);
>> imshow(a)
>> imshow(b)
>> imshow(c)
>> bw=bwpropfilt(c,'Area',[100 100]);
>> imshow(bw)
>> bw=bwpropfilt(c,'Area',[10 10]);
>> imshow(bw)
>> bw=bwpropfilt(c,'Solidity',[0.5 1]);
>> imshow(bw)
>> bw=bwpropfilt(c,'Solidity',[0.5 0.5]);
>> imshow(bw)
>> bw=bwpropfilt(c,'Solidity',[10 10]);
>> imshow(bw)
>> bw=bwpropfilt(c,'Solidity',[0.1 1]);
>> imshow(bw)
>> bw=bwpropfilt(c,'Area',[5 5]);
>> imshow(bw)
