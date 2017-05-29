patterns = [];
outputs = [];

for m = 1:10
   patterns = [patterns patterns_oka(:,m) patterns_nieoka(:,m)];
   outputs = [outputs outputs_oka(:,m) outputs_nieoka(:,m)];
end
patterns = double(patterns);

% net = configure(net, patterns, outputs);
% parpool
% net = train(net, patterns, outputs, 'useParallel', 'yes');
net = train(net, patterns, outputs);

% net2 = newff(patterns(1:10,1:10), outputs(:,1:10), 200);
% net2.trainFcn = 'trainscg';
% net2 = train(net2, patterns(1:10,1:10), outputs(:,1:10));

dt = datestr(now,'yyyymmdd_HHMMSS');
filename = sprintf('../output/net_%s.mat',dt);
save(filename,'net');