% global feature_subset_feature_to_temp_id
% global BestFeature_ALL
% global MAX_FEATURE_NUM

total_feature_number = size(BestFeature_ALL,1); %42
dest_num = [1:total_feature_number];
%��ʼ������������ֻ�зֱ�����������

max_classification_rate = 0;

%����MAX_FEATURE_NUM��������
for i=1:MAX_FEATURE_NUM
    %�������п��ܵģ�i���������ɵ����
    possible_combinations = combntns(dest_num,i);
    for j=1:size(possible_combinations,1)
        for p=1:i
            if p==1
                f{i}{j} = [ BestFeature_ALL{possible_combinations(j,p)} ];
                f_id{i}{j} = [ possible_combinations(j,p) ];
            else
                f{i}{j} = [ f{i}{j} BestFeature_ALL{possible_combinations(j,p)} ];
                f_id{i}{j} = [ f_id{i}{j} possible_combinations(j,p) ];
            end
            tt = classification(f{i}{j});
            possible_results{i}(j) = tt(1,1);
        end
    end
end
            
            
          