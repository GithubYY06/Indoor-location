clc;clear;close all;
%----------- load -----------%
load('c_Area_ap_a_rawdata');
load('c_Area_ap_b_rawdata');
load('c_Area_ap_c_rawdata');

%-------- gauss filter-------%
ap_a_guassfilter = Gaussianfilter(c_Area_ap_a_rawdata);
ap_b_guassfilter = Gaussianfilter(c_Area_ap_b_rawdata);
ap_c_guassfilter = Gaussianfilter(c_Area_ap_c_rawdata);
ap_a_radiomap_gauss = cellfun(@mean, ap_a_guassfilter, 'UniformOutput', false);
ap_b_radiomap_gauss = cellfun(@mean, ap_b_guassfilter, 'UniformOutput', false);
ap_c_radiomap_gauss = cellfun(@mean, ap_c_guassfilter, 'UniformOutput', false);
c_radiomapdata_gauss = cellfun(@(x,y,z) [x y z], ap_a_radiomap_gauss, ap_b_radiomap_gauss, ap_c_radiomap_gauss, 'UniformOutput', false);
save('c_radiomapdata_gauss.mat', 'c_radiomapdata_gauss');

%-------- kalman filter-------%
ap_a_kalman = Kalmanfilter(c_Area_ap_a_rawdata);
ap_b_kalman = Kalmanfilter(c_Area_ap_b_rawdata);
ap_c_kalman = Kalmanfilter(c_Area_ap_c_rawdata);
ap_a_radiomap_kalman  = cellfun(@mean, ap_a_kalman, 'UniformOutput', false);
ap_b_radiomap_kalman  = cellfun(@mean, ap_b_kalman, 'UniformOutput', false);
ap_c_radiomap_kalman  = cellfun(@mean, ap_c_kalman, 'UniformOutput', false);
c_radiomapdata_kalman = cellfun(@(x,y,z) [x y z], ap_a_radiomap_kalman, ap_b_radiomap_kalman, ap_c_radiomap_kalman, 'UniformOutput', false);
save('c_radiomapdata_kalman.mat', 'c_radiomapdata_kalman');