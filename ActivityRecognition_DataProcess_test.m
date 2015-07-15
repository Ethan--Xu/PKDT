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
%����������Ҫ�޸ĵĲ���
global dataset;
global interval;
interval = 20;                   %���ݴ����������ڴ�С����

%%
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


% test_feature_label_total = [test_feature_label_elevatorup ;test_feature_label_elevatordown  ;];
% test_feature_total = [test_feature_elevatorup;test_feature_elevatordown;];

%%
%������������
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
% test_feature_total = [test_feature_downstairs; test_feature_upstairs; test_feature_elevatordown; test_feature_elevatorup; test_feature_standing; test_feature_walking; test_feature_sitting��test_feature_ing;];

% test_feature_label_total = [test_feature_label_upstairs ;test_feature_label_elevatorup ;test_feature_label_standing ;test_feature_label_walking ;];%test_feature_label_sitting ;];
% test_feature_total = [test_feature_upstairs; test_feature_elevatorup; test_feature_standing; test_feature_walking;];% test_feature_sitting];

% feature_label_test_total = [feature_label_test_falling; feature_label_test_standing;feature_label_test_running; feature_label_test_jumpping;feature_label_test_walking; ];
% feature_test_total = [feature_test_falling; feature_test_standing;feature_test_running; feature_test_jumpping;feature_test_walking; ];

%%
%���Ѵ���������SVMѵ�������ģ��model
