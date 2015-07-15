% global feature_subset_feature_to_temp_id
% global BestFeature_ALL
% global MAX_FEATURE_NUM

clear temp_x temp_r temp_x_id

%��ʼ������������ֻ�зֱ�����������
X = [ BestFeature_ALL{feature_subset_feature_to_temp_id(1)} ];
X_id = [ feature_subset_feature_to_temp_id(1) ];
at = classification(X);
max_classification_rate = at(1,1);
%����MAX_FEATURE_NUM��������
for temp_k = 2:MAX_FEATURE_NUM
    % ����1
    X = [X  BestFeature_ALL{feature_subset_feature_to_temp_id( temp_k )} ];
    X_id = [ X_id feature_subset_feature_to_temp_id(temp_k) ];
    
    %����2
    %������ǰ�����Ӽ���ɸѡ�����޳�ʱ���Դ���Ӱ����С��һ������
    temp_r=0;
    temp_id=0;
    for i=1:size(X_id, 2)
        del_col = size(X_id(i),2); %��ɸѡ������Ӧ��feature����
        if i==1
            pre_col = 0;
            temp_X = X;
            for p=(pre_col+size(BestFeature_ALL{X_id(i)},2)):-1:(pre_col+1)
                temp_X(p)=[];
            end
        else
            pre_col = 0;
            for j=1:(i-1)
                pre_col = pre_col + size(BestFeature_ALL{X_id(j)},2);
            end
            temp_X = X;
            for p=(pre_col+size(BestFeature_ALL{X_id(i)},2)):-1:(pre_col+1)
                temp_X(p)=[];
            end
        end
        tt = classification(temp_X);
        temp_r(i) = tt(1,1);   %ȥ����i����������б𾫶�
        temp_id(i) = X_id(i);  %��i��������Ӧ��id��
        temp_x{i} = temp_X;    %ȥ����i�����������������
        temp_x_id{i} = X_id;   %
        temp_x_id{i}(i) = [];     %ȥ����i����������������кż���ʱ������Ӧid����
    end
    %
    x_r_id = find(temp_r==max(temp_r));
    x_r_id = x_r_id(1);
    t = classification(X);
    if  temp_r(x_r_id) < t(1,1)
        break;
    else
        X = temp_x{x_r_id};
        X_id = temp_x_id{i};
        max_classification_rate = temp_r(x_r_id);
    end
    x_r_id = temp_id(x_r_id);
    
end