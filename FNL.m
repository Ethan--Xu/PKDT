% clear all;
% load('I:\git bar\Activity Recognition\20150423.mat');
%%
i=1;

model_feature_label_total = [feature_label_downstairs ;feature_label_upstairs  ;];
model_feature_total = [feature_downstairs;feature_upstairs;];
test_feature_label_total = [test_feature_label_downstairs ;test_feature_label_upstairs  ;];
test_feature_total = [test_feature_downstairs;test_feature_upstairs;];
model=svmtrain(model_feature_label_total(1:300,:),     model_feature_total(1:300,:));
[label, result(:,i),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model);
% i=i+1;
% 
% model_feature_label_total = [feature_label_downstairs ;feature_label_elevatordown  ;];
% model_feature_total = [feature_downstairs;feature_elevatordown;];
% test_feature_label_total = [test_feature_label_downstairs ;test_feature_label_elevatordown  ;];
% test_feature_total = [test_feature_downstairs;test_feature_elevatordown;];
% model=svmtrain(model_feature_label_total(1:300,:),     model_feature_total(1:300,:));
% [label, result(:,i),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model);
% i=i+1;
% 
% model_feature_label_total = [feature_label_downstairs ;feature_label_elevatorup  ;];
% model_feature_total = [feature_downstairs;feature_elevatorup;];
% test_feature_label_total = [test_feature_label_downstairs ;test_feature_label_elevatorup  ;];
% test_feature_total = [test_feature_downstairs;test_feature_elevatorup;];
% model=svmtrain(model_feature_label_total(1:300,:),     model_feature_total(1:300,:));
% [label, result(:,i),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model);
% i=i+1;
% 
% model_feature_label_total = [feature_label_downstairs ;feature_label_standing  ;];
% model_feature_total = [feature_downstairs;feature_standing;];
% test_feature_label_total = [test_feature_label_downstairs ;test_feature_label_standing  ;];
% test_feature_total = [test_feature_downstairs;test_feature_standing;];
% model=svmtrain(model_feature_label_total(1:300,:),     model_feature_total(1:300,:));
% [label, result(:,i),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model);
% i=i+1;
% 
% model_feature_label_total = [feature_label_downstairs ;feature_label_walking  ;];
% model_feature_total = [feature_downstairs;feature_walking;];
% test_feature_label_total = [test_feature_label_downstairs ;test_feature_label_walking  ;];
% test_feature_total = [test_feature_downstairs;test_feature_walking;];
% model=svmtrain(model_feature_label_total(1:300,:),     model_feature_total(1:300,:));
% [label, result(:,i),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model);
% i=i+1;
% 
% model_feature_label_total = [feature_label_downstairs ;feature_label_sitting  ;];
% model_feature_total = [feature_downstairs;feature_sitting;];
% test_feature_label_total = [test_feature_label_downstairs ;test_feature_label_sitting  ;];
% test_feature_total = [test_feature_downstairs;test_feature_sitting;];
% model=svmtrain(model_feature_label_total(1:300,:),     model_feature_total(1:300,:));
% [label, result(:,i),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model);
% i=i+1;
% 
% model_feature_label_total = [feature_label_downstairs ;feature_label_lying  ;];
% model_feature_total = [feature_downstairs;feature_lying;];
% test_feature_label_total = [test_feature_label_downstairs ;test_feature_label_lying  ;];
% test_feature_total = [test_feature_downstairs;test_feature_lying;];
% model=svmtrain(model_feature_label_total(1:300,:),     model_feature_total(1:300,:));
% [label, result(:,i),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model);
% i=i+1;

%%
% i=1;
% model_feature_label_total = [feature_label_upstairs ;feature_label_elevatordown  ;];
% model_feature_total = [feature_upstairs;feature_elevatordown;];
% test_feature_label_total = [test_feature_label_upstairs ;test_feature_label_elevatordown  ;];
% test_feature_total = [test_feature_upstairs;test_feature_elevatordown;];
% model=svmtrain(model_feature_label_total(1:300,:),     model_feature_total(1:300,:));
% [label, result(:,i),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model);
% i=i+1;
% 
% model_feature_label_total = [feature_label_upstairs ;feature_label_elevatorup  ;];
% model_feature_total = [feature_upstairs;feature_elevatorup;];
% test_feature_label_total = [test_feature_label_upstairs ;test_feature_label_elevatorup  ;];
% test_feature_total = [test_feature_upstairs;test_feature_elevatorup;];
% model=svmtrain(model_feature_label_total(1:300,:),     model_feature_total(1:300,:));
% [label, result(:,i),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model);
% i=i+1;
% 
% model_feature_label_total = [feature_label_upstairs ;feature_label_standing  ;];
% model_feature_total = [feature_upstairs;feature_standing;];
% test_feature_label_total = [test_feature_label_upstairs ;test_feature_label_standing  ;];
% test_feature_total = [test_feature_upstairs;test_feature_standing;];
% model=svmtrain(model_feature_label_total(1:300,:),     model_feature_total(1:300,:));
% [label, result(:,i),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model);
% i=i+1;
% 
% model_feature_label_total = [feature_label_upstairs ;feature_label_walking  ;];
% model_feature_total = [feature_upstairs;feature_walking;];
% test_feature_label_total = [test_feature_label_upstairs ;test_feature_label_walking  ;];
% test_feature_total = [test_feature_upstairs;test_feature_walking;];
% model=svmtrain(model_feature_label_total(1:300,:),     model_feature_total(1:300,:));
% [label, result(:,i),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model);
% i=i+1;
% 
% model_feature_label_total = [feature_label_upstairs ;feature_label_sitting  ;];
% model_feature_total = [feature_upstairs;feature_sitting;];
% test_feature_label_total = [test_feature_label_upstairs ;test_feature_label_sitting  ;];
% test_feature_total = [test_feature_upstairs;test_feature_sitting;];
% model=svmtrain(model_feature_label_total(1:300,:),     model_feature_total(1:300,:));
% [label, result(:,i),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model);
% i=i+1;
% 
% model_feature_label_total = [feature_label_upstairs ;feature_label_lying  ;];
% model_feature_total = [feature_upstairs;feature_lying;];
% test_feature_label_total = [test_feature_label_upstairs ;test_feature_label_lying  ;];
% test_feature_total = [test_feature_upstairs;test_feature_lying;];
% model=svmtrain(model_feature_label_total(1:300,:),     model_feature_total(1:300,:));
% [label, result(:,i),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model);
% i=i+1;

%%
% i=1;
% 
% model_feature_label_total = [feature_label_elevatordown ;feature_label_elevatorup  ;];
% model_feature_total = [feature_elevatordown;feature_elevatorup;];
% test_feature_label_total = [test_feature_label_elevatordown ;test_feature_label_elevatorup  ;];
% test_feature_total = [test_feature_elevatordown;test_feature_elevatorup;];
% model=svmtrain(model_feature_label_total(1:100,:),     model_feature_total(1:100,:));
% [label, result(:,i),decision_values] = svmpredict(test_feature_label_total(1:100,:),test_feature_total(1:100,:),model);
% i=i+1;
% 
% model_feature_label_total = [feature_label_elevatordown ;feature_label_standing  ;];
% model_feature_total = [feature_elevatordown;feature_standing;];
% test_feature_label_total = [test_feature_label_elevatordown ;test_feature_label_standing  ;];
% test_feature_total = [test_feature_elevatordown;test_feature_standing;];
% model=svmtrain(model_feature_label_total(1:100,:),     model_feature_total(1:100,:));
% [label, result(:,i),decision_values] = svmpredict(test_feature_label_total(1:100,:),test_feature_total(1:100,:),model);
% i=i+1;
% 
% model_feature_label_total = [feature_label_elevatordown ;feature_label_walking  ;];
% model_feature_total = [feature_elevatordown;feature_walking;];
% test_feature_label_total = [test_feature_label_elevatordown ;test_feature_label_walking  ;];
% test_feature_total = [test_feature_elevatordown;test_feature_walking;];
% model=svmtrain(model_feature_label_total(1:100,:),     model_feature_total(1:100,:));
% [label, result(:,i),decision_values] = svmpredict(test_feature_label_total(1:100,:),test_feature_total(1:100,:),model);
% i=i+1;
% 
% model_feature_label_total = [feature_label_elevatordown ;feature_label_sitting  ;];
% model_feature_total = [feature_elevatordown;feature_sitting;];
% test_feature_label_total = [test_feature_label_elevatordown ;test_feature_label_sitting  ;];
% test_feature_total = [test_feature_elevatordown;test_feature_sitting;];
% model=svmtrain(model_feature_label_total(1:100,:),     model_feature_total(1:100,:));
% [label, result(:,i),decision_values] = svmpredict(test_feature_label_total(1:100,:),test_feature_total(1:100,:),model);
% i=i+1;
% 
% model_feature_label_total = [feature_label_elevatordown ;feature_label_lying  ;];
% model_feature_total = [feature_elevatordown;feature_lying;];
% test_feature_label_total = [test_feature_label_elevatordown ;test_feature_label_lying  ;];
% test_feature_total = [test_feature_elevatordown;test_feature_lying;];
% model=svmtrain(model_feature_label_total(1:100,:),     model_feature_total(1:100,:));
% [label, result(:,i),decision_values] = svmpredict(test_feature_label_total(1:100,:),test_feature_total(1:100,:),model);
% i=i+1;

%%
% i=1;
% model_feature_label_total = [feature_label_elevatorup ;feature_label_standing  ;];
% model_feature_total = [feature_elevatorup;feature_standing;];
% test_feature_label_total = [test_feature_label_elevatorup ;test_feature_label_standing  ;];
% test_feature_total = [test_feature_elevatorup;test_feature_standing;];
% model=svmtrain(model_feature_label_total(1:300,:),     model_feature_total(1:300,:));
% [label, result(:,i),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model);
% i=i+1;
% 
% model_feature_label_total = [feature_label_elevatorup ;feature_label_walking  ;];
% model_feature_total = [feature_elevatorup;feature_walking;];
% test_feature_label_total = [test_feature_label_elevatorup ;test_feature_label_walking  ;];
% test_feature_total = [test_feature_elevatorup;test_feature_walking;];
% model=svmtrain(model_feature_label_total(1:300,:),     model_feature_total(1:300,:));
% [label, result(:,i),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model);
% i=i+1;
% 
% model_feature_label_total = [feature_label_elevatorup ;feature_label_sitting  ;];
% model_feature_total = [feature_elevatorup;feature_sitting;];
% test_feature_label_total = [test_feature_label_elevatorup ;test_feature_label_sitting  ;];
% test_feature_total = [test_feature_elevatorup;test_feature_sitting;];
% model=svmtrain(model_feature_label_total(1:300,:),     model_feature_total(1:300,:));
% [label, result(:,i),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model);
% i=i+1;
% 
% model_feature_label_total = [feature_label_elevatorup ;feature_label_lying  ;];
% model_feature_total = [feature_elevatorup;feature_lying;];
% test_feature_label_total = [test_feature_label_elevatorup ;test_feature_label_lying  ;];
% test_feature_total = [test_feature_elevatorup;test_feature_lying;];
% model=svmtrain(model_feature_label_total(1:300,:),     model_feature_total(1:300,:));
% [label, result(:,i),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model);
% i=i+1;

%%
% i=1;
% model_feature_label_total = [feature_label_standing ;feature_label_walking  ;];
% model_feature_total = [feature_standing;feature_walking;];
% test_feature_label_total = [test_feature_label_standing ;test_feature_label_walking  ;];
% test_feature_total = [test_feature_standing;test_feature_walking;];
% model=svmtrain(model_feature_label_total(1:300,:),     model_feature_total(1:300,:));
% [label, result(:,i),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model);
% i=i+1;
% 
% model_feature_label_total = [feature_label_standing ;feature_label_sitting  ;];
% model_feature_total = [feature_standing;feature_sitting;];
% test_feature_label_total = [test_feature_label_standing ;test_feature_label_sitting  ;];
% test_feature_total = [test_feature_standing;test_feature_sitting;];
% model=svmtrain(model_feature_label_total(1:300,:),     model_feature_total(1:300,:));
% [label, result(:,i),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model);
% i=i+1;
% 
% model_feature_label_total = [feature_label_standing ;feature_label_lying  ;];
% model_feature_total = [feature_standing;feature_lying;];
% test_feature_label_total = [test_feature_label_standing ;test_feature_label_lying  ;];
% test_feature_total = [test_feature_standing;test_feature_lying;];
% model=svmtrain(model_feature_label_total(1:300,:),     model_feature_total(1:300,:));
% [label, result(:,i),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model);
% i=i+1;

%%
% i=1;
% model_feature_label_total = [feature_label_walking ;feature_label_sitting  ;];
% model_feature_total = [feature_walking;feature_sitting;];
% test_feature_label_total = [test_feature_label_walking ;test_feature_label_sitting  ;];
% test_feature_total = [test_feature_walking;test_feature_sitting;];
% model=svmtrain(model_feature_label_total(1:300,:),     model_feature_total(1:300,:));
% [label, result(:,i),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model);
% i=i+1;
% 
% model_feature_label_total = [feature_label_walking ;feature_label_lying  ;];
% model_feature_total = [feature_walking;feature_lying;];
% test_feature_label_total = [test_feature_label_walking ;test_feature_label_lying  ;];
% test_feature_total = [test_feature_walking;test_feature_lying;];
% model=svmtrain(model_feature_label_total(1:300,:),     model_feature_total(1:300,:));
% [label, result(:,i),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model);
% i=i+1;

%%
% i=1;
% model_feature_label_total = [feature_label_sitting ;feature_label_lying  ;];
% model_feature_total = [feature_sitting;feature_lying;];
% test_feature_label_total = [test_feature_label_sitting ;test_feature_label_lying  ;];
% test_feature_total = [test_feature_sitting;test_feature_lying;];
% model=svmtrain(model_feature_label_total(1:300,:),     model_feature_total(1:300,:));
% [label, result(:,i),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model);
% i=i+1;

