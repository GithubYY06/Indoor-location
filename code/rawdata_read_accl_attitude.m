clc;clear;close all;
load('rawdata_pdr.mat');
n = 1; rawdata_attitude = cell(1,1); rawdata_accl = cell(1,1);
for i = 1:(size(rawdata_pdr,1) / 3)
    for j = 1:3
        rawdata_attitude{i}(j) = rawdata_pdr(n,1);
        rawdata_accl{i}(j) = rawdata_pdr(n,2);
        n = n + 1;
    end
end
save('rawdata_attitude.mat', 'rawdata_attitude');
save('rawdata_accl.mat', 'rawdata_accl');