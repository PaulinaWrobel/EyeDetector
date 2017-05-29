list_dir = dir('../pictures/nieoka/Images/**');

k = 0;
tic
patterns_nieoka = [];
for d = list_dir'
    files_nieoka = dir(['../pictures/nieoka/Images/' d.name '/_256x256/*.png']);
    for f = files_nieoka'
        pic_gs = imread(['../pictures/nieoka/Images/' d.name '/_256x256/' f.name]);
        patterns_nieoka = [patterns_nieoka reshape(pic_gs, frame(1)*frame(2), 1)];
    end
    toc
    k = k + 1
end
toc

size_patterns = size(patterns_nieoka);
outputs_nieoka = zeros(1, size_patterns(2));

save('../output/patterns_nieoka.mat', 'patterns_nieoka', 'outputs_nieoka');