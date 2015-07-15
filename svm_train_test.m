model = svmtrain(model_feature_label_total,     model_feature_total);

[a,b,c]=svmpredict(test_feature_label_total,test_feature_total,model);
% 
% [test_feature_label_total result];


% global dataset;
% global interval;
% global distribute_rate;
% 
% interval = 25;
% distribute_rate = 0.5;
% 
% generateData();
% generate_model_data();
% generate_test_data();
% 


%%
%用300个样本，统计特征量化值
% model=svmtrain(model_feature_label_total(1:300,:),     model_feature_total(1:300,:))
% result(1,i) = svmpredict(test_feature_label_total(1:300,:),test_feature_total(1:300,:),model);
% i=i+1;