files = dir('../pictures/learn/*.png');

% patterns = zeros(net.input.size, length(files));
patterns = zeros(frame(1)*frame(2), length(files));

outputs = ones(1, length(files));

k = 1;
for f = files'
%     pic_rgb = imread(['../pictures/learn/' f.name]);
%     pic_gs = rgb2gray(pic_rgb);
    pic_gs = imread(['../pictures/learn/' f.name]);
    
    patterns(:,k) = reshape(pic_gs, frame(1)*frame(2), 1);
    k = k + 1;
end

net = train(net, patterns, outputs);

% net2 = newff(patterns(1:10,1:10), outputs(:,1:10), 200);
% net2.trainFcn = 'trainscg';
% net2 = train(net2, patterns(1:10,1:10), outputs(:,1:10));