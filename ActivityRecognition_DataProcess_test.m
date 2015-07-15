%Label Map
label_downstairs    = 1;
label_elevatordown  = 2;
label_upstairs      = 3;
label_elevatorup    = 4;
label_standing      = 5;
label_walking       = 6;
label_sitting       = 7;
label_lying         = 8;

%%
%处理数据需要修改的参数
global dataset;
global interval;
interval = 20;                   %数据处理间隔，窗口大小设置

%%
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


% test_feature_label_total = [test_feature_label_elevatorup ;test_feature_label_elevatordown  ;];
% test_feature_total = [test_feature_elevatorup;test_feature_elevatordown;];

%%
%数据特征汇总
% test_feature_label_total = [test_feature_label_downstairs ;test_feature_label_upstairs  ;];
% test_feature_total = [test_feature_downstairs;test_feature_upstairs;];

% test_feature_label_total = [test_feature_label_downstairs ;test_feature_label_elevatordown  ;];
% test_feature_total = [test_feature_downstairs;test_feature_elevatordown;];

% test_feature_label_total = [test_feature_label_downstairs ;test_feature_label_elevatorup  ;];
% test_feature_total = [test_feature_downstairs;test_feature_elevatorup;];

% test_feature_label_total = [test_feature_label_downstairs ;test_feature_label_standing  ;];
% test_feature_total = [test_feature_downstairs;test_feature_standing;];

% test_feature_label_total = [test_feature_label_downstairs ;test_feature_label_walking  ;];
% test_feature_total = [test_feature_downstairs;test_feature_walking;];

% test_feature_label_total = [test_feature_label_downstairs ;test_feature_label_sitting  ;];
% test_feature_total = [test_feature_downstairs;test_feature_sitting;];

% test_feature_label_total = [test_feature_label_downstairs ;test_feature_label_lying  ;];
% test_feature_total = [test_feature_downstairs;test_feature_lying;];

%%
% test_feature_label_total = [test_feature_label_upstairs ;test_feature_label_elevatordown  ;];
% test_feature_total = [test_feature_upstairs;test_feature_elevatordown;];

% test_feature_label_total = [test_feature_label_upstairs ;test_feature_label_elevatorup  ;];
% test_feature_total = [test_feature_upstairs;test_feature_elevatorup;];

% test_feature_label_total = [test_feature_label_upstairs ;test_feature_label_standing  ;];
% test_feature_total = [test_feature_upstairs;test_feature_standing;];

% test_feature_label_total = [test_feature_label_upstairs ;test_feature_label_walking  ;];
% test_feature_total = [test_feature_upstairs;test_feature_walking;];

% test_feature_label_total = [test_feature_label_upstairs ;test_feature_label_sitting  ;];
% test_feature_total = [test_feature_upstairs;test_feature_sitting;];

% test_feature_label_total = [test_feature_label_upstairs ;test_feature_label_lying  ;];
% test_feature_total = [test_feature_upstairs;test_feature_lying;];


%%
% test_feature_label_total = [test_feature_label_elevatordown ;test_feature_label_elevatorup  ;];
% test_feature_total = [test_feature_elevatordown;test_feature_elevatorup;];

% test_feature_label_total = [test_feature_label_elevatordown ;test_feature_label_standing  ;];
% test_feature_total = [test_feature_elevatordown;test_feature_standing;];

% test_feature_label_total = [test_feature_label_elevatordown ;test_feature_label_walking  ;];
% test_feature_total = [test_feature_elevatordown;test_feature_walking;];

% test_feature_label_total = [test_feature_label_elevatordown ;test_feature_label_sitting  ;];
% test_feature_total = [test_feature_elevatordown;test_feature_sitting;];

% test_feature_label_total = [test_feature_label_elevatordown ;test_feature_label_lying  ;];
% test_feature_total = [test_feature_elevatordown;test_feature_lying;];

%%
% test_feature_label_total = [test_feature_label_elevatorup ;test_feature_label_standing  ;];
% test_feature_total = [test_feature_elevatorup;test_feature_standing;];

% test_feature_label_total = [test_feature_label_elevatorup ;test_feature_label_walking  ;];
% test_feature_total = [test_feature_elevatorup;test_feature_walking;];

% test_feature_label_total = [test_feature_label_elevatorup ;test_feature_label_sitting  ;];
% test_feature_total = [test_feature_elevatorup;test_feature_sitting;];

% test_feature_label_total = [test_feature_label_elevatorup ;test_feature_label_lying  ;];
% test_feature_total = [test_feature_elevatorup;test_feature_lying;];

%%
% test_feature_label_total = [test_feature_label_standing ;test_feature_label_walking  ;];
% test_feature_total = [test_feature_standing;test_feature_walking;];

% test_feature_label_total = [test_feature_label_standing ;test_feature_label_sitting  ;];
% test_feature_total = [test_feature_standing;test_feature_sitting;];

% test_feature_label_total = [test_feature_label_standing ;test_feature_label_lying  ;];
% test_feature_total = [test_feature_standing;test_feature_lying;];

%%
% test_feature_label_total = [test_feature_label_walking ;test_feature_label_sitting  ;];
% test_feature_total = [test_feature_walking;test_feature_sitting;];

% test_feature_label_total = [test_feature_label_walking ;test_feature_label_lying  ;];
% test_feature_total = [test_feature_walking;test_feature_lying;];

%%
% test_feature_label_total = [test_feature_label_sitting ;test_feature_label_lying  ;];
% test_feature_total = [test_feature_sitting;test_feature_lying;];

%%





%%
% test_feature_label_total = [test_feature_label_standing ;test_feature_label_walking ;test_feature_label_sitting ;];
% test_feature_total = [test_feature_standing; test_feature_walking; test_feature_sitting];


% test_feature_label_total = [test_feature_label_upstairs ;test_feature_label_elevatorup;];
% test_feature_total = [test_feature_upstairs;test_feature_elevatorup;];


%%
% test_feature_label_total = [test_feature_label_downstairs ;test_feature_label_upstairs ;test_feature_label_elevatordown  ;test_feature_label_elevatorup ;test_feature_label_standing ;test_feature_label_walking ;test_feature_label_sitting;test_feature_label_ing;];
% test_feature_total = [test_feature_downstairs; test_feature_upstairs; test_feature_elevatordown; test_feature_elevatorup; test_feature_standing; test_feature_walking; test_feature_sitting；test_feature_ing;];

% test_feature_label_total = [test_feature_label_upstairs ;test_feature_label_elevatorup ;test_feature_label_standing ;test_feature_label_walking ;];%test_feature_label_sitting ;];
% test_feature_total = [test_feature_upstairs; test_feature_elevatorup; test_feature_standing; test_feature_walking;];% test_feature_sitting];

% feature_label_test_total = [feature_label_test_falling; feature_label_test_standing;feature_label_test_running; feature_label_test_jumpping;feature_label_test_walking; ];
% feature_test_total = [feature_test_falling; feature_test_standing;feature_test_running; feature_test_jumpping;feature_test_walking; ];

%%
%对已处理数据做SVM训练，获得模型model
