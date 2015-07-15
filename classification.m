function [ r ] = classification( BestFeature )
%UNTITLED3 此处显示有关此函数的摘要
%   此处显示详细说明
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

global BestFeature_ALL



%% tree B 第一级分类
model_feature_label_total = [feature_label_downstairs(1:199,1)  ;feature_label_elevatordown(1:199,1)  ;feature_label_elevatorup(1:199,1)  ;feature_label_upstairs(1:199,1)  ;feature_label_walking(1:199,1)  ;feature_label_standing(1:199,1)  ;feature_label_lying(1:199,1)  ;feature_label_running(1:111,1)  ;];%feature_label_sitting(1:199,1)  ;];
model_feature_total = [feature_downstairs(1:199,BestFeature)  ;feature_elevatordown(1:199,BestFeature)  ;feature_elevatorup(1:199,BestFeature)  ;feature_upstairs(1:199,BestFeature)  ;feature_walking(1:199,BestFeature)  ;feature_standing(1:199,BestFeature)  ;feature_lying(1:199,BestFeature)  ;feature_running(1:111,BestFeature)  ;];%feature_sitting(1:199,BestFeature)  ;];
test_feature_label_total = [test_feature_label_downstairs(1:185,1)  ;test_feature_label_elevatordown(1:185,1)  ;test_feature_label_elevatorup(1:185,1)  ;test_feature_label_upstairs(1:185,1)  ;test_feature_label_walking(1:185,1)  ;test_feature_label_standing(1:185,1)  ;test_feature_label_lying(1:185,1)  ;test_feature_label_running(1:97,1)  ;];%test_feature_label_sitting(1:185,1)  ;];
test_feature_total = [test_feature_downstairs(1:185,BestFeature)  ;test_feature_elevatordown(1:185,BestFeature)  ;test_feature_elevatorup(1:185,BestFeature)  ;test_feature_upstairs(1:185,BestFeature)  ;test_feature_walking(1:185,BestFeature)  ;test_feature_standing(1:185,BestFeature)  ;test_feature_lying(1:185,BestFeature)  ;test_feature_running(1:97,BestFeature)  ;];%test_feature_sitting(1:185,BestFeature)  ;];
model=svmtrain(model_feature_label_total,     model_feature_total);
[label, r, decision_values] = svmpredict(test_feature_label_total,test_feature_total,model);

end

