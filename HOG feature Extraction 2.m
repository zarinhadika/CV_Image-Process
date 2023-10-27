a=imread('water lily.jpg');
[featureVector,hogVisualization]=extractHOGFeatures(a);
imshow(a)
hold on;
plot(hogVisualization);