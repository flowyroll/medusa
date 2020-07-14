clear all
clc
opts = detectImportOptions('merge1.csv');
opts.Delimiter = {','};
opts.VariableNames = {};
% opts.VariableUnitsLine = 10;
m1 = readtable('merge1.csv', opts, 'ReadVariableNames',false);
m2 = readtable('merge2.csv', opts, 'ReadVariableNames',false);
m3 = readtable('merge3.csv', opts, 'ReadVariableNames',false);


labels = string(table2array(m3(:, 1)));
for i=1:numel(labels)
    xxx = strsplit(labels(i), '_');
    labels(i) = xxx(1);
end

data = str2double(string(table2array(m3(:, 2:end))));
% subplot(2,1,1);
for i = 1:numel(labels)
%     if (i == 1) || (i == 4) || (i == 9)
%         histogram(data(i, :), 10, 'FaceColor', 'k');
%     else        
        histogram(data(i, :), 10);
%     end
    hold on 
end

xlim([0, 7000]);
l = legend(labels);
l.NumColumns=1;



labels = string(table2array(m2(:, 1)));
for i=1:numel(labels)
    xxx = strsplit(labels(i), '_');
    labels(i) = xxx(1);
end

xlabel('Score of Recoverred Key Parts (AVX256 - P4)')
ylabel('histogram')

set(gca,'FontSize',10)
box off

data = str2double(string(table2array(m2(:, 2:end))));

set(gcf, 'Position', [100 100 772*0.8 400*0.7]);
f = figure;
for i = 1:numel(labels)
%     if (i == 3) || (i == 5) || (i == 7)
%         histogram(data(i, :), 10, 'FaceColor', 'k');
%     else        
        histogram(data(i, :), 10);
%     end
    hold on 
end

xlim([0, 6500]);
l = legend(labels);
l.NumColumns=1;

labels = string(table2array(m1(:, 1)));
for i=1:numel(labels)
    xxx = strsplit(labels(i), '_');
    labels(i) = xxx(1);
end
xlabel('Score of Recoverred Key Parts (AVX256 - P3)')
ylabel('histogram')


set(gca,'FontSize',10)
f = figure;

data = str2double(string(table2array(m1(:, 2:end))));

for i = 1:numel(labels)
%     if (i == 3) || (i == 5) || (i == 7)
%         histogram(data(i, :), 10, 'FaceColor', 'k');
%     else        
        histogram(data(i, :), 10);
%     end
    hold on 
end

xlim([0, 6500]);
legend(labels);


% set(gcf, 'Position', [100 100 772*0.8 400*0.7]);

