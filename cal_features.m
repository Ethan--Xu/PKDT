function [ features ] = cal_features( pra_dataset )
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
%%ȫ�ֱ���
global dataset;
global interval;

%% ��ֵ
feature_mean = calc_mean(dataset);%1
features = [ feature_mean];

%% ����
feature_var = calc_var(dataset);%66
features = [features  feature_var];%[features feature_var];

%% ����ֵ��
feature_mean_crossing_rate = calc_mean_crossing_rate(dataset);%131
features = [features feature_mean_crossing_rate];

%% �ķ�λ��
feature_interquartile_range = calc_interquartile_range(dataset);%196
features = [features  feature_interquartile_range];

%% ���ֵ
feature_peak2peak_value = calc_peak2peak_value(dataset);%261
features = [features  feature_peak2peak_value];

%% ��λ��
feature_median = calc_median(dataset);%326
features = [features  feature_median];

%% %���ֱ��б��
feature_fit_slope = calc_fit_slope(dataset);%391
features = [features feature_fit_slope];

%% ������
feature_RMS = calc_RMS(dataset);%456
features = [features  feature_RMS];

% 
% %% ���ٸ���Ҷ�任
% % feature_FFT = calc_FFT(dataset);
% % features = [ feature_FFT];%[features feature_FFT];
% % 
% %�ԱȽ���ѹ�����1
feature_pressure_diff1 = calc_pressure_diff1(dataset);%521
features = [features  feature_pressure_diff1];%[features feature_pressure_diff1];
% % 
% % %�ԱȽ���ѹ�����2
% % feature_pressure_diff2 = calc_pressure_diff2(dataset);
% % features = [features feature_pressure_diff2];%[features feature_pressure_diff2];
%  
% % %�ԱȽ���ѹ�����3
% % feature_pressure_diff3 = calc_pressure_diff3(dataset);
% % features = [features feature_pressure_diff3];%[features feature_pressure_diff3];
% 
% % %���Ƚ���ѹ�����01
% % feature_pressure_diff_between_01 = calc_pressure_diff_between_01( dataset );
% % features = [ feature_pressure_diff_between_01];%[features feature_pressure_diff_between_01];
% % 
% % %���Ƚ���ѹ�����02
% % feature_pressure_diff_between_02 = calc_pressure_diff_between_02( dataset );
% % features = [features feature_pressure_diff_between_02];%[features feature_pressure_diff_between_02];
% % 
% %���Ƚ���ѹ�����03
feature_pressure_diff_between_03 = calc_pressure_diff_between_03( dataset );%526
features = [features feature_pressure_diff_between_03];%[features feature_pressure_diff_between_03];
% 
% % %���Ƚ���ѹ�����12
% % feature_pressure_diff_between_12 = calc_pressure_diff_between_12( dataset );
% % features = [features feature_pressure_diff_between_12];%[features feature_pressure_diff_between_03];


end

