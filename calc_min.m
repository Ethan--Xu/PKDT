function [ feature ] = calc_min( pra_dataset )
%UNTITLED4 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
global dataset;
global interval;

for data_col_num=1:size(pra_dataset,2) %�����ݼ��ڵ�ÿһ������������
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

