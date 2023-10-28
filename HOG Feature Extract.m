img = imread('cameraman.tif');
[featureVector,hogVisualization] = extractHOGFeatures(img);
figure; imshow(img);
hold on;
 plot(hogVisualization);