>> a=imread('blue flower.jpg');
>> b=double(a);
>> gamma=1.5;
>> c=255*(b/255).^1/gamma;
>> d=uint8(c);
>> subplot(1,2,1),imshow(a);
>> subplot(1,2,2),imshow(d);