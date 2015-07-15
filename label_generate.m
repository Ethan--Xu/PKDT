%%Label Map
clear
clc
load ('.\workspace\20150714_running_calibration_features.mat')

label_standing      = 1;
label_lying         = 1;
label_walking       = 0;
label_running       = 0;
label_upstairs      = 0;
label_downstairs    = 0;
label_elevatorup    = 2;
label_elevatordown  = 2;


label_sitting       = 0;

%%
global feature_label_downstairs
global feature_label_elevatordown
global feature_label_elevatorup
global feature_label_upstairs
global feature_label_walking
global feature_label_standing
global feature_label_lying
global feature_label_running

global feature_downstairs
global feature_elevatordown
global feature_elevatorup
global feature_upstairs
global feature_walking
global feature_standing
global feature_lying
global feature_running

global test_feature_label_downstairs
global test_feature_label_elevatordown
global test_feature_label_elevatorup
global test_feature_label_upstairs
global test_feature_label_walking
global test_feature_label_standing
global test_feature_label_lying
global test_feature_label_running

global test_feature_downstairs
global test_feature_elevatordown
global test_feature_elevatorup
global test_feature_upstairs
global test_feature_walking
global test_feature_standing
global test_feature_lying
global test_feature_running

% load('C:\Users\Ethan\Desktop\20150713_total_features.mat')
%% model
for i=1:size(feature_standing, 1)
    feature_label_standing(i,1) = label_standing;
end
for i=1:size(feature_lying, 1)
    feature_label_lying(i,1) = label_lying;
end
for i=1:size(feature_walking, 1)
    feature_label_walking(i,1) = label_walking;
end
for i=1:size(feature_running, 1)
    feature_label_running(i,1) = label_running;
end
for i=1:size(feature_sitting, 1)
    feature_label_sitting(i,1) = label_sitting;
end
for i=1:size(feature_upstairs, 1)
    feature_label_upstairs(i,1) = label_upstairs;
end
for i=1:size(feature_downstairs, 1)
    feature_label_downstairs(i,1) = label_downstairs;
end
for i=1:size(feature_elevatorup, 1)
    feature_label_elevatorup(i,1) = label_elevatorup;
end
for i=1:size(feature_elevatordown, 1)
    feature_label_elevatordown(i,1) = label_elevatordown;
end

%% test
for i=1:size(test_feature_standing, 1)
    test_feature_label_standing(i,1) = label_standing;
end
for i=1:size(test_feature_lying, 1)
    test_feature_label_lying(i,1) = label_lying;
end
for i=1:size(test_feature_walking, 1)
    test_feature_label_walking(i,1) = label_walking;
end
for i=1:size(test_feature_running, 1)
    test_feature_label_running(i,1) = label_running;
end
for i=1:size(test_feature_sitting, 1)
    test_feature_label_sitting(i,1) = label_sitting;
end
for i=1:size(test_feature_upstairs, 1)
    test_feature_label_upstairs(i,1) = label_upstairs;
end
for i=1:size(test_feature_downstairs, 1)
    test_feature_label_downstairs(i,1) = label_downstairs;
end
for i=1:size(test_feature_elevatorup, 1)
    test_feature_label_elevatorup(i,1) = label_elevatorup;
end
for i=1:size(test_feature_elevatordown, 1)
    test_feature_label_elevatordown(i,1) = label_elevatordown;
end
