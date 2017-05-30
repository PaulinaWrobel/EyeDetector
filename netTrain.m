% net.trainParam.showCommandLine = true;
% net.trainParam.showWindow = false;
% net.trainParam.show = 100;

% net.trainParam.epochs = 10000;
% net.trainParam.min_grad = 1e-10000;
% net.trainParam.mu_inc = 10;
% net.trainParam.mu_dec = 0.1;

% net = configure(net, patterns, outputs);
% parpool
% net = train(net, patterns, outputs, 'useParallel', 'yes');
net = train(net, patterns, outputs);

dt = datestr(now,'yyyymmdd_HHMMSS');
filename = sprintf('../output/net_%s.mat',dt);
save(filename,'net');