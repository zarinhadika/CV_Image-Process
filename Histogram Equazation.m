>> a=imread('grayscale flower.jpg');
>> b=histeq(a);
>> c=imhist(a);
>> d=imhist(b);
>> subplot(2,2,1),imshow(a);
>> subplot(2,2,2),stem(c,'MARKER','none');
>> subplot(2,2,3),imshow(b);
>> subplot(2,2,4),stem(d,'MARKER','none');