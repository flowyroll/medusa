clear all
clc
opts = detectImportOptions('merge1.csv');
opts.Delimiter = {','};
opts.VariableNames = {};
% opts.VariableUnitsLine = 10;
m1 = readtable('merge1.csv', opts, 'ReadVariableNames',false);
m2 = readtable('merge2.csv', opts, 'ReadVariableNames',false);
m3 = readtable('merge3.csv', opts, 'ReadVariableNames',false);
targetm = m1;

labels = string(table2array(targetm(:, 1)));
for i=1:numel(labels)
    xxx = strsplit(labels(i), '_');
    labels(i) = xxx(1);
end

data = str2double(string(table2array(targetm(:, 2:end))));
for i = 1:numel(labels)
    x = histogram(data(i, :), 100);
    text(x.BinLimits(1), max(x.Values), labels(i));
    hold on 
end

% xlim([0, 7000]);
% l = legend(labels);
% l.NumColumns=1;




xlabel('Score of Recoverred Key Parts (AVX256 - P4)')
ylabel('histogram')

set(gca,'FontSize',10)
box off
%%
for i = 1:numel(labels)
    zz = data(i, :);
    zz = zz((isnan(zz) ~= 1));
    zz = zz(zz < mean(zz) + 100);
    zz = zz(zz > mean(zz) - 100);
    h = histogram(zz);
    fprintf("%s:%d-%d\n", labels(i), h.BinLimits(1), h.BinLimits(2));
end


