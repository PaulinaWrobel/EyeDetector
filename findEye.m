file_name = '../pictures/learn/eye0_0001_big.png';
offset = 50;

pic_rgb = imread(file_name);
pic_gs = rgb2gray(pic_rgb);
% pic_gs = imread(file_name);

pic_size = size(pic_gs);

pic_frame = zeros(frame);
x = 0;
y = 0;
results = [];

while x <= pic_size(1) - frame(1)
    while y <= pic_size(2) - frame(2)
        pic_frame = pic_gs((x+1:x+frame(1)),(y+1:y+frame(2)));
        output = sim(net, reshape(pic_frame, net.input.size, 1));
%         if output == 1
%             results = [results; x+1 y+1];
%         end
        results = [results; x+1 y+1 output];
        
        y = y + offset;
    end
    y = 0;
    x = x + offset;
end