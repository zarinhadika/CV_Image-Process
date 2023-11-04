>> a=imread('bee-and-yellow-flower-kent-lorentzen.jpg');
>> b=double(a);
>> c=1;
>> d=c*log(1+b);
>> e=uint8(255*(d/max(d(:))));
>> subplot(1,2,1),imshow(a);
>> subplot(1,2,2),imshow(e);