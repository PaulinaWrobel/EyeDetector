files = dir('pictures/*.bmp');

patterns = zeros(net.input.size, length(files));
outputs = ones(1, length(files));

k = 1;
for f = files'
    pic_rgb = imread(['pictures/' f.name]);
    pic_gs = rgb2gray(pic_rgb);
    
    patterns(:,k) = reshape(pic_gs, net.input.size, 1);
    k = k + 1;
end

net = train(net, patterns, outputs);