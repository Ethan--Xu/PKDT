function [ feature ] = calc_min( pra_dataset )
%UNTITLED4 此处显示有关此函数的摘要
%   此处显示详细说明
global dataset;
global interval;

for data_col_num=1:size(pra_dataset,2) %对数据集内的每一列数据做处理
    count = 1;
    for i=1:ceil(size(pra_dataset,1)/interval)
        if i<=floor(size(pra_dataset,1)/interval)
            feature(count,data_col_num) = min( pra_dataset( ( (i-1)*interval+1):(i*interval),data_col_num) );
            count = count + 1;  
        else
            feature(count,data_col_num) = min( pra_dataset( (((i-1)*interval+1):size(pra_dataset,1)) ,data_col_num) );
            count = count + 1;  
        end 
    end
end

end

