function [ feature ] = calc_FFT( pra_dataset )
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
global dataset;
global interval;
for data_col_num=5%:10:size(pra_dataset,2) %�����ݼ��ڵ�ÿһ������������
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
feature(count,1) = f(fft_r==m);%����data_col_num==5ʱ������
            count = count + 1;  
        else
%             temp_data = 0;
%             temp_data = [pra_dataset( (((i-1)*interval+1):size(pra_dataset,1)) ,data_col_num) ;zeros(length-size(pra_dataset,1)+((i-1)*interval+1),1)];            
%             feature(count,data_col_num) = max(abs(fft( temp_data )));
%             feature(count,data_col_num) = feature(count-1,data_col_num);  %����һ����Թ�������FFT�����������ݲ�Ϊ����һ��������ͬ�Ľ��
% feature(count,1) = feature(count-1,1);  %����һ����Թ�������FFT�����������ݲ�Ϊ����һ��������ͬ�Ľ��
%             count = count + 1;  
        end 
    end
end

end

