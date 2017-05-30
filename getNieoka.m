list_dir = dir('../pictures/nieoka/**');

k = 0;
tic
patterns_nieoka = [];
for d = list_dir'
    files_nieoka = dir(['../pictures/nieoka/' d.name '/_32x32/*.png']);
    for f = files_nieoka'
        pic_gs = imread(['../pictures/nieoka/' d.name '/_32x32/' f.name]);
        patterns_nieoka = [patterns_nieoka reshape(pic_gs, frame(1)*frame(2), 1)];
    end
    toc
    k = k + 1
end
toc

size_patterns = size(patterns_nieoka);
outputs_nieoka = zeros(1, size_patterns(2));

save('../output/patterns_nieoka.mat', 'patterns_nieoka', 'outputs_nieoka');