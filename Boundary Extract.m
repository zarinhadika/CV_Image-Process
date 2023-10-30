>> a=imread('coins.png');
>> b=imbinarize(a);
>> boundary=bwtraceboundary(b,[27,60],'N');
>> imshow(a)
>> hold on
>> plot(boundary(:,2),boundary(:,1),'g','LineWidth',3);