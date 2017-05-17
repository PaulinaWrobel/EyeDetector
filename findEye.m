file_name = 'pictures/grayscale.jpg';
offset = 10;

pic_rgb = imread(file_name);
pic_gs = rgb2gray(pic_rgb);

pic_size = size(pic_gs);

pic_frame = zeros(frame);
x = 0;
y = 0;
results = [];

while x < pic_size(1) - frame(1)
    while y < pic_size(2) - frame(2)
        pic_frame = pic_gs((x:x+frame(1)),(y:y+frame(2)));
        output = sim(net, reshape(pic_frame, net.input.size, 1));
        if output == 1
            results = [results; x y];
        end
        
        y = y + offset;
    end
    y = 0;
    x = x + offset;
end