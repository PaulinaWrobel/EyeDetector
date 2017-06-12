% patterns = [patterns_oka  patterns_nieoka];
% outputs = [outputs_oka outputs_nieoka];

patterns = [];
outputs = [];

for m = 1:length(outputs_nieoka)
    for k = 1:4
        patterns = [patterns patterns_oka(:,4*(m-1)+k)];
        outputs = [outputs outputs_oka(:,4*(m-1)+k)];
    end
    patterns = [patterns patterns_nieoka(:,m)];
    outputs = [outputs outputs_nieoka(:,m)];
end

patterns = [patterns patterns_oka(:,length(outputs)+1:end)];
outputs = [outputs outputs_oka(:,length(outputs)+1:end)];

patterns = double(patterns);
save('../output/patterns_cat.mat', 'patterns', 'outputs');