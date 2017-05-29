% files_oka{1} = dir('../pictures/p04/day01/_256x256/*.png');
% files_oka{2} = dir('../pictures/p04/day02/_256x256/*.png');
% files_oka{3} = dir('../pictures/p04/day03/_256x256/*.png');
% files_oka{4} = dir('../pictures/p04/day04/_256x256/*.png');
% files_oka{5} = dir('../pictures/p04/day05/_256x256/*.png');
% files_oka{6} = dir('../pictures/p04/day06/_256x256/*.png');
% files_oka{7} = dir('../pictures/p04/day07/_256x256/*.png');
% files_oka{8} = dir('../pictuares/p04/day08/_256x256/*.png');
% files_oka{9} = dir('../pictures/p04/day09/_256x256/*.png');
% files_oka{10} = dir('../pictures/p04/day10/_256x256/*.png');

name_oka{1} = '../pictures/p04/day01/_256x256/';
name_oka{2} = '../pictures/p04/day02/_256x256/';
name_oka{3} = '../pictures/p04/day03/_256x256/';
name_oka{4} = '../pictures/p04/day04/_256x256/';
name_oka{5} = '../pictures/p04/day05/_256x256/';
name_oka{6} = '../pictures/p04/day06/_256x256/';
name_oka{7} = '../pictures/p04/day07/_256x256/';
name_oka{8} = '../pictuares/p04/day08/_256x256/';
name_oka{9} = '../pictures/p04/day09/_256x256/';
name_oka{10} = '../pictures/p04/day10/_256x256/';

tic
patterns_oka = [];
for m = 1:10
    files_oka = dir([name_oka{m} '*.png']);
    for f = files_oka'
        pic_gs = imread([name_oka{m} f.name]);
        patterns_oka = [patterns_oka reshape(pic_gs, frame(1)*frame(2), 1)];
    end
    toc
    m
end
toc

size_patterns = size(patterns_oka);
outputs_oka = ones(1, size_patterns(2));

save('../output/patterns_oka.mat', 'patterns_oka', 'outputs_oka');