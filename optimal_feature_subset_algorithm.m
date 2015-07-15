% global feature_subset_feature_to_temp_id
% global BestFeature_ALL
% global MAX_FEATURE_NUM

clear temp_x temp_r temp_x_id

%初始化特征集合中只有分辨率最大的特征
X = [ BestFeature_ALL{feature_subset_feature_to_temp_id(1)} ];
X_id = [ feature_subset_feature_to_temp_id(1) ];
at = classification(X);
max_classification_rate = at(1,1);
%遍历MAX_FEATURE_NUM所有特征
for temp_k = 2:MAX_FEATURE_NUM
    % 步骤1
    X = [X  BestFeature_ALL{feature_subset_feature_to_temp_id( temp_k )} ];
    X_id = [ X_id feature_subset_feature_to_temp_id(temp_k) ];
    
    %步骤2
    %遍历当前特征子集，筛选当其剔除时，对代价影响最小的一个特征
    temp_r=0;
    temp_id=0;
    for i=1:size(X_id, 2)
        del_col = size(X_id(i),2); %待筛选特征对应的feature列数
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
        temp_r(i) = tt(1,1);   %去掉第i个特征后的判别精度
        temp_id(i) = X_id(i);  %第i个特征对应的id号
        temp_x{i} = temp_X;    %去掉第i个特征后的特征集合
        temp_x_id{i} = X_id;   %
        temp_x_id{i}(i) = [];     %去掉第i个特征后的特征序列号集合时特征对应id集合
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