%%
frame = [256 256];

%%
% hidden layers as argument
net = patternnet([20 20]);
net.input.size = frame(1)*frame(2);

net.trainParam.showCommandLine = true;
net.trainParam.showWindow = false;
net.trainParam.show = 100;

net.trainParam.epochs = 10000;
net.trainParam.min_grad = 1e-1000;
net.trainParam.mu_inc = 10;
net.trainParam.mu_dec = 0.1;

%% Notes
% input - vectors are columns