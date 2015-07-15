function [ features ] = cal_features( pra_dataset )
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
%%全局变量
global dataset;
global interval;

%% 均值
feature_mean = calc_mean(dataset);%1
features = [ feature_mean];

%% 方差
feature_var = calc_var(dataset);%66
features = [features  feature_var];%[features feature_var];

%% 过均值率
feature_mean_crossing_rate = calc_mean_crossing_rate(dataset);%131
features = [features feature_mean_crossing_rate];

%% 四分位差
feature_interquartile_range = calc_interquartile_range(dataset);%196
features = [features  feature_interquartile_range];

%% 峰峰值
feature_peak2peak_value = calc_peak2peak_value(dataset);%261
features = [features  feature_peak2peak_value];

%% 中位数
feature_median = calc_median(dataset);%326
features = [features  feature_median];

%% %拟合直数斜率
feature_fit_slope = calc_fit_slope(dataset);%391
features = [features feature_fit_slope];

%% 均方根
feature_RMS = calc_RMS(dataset);%456
features = [features  feature_RMS];

% 
% %% 快速傅立叶变换
% % feature_FFT = calc_FFT(dataset);
% % features = [ feature_FFT];%[features feature_FFT];
% % 
% %自比较气压区间差1
feature_pressure_diff1 = calc_pressure_diff1(dataset);%521
features = [features  feature_pressure_diff1];%[features feature_pressure_diff1];
% % 
% % %自比较气压区间差2
% % feature_pressure_diff2 = calc_pressure_diff2(dataset);
% % features = [features feature_pressure_diff2];%[features feature_pressure_diff2];
%  
% % %自比较气压区间差3
% % feature_pressure_diff3 = calc_pressure_diff3(dataset);
% % features = [features feature_pressure_diff3];%[features feature_pressure_diff3];
% 
% % %互比较气压区间差01
% % feature_pressure_diff_between_01 = calc_pressure_diff_between_01( dataset );
% % features = [ feature_pressure_diff_between_01];%[features feature_pressure_diff_between_01];
% % 
% % %互比较气压区间差02
% % feature_pressure_diff_between_02 = calc_pressure_diff_between_02( dataset );
% % features = [features feature_pressure_diff_between_02];%[features feature_pressure_diff_between_02];
% % 
% %互比较气压区间差03
feature_pressure_diff_between_03 = calc_pressure_diff_between_03( dataset );%526
features = [features feature_pressure_diff_between_03];%[features feature_pressure_diff_between_03];
% 
% % %互比较气压区间差12
% % feature_pressure_diff_between_12 = calc_pressure_diff_between_12( dataset );
% % features = [features feature_pressure_diff_between_12];%[features feature_pressure_diff_between_03];


end

