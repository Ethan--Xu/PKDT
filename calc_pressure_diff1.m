function [ feature ] = calc_pressure_diff1( pra_dataset )
%UNTITLED5 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
global dataset;
global interval;
for data_col_num=1:10:50%size(pra_dataset,2) %�����ݼ��ڵ�ÿһ������������
    count = 1;
    for i=1:ceil(size(pra_dataset,1)/interval)        
        if i<=floor(size(pra_dataset,1)/interval)
            temp_data = 0;
            for j=1:interval
                temp_data(j,1) = pra_dataset(( (i-1)*interval+j), data_col_num);
            end
%             temp_data = sort(temp_data);
            feature(count,ceil(data_col_num/10)) = temp_data(floor(interval))-temp_data(1);
            count = count + 1;  
        else
%             temp_data = 0;
%             for j=1:( size(pra_dataset,1) - (i-1)*interval )                
%                 temp_data(j,1) = pra_dataset(( (i-1)*interval+j), data_col_num);                
%             end
% %             temp_data = sort(temp_data);
%             feature(count,ceil(data_col_num/10)) = temp_data(floor(( size(pra_dataset,1) - (i-1)*interval )))-temp_data(1);
%             count = count + 1;  
        end 
    end
end

end

