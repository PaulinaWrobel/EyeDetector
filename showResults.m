figure
imshow(pic_gs)
hold on

results = [0 0; 150 190];
results_size = size(results);

for m = 1:results_size(1)
    rectangle('position',[results(m,1) results(m,2) frame(1) frame(2)],'edgecolor','g'); 
end