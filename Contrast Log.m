a=imread('flower1.jpg');
b=double(a);
 c=1;
 co=c*log(1+b);                          
s=uint8(255*(co/max(co(:)))); 
subplot(1,2,1),imshow(a);
subplot(1,2,2),imshow(s);