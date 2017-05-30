patterns = [];
outputs = [];

for m = 1:13649
   patterns = [patterns patterns_oka(:,m) patterns_nieoka(:,m)];
   outputs = [outputs outputs_oka(:,m) outputs_nieoka(:,m)];
end
patterns = double(patterns);

save('../output/patterns_cat.mat', 'patterns', 'outputs');