>> a=imread('coins.png');
>> b=graythresh(a);
>> c=imbinarize(a,b);
>> imshowpair(a,c,'montage');