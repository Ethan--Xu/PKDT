function [ feature ] = calc_pressure_diff3( pra_dataset )
%UNTITLED7 此处显示有关此函数的摘要
%   此处显示详细说明
global dataset;
global interval;
for data_col_num=1:10:size(pra_dataset,2) %对数据集内的每一列数据做处理
    count = 1;
    for i=1:ceil(size(pra_dataset,1)/interval)        
        if i<=floor(size(pra_dataset,1)/interval)
            temp_data = 0;
            for j=1:interval
                temp_data(j,1) = pra_dataset(( (i-1)*interval+j), data_col_num);
            end
%             temp_data = sort(temp_data);
            feature(count,ceil(data_col_num/10)) = temp_data(floor(interval))-temp_data(floor(interval*0.5));
            count = count + 1;  
        else
%             temp_data = 0;
%             for j=1:( size(pra_dataset,1) - (i-1)*interval )                
%                 temp_data(j,1) = pra_dataset(( (i-1)*interval+j), data_col_num);                
%             end
% %             temp_data = sort(temp_data);
%             feature(count,ceil(data_col_num/10)) = temp_data(floor(( size(pra_dataset,1) - (i-1)*interval )))-temp_data(floor(( size(pra_dataset,1) - (i-1)*interval ) *0.5));
%             count = count + 1;  
        end 
    end
end

end

