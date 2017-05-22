figure
imshow(pic_gs)
hold on

results_size = size(results);

for m = 1:results_size(1)
    rectangle('position',[results(m,2) results(m,1) frame(2) frame(1)],'edgecolor','g'); 
end