% clear all;
% load('C:\Users\Ethan\Desktop\20150713_total_dataset.mat')

%%Label Map
label_standing      = 1;
label_walking       = 2;
label_running       = 3;
label_lying         = 4;
label_upstairs      = 5;
label_downstairs    = 6;
label_elevatordown  = 7;
label_elevatorup    = 8;

label_sitting       = 0;
%%全局变量
global dataset;
global interval;
interval = 20;                   %数据处理间隔，窗口大小设置

%%
%处理数据需要修改的参数
dataset = downstairs11;%待处理原始数据
current_activity = label_downstairs;
label_count = 0;
feature_downstairs = cal_features( dataset );
%处理数据修改参量
for i=1:size(feature_downstairs, 1)
    feature_label_downstairs(i,1) = current_activity;
end
label_count = i;

dataset = downstairs12;%待处理原始数据
current_activity = label_downstairs;
feature_downstairs = [feature_downstairs; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(feature_downstairs, 1)
    feature_label_downstairs(i,1) = current_activity;
end
label_count = i;

dataset = downstairs13;%待处理原始数据
current_activity = label_downstairs;
feature_downstairs = [feature_downstairs; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(feature_downstairs, 1)
    feature_label_downstairs(i,1) = current_activity;
end
label_count = i;

dataset = downstairs14;%待处理原始数据
current_activity = label_downstairs;
feature_downstairs = [feature_downstairs; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(feature_downstairs, 1)
    feature_label_downstairs(i,1) = current_activity;
end
%%
%处理数据需要修改的参数
dataset = upstairs11 ;%待处理原始数据
current_activity = label_upstairs ;
label_count = 0;
feature_upstairs  = cal_features( dataset );
%处理数据修改参量
for i=1:size(feature_upstairs, 1)
    feature_label_upstairs(i,1) = current_activity;
end
label_count = i;

%处理数据需要修改的参数
dataset = upstairs12 ;%待处理原始数据
current_activity = label_upstairs ;
feature_upstairs  = [feature_upstairs; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(feature_upstairs, 1)
    feature_label_upstairs(i,1) = current_activity;
end
label_count = i;

%处理数据需要修改的参数
dataset = upstairs13 ;%待处理原始数据
current_activity = label_upstairs;
feature_upstairs  = [feature_upstairs; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(feature_upstairs, 1)
    feature_label_upstairs(i,1) = current_activity;
end

%%
%处理数据需要修改的参数
dataset = elevatordown11;%待处理原始数据
current_activity = label_elevatordown;
label_count = 0;
feature_elevatordown = cal_features( dataset );
%处理数据修改参量
for i=1:size(feature_elevatordown, 1)
    feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

%处理数据需要修改的参数
dataset = elevatordown12;%待处理原始数据
current_activity = label_elevatordown;
feature_elevatordown = [feature_elevatordown; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(feature_elevatordown, 1)
    feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

%处理数据需要修改的参数
dataset = elevatordown13;%待处理原始数据
current_activity = label_elevatordown;
feature_elevatordown = [feature_elevatordown; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(feature_elevatordown, 1)
    feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

%处理数据需要修改的参数
dataset = elevatordown14;%待处理原始数据
current_activity = label_elevatordown;
feature_elevatordown = [feature_elevatordown; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(feature_elevatordown, 1)
    feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

%处理数据需要修改的参数
dataset = elevatordown15;%待处理原始数据
current_activity = label_elevatordown;
feature_elevatordown = [feature_elevatordown; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(feature_elevatordown, 1)
    feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

%处理数据需要修改的参数
dataset = elevatordown1_1;%待处理原始数据
current_activity = label_elevatordown;
feature_elevatordown = [feature_elevatordown; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(feature_elevatordown, 1)
    feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

%处理数据需要修改的参数
dataset = elevatordown1_2;%待处理原始数据
current_activity = label_elevatordown;
feature_elevatordown = [feature_elevatordown; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(feature_elevatordown, 1)
    feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

%处理数据需要修改的参数
dataset = elevatordown1_3;%待处理原始数据
current_activity = label_elevatordown;
feature_elevatordown = [feature_elevatordown; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(feature_elevatordown, 1)
    feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

%处理数据需要修改的参数
dataset = elevatordown1_4;%待处理原始数据
current_activity = label_elevatordown;
feature_elevatordown = [feature_elevatordown; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(feature_elevatordown, 1)
    feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

%处理数据需要修改的参数
dataset = elevatordown1_5;%待处理原始数据
current_activity = label_elevatordown;
feature_elevatordown = [feature_elevatordown; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(feature_elevatordown, 1)
    feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

%处理数据需要修改的参数
dataset = elevatordown1_6;%待处理原始数据
current_activity = label_elevatordown;
feature_elevatordown = [feature_elevatordown; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(feature_elevatordown, 1)
    feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

%处理数据需要修改的参数
dataset = elevatordown1_7;%待处理原始数据
current_activity = label_elevatordown;
feature_elevatordown = [feature_elevatordown; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(feature_elevatordown, 1)
    feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

%处理数据需要修改的参数
dataset = elevatordown1_8;%待处理原始数据
current_activity = label_elevatordown;
feature_elevatordown = [feature_elevatordown; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(feature_elevatordown, 1)
    feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

%处理数据需要修改的参数
dataset = elevatordown1_9;%待处理原始数据
current_activity = label_elevatordown;
feature_elevatordown = [feature_elevatordown; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(feature_elevatordown, 1)
    feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

%%
%处理数据需要修改的参数
dataset = elevatorup11;%待处理原始数据
current_activity = label_elevatorup;
label_count = 0;
feature_elevatorup = cal_features( dataset );
% 处理数据修改参量
for i=1:size(feature_elevatorup,1)
    feature_label_elevatorup(i,1) = current_activity;
end
label_count = i;

%处理数据需要修改的参数
dataset = elevatorup12;%待处理原始数据
current_activity = label_elevatorup;
feature_elevatorup = [feature_elevatorup; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(feature_elevatorup,1)
    feature_label_elevatorup(i,1) = current_activity;
end
label_count = i;

%处理数据需要修改的参数
dataset = elevatorup13;%待处理原始数据
current_activity = label_elevatorup;
feature_elevatorup = [feature_elevatorup; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(feature_elevatorup,1)
    feature_label_elevatorup(i,1) = current_activity;
end
label_count = i;

%处理数据需要修改的参数
dataset = elevatorup14;%待处理原始数据
current_activity = label_elevatorup;
feature_elevatorup = [feature_elevatorup; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(feature_elevatorup,1)
    feature_label_elevatorup(i,1) = current_activity;
end
label_count = i;

%处理数据需要修改的参数
dataset = elevatorup15;%待处理原始数据
current_activity = label_elevatorup;
feature_elevatorup = [feature_elevatorup; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(feature_elevatorup,1)
    feature_label_elevatorup(i,1) = current_activity;
end

%处理数据需要修改的参数
dataset = elevatorup1_1;%待处理原始数据
current_activity = label_elevatorup;
feature_elevatorup = [feature_elevatorup; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(feature_elevatorup,1)
    feature_label_elevatorup(i,1) = current_activity;
end

%处理数据需要修改的参数
dataset = elevatorup1_2;%待处理原始数据
current_activity = label_elevatorup;
feature_elevatorup = [feature_elevatorup; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(feature_elevatorup,1)
    feature_label_elevatorup(i,1) = current_activity;
end

%处理数据需要修改的参数
dataset = elevatorup1_3;%待处理原始数据
current_activity = label_elevatorup;
feature_elevatorup = [feature_elevatorup; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(feature_elevatorup,1)
    feature_label_elevatorup(i,1) = current_activity;
end

%处理数据需要修改的参数
dataset = elevatorup1_4;%待处理原始数据
current_activity = label_elevatorup;
feature_elevatorup = [feature_elevatorup; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(feature_elevatorup,1)
    feature_label_elevatorup(i,1) = current_activity;
end

%处理数据需要修改的参数
dataset = elevatorup1_5;%待处理原始数据
current_activity = label_elevatorup;
feature_elevatorup = [feature_elevatorup; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(feature_elevatorup,1)
    feature_label_elevatorup(i,1) = current_activity;
end

%处理数据需要修改的参数
dataset = elevatorup1_6;%待处理原始数据
current_activity = label_elevatorup;
feature_elevatorup = [feature_elevatorup; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(feature_elevatorup,1)
    feature_label_elevatorup(i,1) = current_activity;
end

%处理数据需要修改的参数
dataset = elevatorup1_7;%待处理原始数据
current_activity = label_elevatorup;
feature_elevatorup = [feature_elevatorup; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(feature_elevatorup,1)
    feature_label_elevatorup(i,1) = current_activity;
end

%处理数据需要修改的参数
dataset = elevatorup1_8;%待处理原始数据
current_activity = label_elevatorup;
feature_elevatorup = [feature_elevatorup; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(feature_elevatorup,1)
    feature_label_elevatorup(i,1) = current_activity;
end

%处理数据需要修改的参数
dataset = elevatorup1_9;%待处理原始数据
current_activity = label_elevatorup;
feature_elevatorup = [feature_elevatorup; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(feature_elevatorup,1)
    feature_label_elevatorup(i,1) = current_activity;
end

%%
%处理数据需要修改的参数
dataset = standing1;%待处理原始数据
current_activity = label_standing;
feature_standing = cal_features( dataset );
%处理数据修改参量
for i=1:size(feature_standing,1)
    feature_label_standing(i,1) = current_activity;
end

%%
%处理数据需要修改的参数
dataset = walking1;%待处理原始数据
current_activity = label_walking;
feature_walking = cal_features( dataset );
%处理数据修改参量
for i=1:size(feature_walking,1)
    feature_label_walking(i,1) = current_activity;
end

%%
%处理数据需要修改的参数
dataset = sitting1;%待处理原始数据
current_activity = label_sitting;
feature_sitting = cal_features( dataset );
%处理数据修改参量
for i=1:size(feature_sitting,1)
    feature_label_sitting(i,1) = current_activity;
end

%%
%处理数据需要修改的参数
dataset = lying1;%待处理原始数据
current_activity = label_lying;
feature_lying = cal_features( dataset );
%处理数据修改参量
for i=1:size(feature_lying,1)
    feature_label_lying(i,1) = current_activity;
end

%%
%处理数据需要修改的参数
dataset = running2;%待处理原始数据
current_activity = label_running;
feature_running = cal_features( dataset );
%处理数据修改参量
for i=1:size(feature_running,1)
    feature_label_running(i,1) = current_activity;
end
label_count = i;

% %处理数据需要修改的参数
% dataset = running2;%待处理原始数据
% current_activity = label_running;
% feature_running = [feature_running; cal_features( dataset )];
% %处理数据修改参量
% for i=(label_count+1):size(feature_running,1)
%     feature_label_running(i,1) = current_activity;
% end
%%
%数据特征汇总
% model_feature_label_total = [feature_label_downstairs ;feature_label_upstairs  ;];
% model_feature_total = [feature_downstairs;feature_upstairs;];

% model_feature_label_total = [feature_label_downstairs ;feature_label_elevatordown  ;];
% model_feature_total = [feature_downstairs;feature_elevatordown;];

% model_feature_label_total = [feature_label_downstairs ;feature_label_elevatorup  ;];
% model_feature_total = [feature_downstairs;feature_elevatorup;];

% model_feature_label_total = [feature_label_downstairs ;feature_label_standing  ;];
% model_feature_total = [feature_downstairs;feature_standing;];

% model_feature_label_total = [feature_label_downstairs ;feature_label_walking  ;];
% model_feature_total = [feature_downstairs;feature_walking;];

% model_feature_label_total = [feature_label_downstairs ;feature_label_sitting  ;];
% model_feature_total = [feature_downstairs;feature_sitting;];

% model_feature_label_total = [feature_label_downstairs ;feature_label_lying  ;];
% model_feature_total = [feature_downstairs;feature_lying;];

%%
% model_feature_label_total = [feature_label_upstairs ;feature_label_elevatordown  ;];
% model_feature_total = [feature_upstairs;feature_elevatordown;];

% model_feature_label_total = [feature_label_upstairs ;feature_label_elevatorup  ;];
% model_feature_total = [feature_upstairs;feature_elevatorup;];

% model_feature_label_total = [feature_label_upstairs ;feature_label_standing  ;];
% model_feature_total = [feature_upstairs;feature_standing;];

% model_feature_label_total = [feature_label_upstairs ;feature_label_walking  ;];
% model_feature_total = [feature_upstairs;feature_walking;];

% model_feature_label_total = [feature_label_upstairs ;feature_label_sitting  ;];
% model_feature_total = [feature_upstairs;feature_sitting;];

% model_feature_label_total = [feature_label_upstairs ;feature_label_lying  ;];
% model_feature_total = [feature_upstairs;feature_lying;];


%%
% model_feature_label_total = [feature_label_elevatordown ;feature_label_elevatorup  ;];
% model_feature_total = [feature_elevatordown;feature_elevatorup;];

% model_feature_label_total = [feature_label_elevatordown ;feature_label_standing  ;];
% model_feature_total = [feature_elevatordown;feature_standing;];

% model_feature_label_total = [feature_label_elevatordown ;feature_label_walking  ;];
% model_feature_total = [feature_elevatordown;feature_walking;];

% model_feature_label_total = [feature_label_elevatordown ;feature_label_sitting  ;];
% model_feature_total = [feature_elevatordown;feature_sitting;];

% model_feature_label_total = [feature_label_elevatordown ;feature_label_lying  ;];
% model_feature_total = [feature_elevatordown;feature_lying;];

%%
% model_feature_label_total = [feature_label_elevatorup ;feature_label_standing  ;];
% model_feature_total = [feature_elevatorup;feature_standing;];

% model_feature_label_total = [feature_label_elevatorup ;feature_label_walking  ;];
% model_feature_total = [feature_elevatorup;feature_walking;];

% model_feature_label_total = [feature_label_elevatorup ;feature_label_sitting  ;];
% model_feature_total = [feature_elevatorup;feature_sitting;];

% model_feature_label_total = [feature_label_elevatorup ;feature_label_lying  ;];
% model_feature_total = [feature_elevatorup;feature_lying;];

%%
% model_feature_label_total = [feature_label_standing ;feature_label_walking  ;];
% model_feature_total = [feature_standing;feature_walking;];

% model_feature_label_total = [feature_label_standing ;feature_label_sitting  ;];
% model_feature_total = [feature_standing;feature_sitting;];

% model_feature_label_total = [feature_label_standing ;feature_label_lying  ;];
% model_feature_total = [feature_standing;feature_lying;];

%%
% model_feature_label_total = [feature_label_walking ;feature_label_sitting  ;];
% model_feature_total = [feature_walking;feature_sitting;];

% model_feature_label_total = [feature_label_walking ;feature_label_lying  ;];
% model_feature_total = [feature_walking;feature_lying;];

%%
% model_feature_label_total = [feature_label_sitting ;feature_label_lying  ;];
% model_feature_total = [feature_sitting;feature_lying;];

%%




%%

% model_feature_label_total = [feature_label_standing ;feature_label_walking ;feature_label_sitting ;];
% model_feature_total = [feature_standing; feature_walking; feature_sitting];

% model_feature_label_total = [feature_label_upstairs ;feature_label_elevatorup;];
% model_feature_total = [feature_upstairs;feature_elevatorup;];

% model_feature_label_total = [feature_label_downstairs ;feature_label_upstairs ;feature_label_elevatordown  ;feature_label_elevatorup ;feature_label_standing ;feature_label_walking ;feature_label_sitting;feature_label_lying;];
% model_feature_total = [feature_downstairs; feature_upstairs;feature_elevatordown; feature_elevatorup;feature_standing; feature_walking; feature_sitting;feature_lying;];

% model_feature_label_total = [feature_label_upstairs ;feature_label_elevatorup ;feature_label_standing ;feature_label_walking ;];%feature_label_sitting ;];
% model_feature_total = [feature_upstairs; feature_elevatorup;feature_standing; feature_walking; ];%feature_sitting];

% feature_label_test_total = [feature_label_test_falling; feature_label_test_standing;feature_label_test_running; feature_label_test_jumpping;feature_label_test_walking; ];
% feature_test_total = [feature_test_falling; feature_test_standing;feature_test_running; feature_test_jumpping;feature_test_walking; ];

%%
%对已处理数据做SVM训练，获得模型model


%Label Map

% %%
% %处理数据需要修改的参数
% global dataset;
% global interval;
% interval = 20;                   %数据处理间隔，窗口大小设置

%
%数据处理过程全局参数设定
dataset = downstairs21;%待处理原始数据
current_activity = label_downstairs;
label_count = 0;
test_feature_downstairs = cal_features( dataset );
%处理数据修改参量
for i=1:size(test_feature_downstairs,1);
    test_feature_label_downstairs(i,1) = current_activity;
end
label_count = i;

%数据处理过程全局参数设定
dataset = downstairs22;%待处理原始数据
current_activity = label_downstairs;
test_feature_downstairs = [test_feature_downstairs; cal_features( dataset )];
%处理数据修改参量
for i=1:size(test_feature_downstairs,1);
    test_feature_label_downstairs(i,1) = current_activity;
end
label_count = i;


%数据处理过程全局参数设定
dataset = downstairs23;%待处理原始数据
current_activity = label_downstairs;
test_feature_downstairs = [test_feature_downstairs; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(test_feature_downstairs,1);
    test_feature_label_downstairs(i,1) = current_activity;
end
label_count = i;

%数据处理过程全局参数设定
dataset = downstairs24;%待处理原始数据
current_activity = label_downstairs;
test_feature_downstairs = [test_feature_downstairs; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(test_feature_downstairs,1);
    test_feature_label_downstairs(i,1) = current_activity;
end

%%
%数据处理过程全局参数设定
dataset = upstairs21 ;%待处理原始数据
current_activity = label_upstairs ;
label_count = 0;
test_feature_upstairs  = cal_features( dataset );
%处理数据修改参量
for i=1:size(test_feature_upstairs,1);
    test_feature_label_upstairs (i,1) = current_activity;
end
label_count = i;

%数据处理过程全局参数设定
dataset = upstairs22 ;%待处理原始数据
current_activity = label_upstairs ;
test_feature_upstairs  = [test_feature_upstairs; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(test_feature_upstairs,1);
    test_feature_label_upstairs (i,1) = current_activity;
end
label_count = i;

%数据处理过程全局参数设定
dataset = upstairs23 ;%待处理原始数据
current_activity = label_upstairs ;
test_feature_upstairs  = [test_feature_upstairs; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(test_feature_upstairs,1);
    test_feature_label_upstairs (i,1) = current_activity;
end

%%
% 数据处理过程全局参数设定
dataset = elevatordown21;%待处理原始数据
current_activity = label_elevatordown;
label_count = 0;
test_feature_elevatordown = cal_features( dataset );
% 处理数据修改参量
for i=1:size(test_feature_elevatordown,1);
    test_feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

% 数据处理过程全局参数设定
dataset = elevatordown22;%待处理原始数据
current_activity = label_elevatordown;
test_feature_elevatordown = [test_feature_elevatordown; cal_features( dataset )];
% 处理数据修改参量
for i=(label_count+1):size(test_feature_elevatordown,1);
    test_feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

% 数据处理过程全局参数设定
dataset = elevatordown23;%待处理原始数据
current_activity = label_elevatordown;
test_feature_elevatordown = [test_feature_elevatordown; cal_features( dataset )];
% 处理数据修改参量
for i=(label_count+1):size(test_feature_elevatordown,1);
    test_feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

% 数据处理过程全局参数设定
dataset = elevatordown24;%待处理原始数据
current_activity = label_elevatordown;
test_feature_elevatordown = [test_feature_elevatordown; cal_features( dataset )];
% 处理数据修改参量
for i=(label_count+1):size(test_feature_elevatordown,1);
    test_feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

% 数据处理过程全局参数设定
dataset = elevatordown25;%待处理原始数据
current_activity = label_elevatordown;
test_feature_elevatordown = [test_feature_elevatordown; cal_features( dataset )];
% 处理数据修改参量
for i=(label_count+1):size(test_feature_elevatordown,1);
    test_feature_label_elevatordown(i,1) = current_activity;
end

% 数据处理过程全局参数设定
dataset = elevatordown2_1;%待处理原始数据
current_activity = label_elevatordown;
test_feature_elevatordown = [test_feature_elevatordown; cal_features( dataset )];
% 处理数据修改参量
for i=(label_count+1):size(test_feature_elevatordown,1);
    test_feature_label_elevatordown(i,1) = current_activity;
end

% 数据处理过程全局参数设定
dataset = elevatordown2_2;%待处理原始数据
current_activity = label_elevatordown;
test_feature_elevatordown = [test_feature_elevatordown; cal_features( dataset )];
% 处理数据修改参量
for i=(label_count+1):size(test_feature_elevatordown,1);
    test_feature_label_elevatordown(i,1) = current_activity;
end

% 数据处理过程全局参数设定
dataset = elevatordown2_3;%待处理原始数据
current_activity = label_elevatordown;
test_feature_elevatordown = [test_feature_elevatordown; cal_features( dataset )];
% 处理数据修改参量
for i=(label_count+1):size(test_feature_elevatordown,1);
    test_feature_label_elevatordown(i,1) = current_activity;
end

% 数据处理过程全局参数设定
dataset = elevatordown2_4;%待处理原始数据
current_activity = label_elevatordown;
test_feature_elevatordown = [test_feature_elevatordown; cal_features( dataset )];
% 处理数据修改参量
for i=(label_count+1):size(test_feature_elevatordown,1);
    test_feature_label_elevatordown(i,1) = current_activity;
end

% 数据处理过程全局参数设定
dataset = elevatordown2_5;%待处理原始数据
current_activity = label_elevatordown;
test_feature_elevatordown = [test_feature_elevatordown; cal_features( dataset )];
% 处理数据修改参量
for i=(label_count+1):size(test_feature_elevatordown,1);
    test_feature_label_elevatordown(i,1) = current_activity;
end

% 数据处理过程全局参数设定
dataset = elevatordown2_6;%待处理原始数据
current_activity = label_elevatordown;
test_feature_elevatordown = [test_feature_elevatordown; cal_features( dataset )];
% 处理数据修改参量
for i=(label_count+1):size(test_feature_elevatordown,1);
    test_feature_label_elevatordown(i,1) = current_activity;
end

% 数据处理过程全局参数设定
dataset = elevatordown2_7;%待处理原始数据
current_activity = label_elevatordown;
test_feature_elevatordown = [test_feature_elevatordown; cal_features( dataset )];
% 处理数据修改参量
for i=(label_count+1):size(test_feature_elevatordown,1);
    test_feature_label_elevatordown(i,1) = current_activity;
end

% 数据处理过程全局参数设定
dataset = elevatordown2_8;%待处理原始数据
current_activity = label_elevatordown;
test_feature_elevatordown = [test_feature_elevatordown; cal_features( dataset )];
% 处理数据修改参量
for i=(label_count+1):size(test_feature_elevatordown,1);
    test_feature_label_elevatordown(i,1) = current_activity;
end

% 数据处理过程全局参数设定
dataset = elevatordown2_9;%待处理原始数据
current_activity = label_elevatordown;
test_feature_elevatordown = [test_feature_elevatordown; cal_features( dataset )];
% 处理数据修改参量
for i=(label_count+1):size(test_feature_elevatordown,1);
    test_feature_label_elevatordown(i,1) = current_activity;
end

%%
%数据处理过程全局参数设定
dataset = elevatorup21;%待处理原始数据
current_activity = label_elevatorup;
label_count = 0;
test_feature_elevatorup = cal_features( dataset );
%处理数据修改参量
for i=1:size(test_feature_elevatorup,1);
    test_feature_label_elevatorup(i,1) = current_activity;
end
label_count = i;

%数据处理过程全局参数设定
dataset = elevatorup22;%待处理原始数据
current_activity = label_elevatorup;
test_feature_elevatorup = [test_feature_elevatorup; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(test_feature_elevatorup,1);
    test_feature_label_elevatorup(i,1) = current_activity;
end
label_count = i;

%数据处理过程全局参数设定
dataset = elevatorup24;%待处理原始数据
current_activity = label_elevatorup;
test_feature_elevatorup = [test_feature_elevatorup; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(test_feature_elevatorup,1);
    test_feature_label_elevatorup(i,1) = current_activity;
end
label_count = i;

%数据处理过程全局参数设定
dataset = elevatorup25;%待处理原始数据
current_activity = label_elevatorup;
test_feature_elevatorup = [test_feature_elevatorup; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(test_feature_elevatorup,1);
    test_feature_label_elevatorup(i,1) = current_activity;
end

%数据处理过程全局参数设定
dataset = elevatorup2_1;%待处理原始数据
current_activity = label_elevatorup;
test_feature_elevatorup = [test_feature_elevatorup; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(test_feature_elevatorup,1);
    test_feature_label_elevatorup(i,1) = current_activity;
end

%数据处理过程全局参数设定
dataset = elevatorup2_2;%待处理原始数据
current_activity = label_elevatorup;
test_feature_elevatorup = [test_feature_elevatorup; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(test_feature_elevatorup,1);
    test_feature_label_elevatorup(i,1) = current_activity;
end

%数据处理过程全局参数设定
dataset = elevatorup2_3;%待处理原始数据
current_activity = label_elevatorup;
test_feature_elevatorup = [test_feature_elevatorup; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(test_feature_elevatorup,1);
    test_feature_label_elevatorup(i,1) = current_activity;
end

%数据处理过程全局参数设定
dataset = elevatorup2_4;%待处理原始数据
current_activity = label_elevatorup;
test_feature_elevatorup = [test_feature_elevatorup; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(test_feature_elevatorup,1);
    test_feature_label_elevatorup(i,1) = current_activity;
end

%数据处理过程全局参数设定
dataset = elevatorup2_5;%待处理原始数据
current_activity = label_elevatorup;
test_feature_elevatorup = [test_feature_elevatorup; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(test_feature_elevatorup,1);
    test_feature_label_elevatorup(i,1) = current_activity;
end

%数据处理过程全局参数设定
dataset = elevatorup2_6;%待处理原始数据
current_activity = label_elevatorup;
test_feature_elevatorup = [test_feature_elevatorup; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(test_feature_elevatorup,1);
    test_feature_label_elevatorup(i,1) = current_activity;
end

%数据处理过程全局参数设定
dataset = elevatorup2_7;%待处理原始数据
current_activity = label_elevatorup;
test_feature_elevatorup = [test_feature_elevatorup; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(test_feature_elevatorup,1);
    test_feature_label_elevatorup(i,1) = current_activity;
end

%数据处理过程全局参数设定
dataset = elevatorup2_8;%待处理原始数据
current_activity = label_elevatorup;
test_feature_elevatorup = [test_feature_elevatorup; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(test_feature_elevatorup,1);
    test_feature_label_elevatorup(i,1) = current_activity;
end

%数据处理过程全局参数设定
dataset = elevatorup2_9;%待处理原始数据
current_activity = label_elevatorup;
test_feature_elevatorup = [test_feature_elevatorup; cal_features( dataset )];
%处理数据修改参量
for i=(label_count+1):size(test_feature_elevatorup,1);
    test_feature_label_elevatorup(i,1) = current_activity;
end

%%
%数据处理过程全局参数设定
dataset = standing2;%待处理原始数据
current_activity = label_standing;
test_feature_standing = cal_features( dataset );
%处理数据修改参量
for i=1:size(test_feature_standing,1);
    test_feature_label_standing(i,1) = current_activity;
end

%%
%数据处理过程全局参数设定
dataset = walking2;%待处理原始数据
current_activity = label_walking;
test_feature_walking = cal_features( dataset );
%处理数据修改参量
for i=1:size(test_feature_walking,1);
    test_feature_label_walking(i,1) = current_activity;
end

%%
%数据处理过程全局参数设定
dataset = sitting2;%待处理原始数据
current_activity = label_sitting;
test_feature_sitting = cal_features( dataset );
%处理数据修改参量
for i=1:size(test_feature_sitting,1);
    test_feature_label_sitting(i,1) = current_activity;
end

%%
%数据处理过程全局参数设定
dataset = lying2;%待处理原始数据
current_activity = label_lying;
test_feature_lying = cal_features( dataset );
%处理数据修改参量
for i=1:size(test_feature_lying,1);
    test_feature_label_lying(i,1) = current_activity;
end

%%
%数据处理过程全局参数设定
dataset = running1;%待处理原始数据
current_activity = label_running;
test_feature_running = cal_features( dataset );
%处理数据修改参量
for i=1:size(test_feature_running,1);
    test_feature_label_running(i,1) = current_activity;
end
%%

% %feature_label_downstairs(1:350,:)  ;feature_label_elevatordown(1:202,:)  ;feature_label_elevatorup(1:185,:)  ;feature_label_upstairs(1:311,:)  ;feature_label_walking(1:416,:)  ;
% model_feature_label_total = [feature_label_downstairs(1:350,:)  ;feature_label_elevatordown(1:202,:)  ;feature_label_elevatorup(1:185,:)  ;feature_label_upstairs(1:311,:)  ;feature_label_walking(1:416,:)  ;];
% model_feature_total = [feature_downstairs(1:350,:)  ;feature_elevatordown(1:202,:)  ;feature_elevatorup(1:185,:)  ;feature_upstairs(1:311,:)  ;feature_walking(1:416,:)  ;];
% test_feature_label_total = [test_feature_label_downstairs(1:350,:)  ;test_feature_label_elevatordown(1:202,:)  ;test_feature_label_elevatorup(1:185,:)  ;test_feature_label_upstairs(1:311,:)  ;test_feature_label_walking(1:416,:)  ;];
% test_feature_total = [test_feature_downstairs(1:350,:)  ;test_feature_elevatordown(1:202,:)  ;test_feature_elevatorup(1:185,:)  ;test_feature_upstairs(1:311,:)  ;test_feature_walking(1:416,:)  ;];
% model=svmtrain(model_feature_label_total,     model_feature_total);
% [label, result(:,1),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model);
% 

