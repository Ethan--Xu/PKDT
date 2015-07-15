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
%%ȫ�ֱ���
global dataset;
global interval;
interval = 20;                   %���ݴ����������ڴ�С����

%%
%����������Ҫ�޸ĵĲ���
dataset = downstairs11;%������ԭʼ����
current_activity = label_downstairs;
label_count = 0;
feature_downstairs = cal_features( dataset );
%���������޸Ĳ���
for i=1:size(feature_downstairs, 1)
    feature_label_downstairs(i,1) = current_activity;
end
label_count = i;

dataset = downstairs12;%������ԭʼ����
current_activity = label_downstairs;
feature_downstairs = [feature_downstairs; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(feature_downstairs, 1)
    feature_label_downstairs(i,1) = current_activity;
end
label_count = i;

dataset = downstairs13;%������ԭʼ����
current_activity = label_downstairs;
feature_downstairs = [feature_downstairs; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(feature_downstairs, 1)
    feature_label_downstairs(i,1) = current_activity;
end
label_count = i;

dataset = downstairs14;%������ԭʼ����
current_activity = label_downstairs;
feature_downstairs = [feature_downstairs; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(feature_downstairs, 1)
    feature_label_downstairs(i,1) = current_activity;
end
%%
%����������Ҫ�޸ĵĲ���
dataset = upstairs11 ;%������ԭʼ����
current_activity = label_upstairs ;
label_count = 0;
feature_upstairs  = cal_features( dataset );
%���������޸Ĳ���
for i=1:size(feature_upstairs, 1)
    feature_label_upstairs(i,1) = current_activity;
end
label_count = i;

%����������Ҫ�޸ĵĲ���
dataset = upstairs12 ;%������ԭʼ����
current_activity = label_upstairs ;
feature_upstairs  = [feature_upstairs; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(feature_upstairs, 1)
    feature_label_upstairs(i,1) = current_activity;
end
label_count = i;

%����������Ҫ�޸ĵĲ���
dataset = upstairs13 ;%������ԭʼ����
current_activity = label_upstairs;
feature_upstairs  = [feature_upstairs; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(feature_upstairs, 1)
    feature_label_upstairs(i,1) = current_activity;
end

%%
%����������Ҫ�޸ĵĲ���
dataset = elevatordown11;%������ԭʼ����
current_activity = label_elevatordown;
label_count = 0;
feature_elevatordown = cal_features( dataset );
%���������޸Ĳ���
for i=1:size(feature_elevatordown, 1)
    feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

%����������Ҫ�޸ĵĲ���
dataset = elevatordown12;%������ԭʼ����
current_activity = label_elevatordown;
feature_elevatordown = [feature_elevatordown; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(feature_elevatordown, 1)
    feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

%����������Ҫ�޸ĵĲ���
dataset = elevatordown13;%������ԭʼ����
current_activity = label_elevatordown;
feature_elevatordown = [feature_elevatordown; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(feature_elevatordown, 1)
    feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

%����������Ҫ�޸ĵĲ���
dataset = elevatordown14;%������ԭʼ����
current_activity = label_elevatordown;
feature_elevatordown = [feature_elevatordown; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(feature_elevatordown, 1)
    feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

%����������Ҫ�޸ĵĲ���
dataset = elevatordown15;%������ԭʼ����
current_activity = label_elevatordown;
feature_elevatordown = [feature_elevatordown; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(feature_elevatordown, 1)
    feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

%����������Ҫ�޸ĵĲ���
dataset = elevatordown1_1;%������ԭʼ����
current_activity = label_elevatordown;
feature_elevatordown = [feature_elevatordown; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(feature_elevatordown, 1)
    feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

%����������Ҫ�޸ĵĲ���
dataset = elevatordown1_2;%������ԭʼ����
current_activity = label_elevatordown;
feature_elevatordown = [feature_elevatordown; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(feature_elevatordown, 1)
    feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

%����������Ҫ�޸ĵĲ���
dataset = elevatordown1_3;%������ԭʼ����
current_activity = label_elevatordown;
feature_elevatordown = [feature_elevatordown; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(feature_elevatordown, 1)
    feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

%����������Ҫ�޸ĵĲ���
dataset = elevatordown1_4;%������ԭʼ����
current_activity = label_elevatordown;
feature_elevatordown = [feature_elevatordown; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(feature_elevatordown, 1)
    feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

%����������Ҫ�޸ĵĲ���
dataset = elevatordown1_5;%������ԭʼ����
current_activity = label_elevatordown;
feature_elevatordown = [feature_elevatordown; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(feature_elevatordown, 1)
    feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

%����������Ҫ�޸ĵĲ���
dataset = elevatordown1_6;%������ԭʼ����
current_activity = label_elevatordown;
feature_elevatordown = [feature_elevatordown; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(feature_elevatordown, 1)
    feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

%����������Ҫ�޸ĵĲ���
dataset = elevatordown1_7;%������ԭʼ����
current_activity = label_elevatordown;
feature_elevatordown = [feature_elevatordown; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(feature_elevatordown, 1)
    feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

%����������Ҫ�޸ĵĲ���
dataset = elevatordown1_8;%������ԭʼ����
current_activity = label_elevatordown;
feature_elevatordown = [feature_elevatordown; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(feature_elevatordown, 1)
    feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

%����������Ҫ�޸ĵĲ���
dataset = elevatordown1_9;%������ԭʼ����
current_activity = label_elevatordown;
feature_elevatordown = [feature_elevatordown; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(feature_elevatordown, 1)
    feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

%%
%����������Ҫ�޸ĵĲ���
dataset = elevatorup11;%������ԭʼ����
current_activity = label_elevatorup;
label_count = 0;
feature_elevatorup = cal_features( dataset );
% ���������޸Ĳ���
for i=1:size(feature_elevatorup,1)
    feature_label_elevatorup(i,1) = current_activity;
end
label_count = i;

%����������Ҫ�޸ĵĲ���
dataset = elevatorup12;%������ԭʼ����
current_activity = label_elevatorup;
feature_elevatorup = [feature_elevatorup; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(feature_elevatorup,1)
    feature_label_elevatorup(i,1) = current_activity;
end
label_count = i;

%����������Ҫ�޸ĵĲ���
dataset = elevatorup13;%������ԭʼ����
current_activity = label_elevatorup;
feature_elevatorup = [feature_elevatorup; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(feature_elevatorup,1)
    feature_label_elevatorup(i,1) = current_activity;
end
label_count = i;

%����������Ҫ�޸ĵĲ���
dataset = elevatorup14;%������ԭʼ����
current_activity = label_elevatorup;
feature_elevatorup = [feature_elevatorup; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(feature_elevatorup,1)
    feature_label_elevatorup(i,1) = current_activity;
end
label_count = i;

%����������Ҫ�޸ĵĲ���
dataset = elevatorup15;%������ԭʼ����
current_activity = label_elevatorup;
feature_elevatorup = [feature_elevatorup; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(feature_elevatorup,1)
    feature_label_elevatorup(i,1) = current_activity;
end

%����������Ҫ�޸ĵĲ���
dataset = elevatorup1_1;%������ԭʼ����
current_activity = label_elevatorup;
feature_elevatorup = [feature_elevatorup; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(feature_elevatorup,1)
    feature_label_elevatorup(i,1) = current_activity;
end

%����������Ҫ�޸ĵĲ���
dataset = elevatorup1_2;%������ԭʼ����
current_activity = label_elevatorup;
feature_elevatorup = [feature_elevatorup; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(feature_elevatorup,1)
    feature_label_elevatorup(i,1) = current_activity;
end

%����������Ҫ�޸ĵĲ���
dataset = elevatorup1_3;%������ԭʼ����
current_activity = label_elevatorup;
feature_elevatorup = [feature_elevatorup; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(feature_elevatorup,1)
    feature_label_elevatorup(i,1) = current_activity;
end

%����������Ҫ�޸ĵĲ���
dataset = elevatorup1_4;%������ԭʼ����
current_activity = label_elevatorup;
feature_elevatorup = [feature_elevatorup; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(feature_elevatorup,1)
    feature_label_elevatorup(i,1) = current_activity;
end

%����������Ҫ�޸ĵĲ���
dataset = elevatorup1_5;%������ԭʼ����
current_activity = label_elevatorup;
feature_elevatorup = [feature_elevatorup; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(feature_elevatorup,1)
    feature_label_elevatorup(i,1) = current_activity;
end

%����������Ҫ�޸ĵĲ���
dataset = elevatorup1_6;%������ԭʼ����
current_activity = label_elevatorup;
feature_elevatorup = [feature_elevatorup; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(feature_elevatorup,1)
    feature_label_elevatorup(i,1) = current_activity;
end

%����������Ҫ�޸ĵĲ���
dataset = elevatorup1_7;%������ԭʼ����
current_activity = label_elevatorup;
feature_elevatorup = [feature_elevatorup; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(feature_elevatorup,1)
    feature_label_elevatorup(i,1) = current_activity;
end

%����������Ҫ�޸ĵĲ���
dataset = elevatorup1_8;%������ԭʼ����
current_activity = label_elevatorup;
feature_elevatorup = [feature_elevatorup; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(feature_elevatorup,1)
    feature_label_elevatorup(i,1) = current_activity;
end

%����������Ҫ�޸ĵĲ���
dataset = elevatorup1_9;%������ԭʼ����
current_activity = label_elevatorup;
feature_elevatorup = [feature_elevatorup; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(feature_elevatorup,1)
    feature_label_elevatorup(i,1) = current_activity;
end

%%
%����������Ҫ�޸ĵĲ���
dataset = standing1;%������ԭʼ����
current_activity = label_standing;
feature_standing = cal_features( dataset );
%���������޸Ĳ���
for i=1:size(feature_standing,1)
    feature_label_standing(i,1) = current_activity;
end

%%
%����������Ҫ�޸ĵĲ���
dataset = walking1;%������ԭʼ����
current_activity = label_walking;
feature_walking = cal_features( dataset );
%���������޸Ĳ���
for i=1:size(feature_walking,1)
    feature_label_walking(i,1) = current_activity;
end

%%
%����������Ҫ�޸ĵĲ���
dataset = sitting1;%������ԭʼ����
current_activity = label_sitting;
feature_sitting = cal_features( dataset );
%���������޸Ĳ���
for i=1:size(feature_sitting,1)
    feature_label_sitting(i,1) = current_activity;
end

%%
%����������Ҫ�޸ĵĲ���
dataset = lying1;%������ԭʼ����
current_activity = label_lying;
feature_lying = cal_features( dataset );
%���������޸Ĳ���
for i=1:size(feature_lying,1)
    feature_label_lying(i,1) = current_activity;
end

%%
%����������Ҫ�޸ĵĲ���
dataset = running2;%������ԭʼ����
current_activity = label_running;
feature_running = cal_features( dataset );
%���������޸Ĳ���
for i=1:size(feature_running,1)
    feature_label_running(i,1) = current_activity;
end
label_count = i;

% %����������Ҫ�޸ĵĲ���
% dataset = running2;%������ԭʼ����
% current_activity = label_running;
% feature_running = [feature_running; cal_features( dataset )];
% %���������޸Ĳ���
% for i=(label_count+1):size(feature_running,1)
%     feature_label_running(i,1) = current_activity;
% end
%%
%������������
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
%���Ѵ���������SVMѵ�������ģ��model


%Label Map

% %%
% %����������Ҫ�޸ĵĲ���
% global dataset;
% global interval;
% interval = 20;                   %���ݴ����������ڴ�С����

%
%���ݴ������ȫ�ֲ����趨
dataset = downstairs21;%������ԭʼ����
current_activity = label_downstairs;
label_count = 0;
test_feature_downstairs = cal_features( dataset );
%���������޸Ĳ���
for i=1:size(test_feature_downstairs,1);
    test_feature_label_downstairs(i,1) = current_activity;
end
label_count = i;

%���ݴ������ȫ�ֲ����趨
dataset = downstairs22;%������ԭʼ����
current_activity = label_downstairs;
test_feature_downstairs = [test_feature_downstairs; cal_features( dataset )];
%���������޸Ĳ���
for i=1:size(test_feature_downstairs,1);
    test_feature_label_downstairs(i,1) = current_activity;
end
label_count = i;


%���ݴ������ȫ�ֲ����趨
dataset = downstairs23;%������ԭʼ����
current_activity = label_downstairs;
test_feature_downstairs = [test_feature_downstairs; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(test_feature_downstairs,1);
    test_feature_label_downstairs(i,1) = current_activity;
end
label_count = i;

%���ݴ������ȫ�ֲ����趨
dataset = downstairs24;%������ԭʼ����
current_activity = label_downstairs;
test_feature_downstairs = [test_feature_downstairs; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(test_feature_downstairs,1);
    test_feature_label_downstairs(i,1) = current_activity;
end

%%
%���ݴ������ȫ�ֲ����趨
dataset = upstairs21 ;%������ԭʼ����
current_activity = label_upstairs ;
label_count = 0;
test_feature_upstairs  = cal_features( dataset );
%���������޸Ĳ���
for i=1:size(test_feature_upstairs,1);
    test_feature_label_upstairs (i,1) = current_activity;
end
label_count = i;

%���ݴ������ȫ�ֲ����趨
dataset = upstairs22 ;%������ԭʼ����
current_activity = label_upstairs ;
test_feature_upstairs  = [test_feature_upstairs; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(test_feature_upstairs,1);
    test_feature_label_upstairs (i,1) = current_activity;
end
label_count = i;

%���ݴ������ȫ�ֲ����趨
dataset = upstairs23 ;%������ԭʼ����
current_activity = label_upstairs ;
test_feature_upstairs  = [test_feature_upstairs; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(test_feature_upstairs,1);
    test_feature_label_upstairs (i,1) = current_activity;
end

%%
% ���ݴ������ȫ�ֲ����趨
dataset = elevatordown21;%������ԭʼ����
current_activity = label_elevatordown;
label_count = 0;
test_feature_elevatordown = cal_features( dataset );
% ���������޸Ĳ���
for i=1:size(test_feature_elevatordown,1);
    test_feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

% ���ݴ������ȫ�ֲ����趨
dataset = elevatordown22;%������ԭʼ����
current_activity = label_elevatordown;
test_feature_elevatordown = [test_feature_elevatordown; cal_features( dataset )];
% ���������޸Ĳ���
for i=(label_count+1):size(test_feature_elevatordown,1);
    test_feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

% ���ݴ������ȫ�ֲ����趨
dataset = elevatordown23;%������ԭʼ����
current_activity = label_elevatordown;
test_feature_elevatordown = [test_feature_elevatordown; cal_features( dataset )];
% ���������޸Ĳ���
for i=(label_count+1):size(test_feature_elevatordown,1);
    test_feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

% ���ݴ������ȫ�ֲ����趨
dataset = elevatordown24;%������ԭʼ����
current_activity = label_elevatordown;
test_feature_elevatordown = [test_feature_elevatordown; cal_features( dataset )];
% ���������޸Ĳ���
for i=(label_count+1):size(test_feature_elevatordown,1);
    test_feature_label_elevatordown(i,1) = current_activity;
end
label_count = i;

% ���ݴ������ȫ�ֲ����趨
dataset = elevatordown25;%������ԭʼ����
current_activity = label_elevatordown;
test_feature_elevatordown = [test_feature_elevatordown; cal_features( dataset )];
% ���������޸Ĳ���
for i=(label_count+1):size(test_feature_elevatordown,1);
    test_feature_label_elevatordown(i,1) = current_activity;
end

% ���ݴ������ȫ�ֲ����趨
dataset = elevatordown2_1;%������ԭʼ����
current_activity = label_elevatordown;
test_feature_elevatordown = [test_feature_elevatordown; cal_features( dataset )];
% ���������޸Ĳ���
for i=(label_count+1):size(test_feature_elevatordown,1);
    test_feature_label_elevatordown(i,1) = current_activity;
end

% ���ݴ������ȫ�ֲ����趨
dataset = elevatordown2_2;%������ԭʼ����
current_activity = label_elevatordown;
test_feature_elevatordown = [test_feature_elevatordown; cal_features( dataset )];
% ���������޸Ĳ���
for i=(label_count+1):size(test_feature_elevatordown,1);
    test_feature_label_elevatordown(i,1) = current_activity;
end

% ���ݴ������ȫ�ֲ����趨
dataset = elevatordown2_3;%������ԭʼ����
current_activity = label_elevatordown;
test_feature_elevatordown = [test_feature_elevatordown; cal_features( dataset )];
% ���������޸Ĳ���
for i=(label_count+1):size(test_feature_elevatordown,1);
    test_feature_label_elevatordown(i,1) = current_activity;
end

% ���ݴ������ȫ�ֲ����趨
dataset = elevatordown2_4;%������ԭʼ����
current_activity = label_elevatordown;
test_feature_elevatordown = [test_feature_elevatordown; cal_features( dataset )];
% ���������޸Ĳ���
for i=(label_count+1):size(test_feature_elevatordown,1);
    test_feature_label_elevatordown(i,1) = current_activity;
end

% ���ݴ������ȫ�ֲ����趨
dataset = elevatordown2_5;%������ԭʼ����
current_activity = label_elevatordown;
test_feature_elevatordown = [test_feature_elevatordown; cal_features( dataset )];
% ���������޸Ĳ���
for i=(label_count+1):size(test_feature_elevatordown,1);
    test_feature_label_elevatordown(i,1) = current_activity;
end

% ���ݴ������ȫ�ֲ����趨
dataset = elevatordown2_6;%������ԭʼ����
current_activity = label_elevatordown;
test_feature_elevatordown = [test_feature_elevatordown; cal_features( dataset )];
% ���������޸Ĳ���
for i=(label_count+1):size(test_feature_elevatordown,1);
    test_feature_label_elevatordown(i,1) = current_activity;
end

% ���ݴ������ȫ�ֲ����趨
dataset = elevatordown2_7;%������ԭʼ����
current_activity = label_elevatordown;
test_feature_elevatordown = [test_feature_elevatordown; cal_features( dataset )];
% ���������޸Ĳ���
for i=(label_count+1):size(test_feature_elevatordown,1);
    test_feature_label_elevatordown(i,1) = current_activity;
end

% ���ݴ������ȫ�ֲ����趨
dataset = elevatordown2_8;%������ԭʼ����
current_activity = label_elevatordown;
test_feature_elevatordown = [test_feature_elevatordown; cal_features( dataset )];
% ���������޸Ĳ���
for i=(label_count+1):size(test_feature_elevatordown,1);
    test_feature_label_elevatordown(i,1) = current_activity;
end

% ���ݴ������ȫ�ֲ����趨
dataset = elevatordown2_9;%������ԭʼ����
current_activity = label_elevatordown;
test_feature_elevatordown = [test_feature_elevatordown; cal_features( dataset )];
% ���������޸Ĳ���
for i=(label_count+1):size(test_feature_elevatordown,1);
    test_feature_label_elevatordown(i,1) = current_activity;
end

%%
%���ݴ������ȫ�ֲ����趨
dataset = elevatorup21;%������ԭʼ����
current_activity = label_elevatorup;
label_count = 0;
test_feature_elevatorup = cal_features( dataset );
%���������޸Ĳ���
for i=1:size(test_feature_elevatorup,1);
    test_feature_label_elevatorup(i,1) = current_activity;
end
label_count = i;

%���ݴ������ȫ�ֲ����趨
dataset = elevatorup22;%������ԭʼ����
current_activity = label_elevatorup;
test_feature_elevatorup = [test_feature_elevatorup; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(test_feature_elevatorup,1);
    test_feature_label_elevatorup(i,1) = current_activity;
end
label_count = i;

%���ݴ������ȫ�ֲ����趨
dataset = elevatorup24;%������ԭʼ����
current_activity = label_elevatorup;
test_feature_elevatorup = [test_feature_elevatorup; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(test_feature_elevatorup,1);
    test_feature_label_elevatorup(i,1) = current_activity;
end
label_count = i;

%���ݴ������ȫ�ֲ����趨
dataset = elevatorup25;%������ԭʼ����
current_activity = label_elevatorup;
test_feature_elevatorup = [test_feature_elevatorup; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(test_feature_elevatorup,1);
    test_feature_label_elevatorup(i,1) = current_activity;
end

%���ݴ������ȫ�ֲ����趨
dataset = elevatorup2_1;%������ԭʼ����
current_activity = label_elevatorup;
test_feature_elevatorup = [test_feature_elevatorup; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(test_feature_elevatorup,1);
    test_feature_label_elevatorup(i,1) = current_activity;
end

%���ݴ������ȫ�ֲ����趨
dataset = elevatorup2_2;%������ԭʼ����
current_activity = label_elevatorup;
test_feature_elevatorup = [test_feature_elevatorup; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(test_feature_elevatorup,1);
    test_feature_label_elevatorup(i,1) = current_activity;
end

%���ݴ������ȫ�ֲ����趨
dataset = elevatorup2_3;%������ԭʼ����
current_activity = label_elevatorup;
test_feature_elevatorup = [test_feature_elevatorup; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(test_feature_elevatorup,1);
    test_feature_label_elevatorup(i,1) = current_activity;
end

%���ݴ������ȫ�ֲ����趨
dataset = elevatorup2_4;%������ԭʼ����
current_activity = label_elevatorup;
test_feature_elevatorup = [test_feature_elevatorup; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(test_feature_elevatorup,1);
    test_feature_label_elevatorup(i,1) = current_activity;
end

%���ݴ������ȫ�ֲ����趨
dataset = elevatorup2_5;%������ԭʼ����
current_activity = label_elevatorup;
test_feature_elevatorup = [test_feature_elevatorup; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(test_feature_elevatorup,1);
    test_feature_label_elevatorup(i,1) = current_activity;
end

%���ݴ������ȫ�ֲ����趨
dataset = elevatorup2_6;%������ԭʼ����
current_activity = label_elevatorup;
test_feature_elevatorup = [test_feature_elevatorup; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(test_feature_elevatorup,1);
    test_feature_label_elevatorup(i,1) = current_activity;
end

%���ݴ������ȫ�ֲ����趨
dataset = elevatorup2_7;%������ԭʼ����
current_activity = label_elevatorup;
test_feature_elevatorup = [test_feature_elevatorup; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(test_feature_elevatorup,1);
    test_feature_label_elevatorup(i,1) = current_activity;
end

%���ݴ������ȫ�ֲ����趨
dataset = elevatorup2_8;%������ԭʼ����
current_activity = label_elevatorup;
test_feature_elevatorup = [test_feature_elevatorup; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(test_feature_elevatorup,1);
    test_feature_label_elevatorup(i,1) = current_activity;
end

%���ݴ������ȫ�ֲ����趨
dataset = elevatorup2_9;%������ԭʼ����
current_activity = label_elevatorup;
test_feature_elevatorup = [test_feature_elevatorup; cal_features( dataset )];
%���������޸Ĳ���
for i=(label_count+1):size(test_feature_elevatorup,1);
    test_feature_label_elevatorup(i,1) = current_activity;
end

%%
%���ݴ������ȫ�ֲ����趨
dataset = standing2;%������ԭʼ����
current_activity = label_standing;
test_feature_standing = cal_features( dataset );
%���������޸Ĳ���
for i=1:size(test_feature_standing,1);
    test_feature_label_standing(i,1) = current_activity;
end

%%
%���ݴ������ȫ�ֲ����趨
dataset = walking2;%������ԭʼ����
current_activity = label_walking;
test_feature_walking = cal_features( dataset );
%���������޸Ĳ���
for i=1:size(test_feature_walking,1);
    test_feature_label_walking(i,1) = current_activity;
end

%%
%���ݴ������ȫ�ֲ����趨
dataset = sitting2;%������ԭʼ����
current_activity = label_sitting;
test_feature_sitting = cal_features( dataset );
%���������޸Ĳ���
for i=1:size(test_feature_sitting,1);
    test_feature_label_sitting(i,1) = current_activity;
end

%%
%���ݴ������ȫ�ֲ����趨
dataset = lying2;%������ԭʼ����
current_activity = label_lying;
test_feature_lying = cal_features( dataset );
%���������޸Ĳ���
for i=1:size(test_feature_lying,1);
    test_feature_label_lying(i,1) = current_activity;
end

%%
%���ݴ������ȫ�ֲ����趨
dataset = running1;%������ԭʼ����
current_activity = label_running;
test_feature_running = cal_features( dataset );
%���������޸Ĳ���
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

