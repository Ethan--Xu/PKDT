function [ feature ] = calc_cov( pra_dataset )
%UNTITLED4 此处显示有关此函数的摘要
%   此处显示详细说明
global dataset;
global interval;
temp(2,2)=0;
for data_col_num=1:(size(pra_dataset,2)/10) %每10列数据，即每个节点循环一次
    for j=0:2       %每个节点有三组三轴的数据
        count = 1;
        for i=1:ceil(size(pra_dataset,1)/interval)
            if i<=floor(size(pra_dataset,1)/interval)
                temp = cov( pra_dataset( ( (i-1)*interval+1):(i*interval),(data_col_num-1)*10+j*3+2:(data_col_num-1)*10+j*3+3) );
                feature(count,(data_col_num-1)*9+j*3+1) = temp(1,2);
                temp =  cov( pra_dataset( ( (i-1)*interval+1):(i*interval),(data_col_num-1)*10+j*3+3:(data_col_num-1)*10+j*3+4) );
                feature(count,(data_col_num-1)*9+j*3+2) =temp(1,2);
                temp =  cov( pra_dataset( ( (i-1)*interval+1):(i*interval),(data_col_num-1)*10+j*3+4), pra_dataset( ( (i-1)*interval+1):(i*interval),(data_col_num-1)*10+j*3+2) );
                feature(count,(data_col_num-1)*9+j*3+3) = temp(1,2);
                count = count + 1;  
            else
                temp = cov( pra_dataset( ( (i-1)*interval+1):size(pra_dataset,1),(data_col_num-1)*10+j*3+2:(data_col_num-1)*10+j*3+3) );
                feature(count,(data_col_num-1)*9+j*3+1) = temp(1,2);
                temp =  cov( pra_dataset( ( (i-1)*interval+1):size(pra_dataset,1),(data_col_num-1)*10+j*3+3:(data_col_num-1)*10+j*3+4) );
                feature(count,(data_col_num-1)*9+j*3+2) =temp(1,2);
                temp =  cov( pra_dataset( ( (i-1)*interval+1):size(pra_dataset,1),(data_col_num-1)*10+j*3+4), pra_dataset( ( (i-1)*interval+1):size(pra_dataset,1),(data_col_num-1)*10+j*3+2) );
                feature(count,(data_col_num-1)*9+j*3+3) = temp(1,2);
                count = count + 1;  
            end 
        end
    end
end

end

