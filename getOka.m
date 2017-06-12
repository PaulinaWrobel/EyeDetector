list_dir = dir('../pictures/latest/wzorce/p03');

k = 0;
tic
patterns_oka = [];
for d = list_dir'
    files_oka = dir(['../pictures/latest/wzorce/p03/' d.name '/_32x32/*.png']);
    for f = files_oka'
        pic_gs = imread(['../pictures/latest/wzorce/p03/' d.name '/_32x32/' f.name]);
        patterns_oka = [patterns_oka reshape(pic_gs, frame(1)*frame(2), 1)];
    end
    toc
    k = k + 1
end
toc

% name_oka{1} = '../pictures/oka/p00/day01/_32x32/';
% name_oka{2} = '../pictures/oka/p00/day02/_32x32/';
% name_oka{3} = '../pictures/oka/p00/day03/_32x32/';
% name_oka{4} = '../pictures/oka/p00/day04/_32x32/';
% name_oka{5} = '../pictures/oka/p00/day05/_32x32/';
% name_oka{6} = '../pictures/oka/p00/day06/_32x32/';
% name_oka{7} = '../pictures/oka/p00/day07/_32x32/';
% name_oka{8} = '../pictures/oka/p00/day08/_32x32/';
% name_oka{9} = '../pictures/oka/p00/day09/_32x32/';
% name_oka{10} = '../pictures/oka/p00/day10/_32x32/';
% 
% tic
% patterns_oka = [];
% for m = 1:10
%     files_oka = dir([name_oka{m} '*.png']);
%     for f = files_oka'
%         pic_gs = imread([name_oka{m} f.name]);
%         patterns_oka = [patterns_oka reshape(pic_gs, frame(1)*frame(2), 1)];
%     end
%     toc
%     m
% end
% toc
% 
size_patterns = size(patterns_oka);
outputs_oka = ones(1, size_patterns(2));

save('../output/patterns_oka.mat', 'patterns_oka', 'outputs_oka');