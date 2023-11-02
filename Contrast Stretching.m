>> a=imread('pout.tif');
>> b=imadjust(a,stretchlim(a),[]);
>> subplot(2,1,1),imshow(a);
>> subplot(2,1,2),imshow(b);
>> c=imhist(a);
>> d=imhist(b);
>> subplot(2,2,1),imshow(a);
>> subplot(2,2,2),stem(c,'MARKER','none');
>> subplot(2,2,3),imshow(b);
>> subplot(2,2,4),stem(d,'MARKER','none');