fig = figure;
imshow(pic_gs)
hold on

results_size = size(results);

for m = 1:results_size(1)
    if results(m,3) > 0.9
        rectangle('position',[results(m,2) results(m,1) frame(2) frame(1)],'edgecolor','g');
    end
end

for m = 1:results_size(1)
    if results(m,3) > 0.9999
        rectangle('position',[results(m,2) results(m,1) frame(2) frame(1)],'edgecolor','b');
    end
end

dt = datestr(now,'yyyymmdd_HHMMSS');
filename = sprintf('../output/%s_%s.png',test_file_name,dt);
saveas(fig,filename)