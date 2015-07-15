function [ feature ] = calc_FFT( pra_dataset )
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
global dataset;
global interval;
for data_col_num=5%:10:size(pra_dataset,2) %对数据集内的每一列数据做处理
    count = 1;
    for i=1:ceil(size(pra_dataset,1)/interval)
        length = 2^nextpow2(interval);
        if i<=floor(size(pra_dataset,1)/interval)
            temp_data = 0;
            temp_data = [pra_dataset( ( (i-1)*interval+1):(i*interval),data_col_num) ;zeros(length-interval,1)];           
%             feature(count,data_col_num) = max(abs(fft( temp_data )));
fs=1;
n=0:(length-1);
fft_r = abs(fft( temp_data, length));
f=n*fs/length;
m = max(f);
feature(count,1) = f(fft_r==m);%仅当data_col_num==5时测试用
            count = count + 1;  
        else
%             temp_data = 0;
%             temp_data = [pra_dataset( (((i-1)*interval+1):size(pra_dataset,1)) ,data_col_num) ;zeros(length-size(pra_dataset,1)+((i-1)*interval+1),1)];            
%             feature(count,data_col_num) = max(abs(fft( temp_data )));
%             feature(count,data_col_num) = feature(count-1,data_col_num);  %余下一项不足以构建计算FFT，将本组数据补为和上一组数据相同的结果
% feature(count,1) = feature(count-1,1);  %余下一项不足以构建计算FFT，将本组数据补为和上一组数据相同的结果
%             count = count + 1;  
        end 
    end
end

end

