function [ feature ] = calc_pressure_diff_between_12( pra_dataset )
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��

global dataset;
global interval;
%%
%Notes��
%���㴫����0��1����ѹ��ֵ������Ҫ��ÿһ�б�����
%��0��1����ѹ��������interval����ľ�ֵ�Ĳ�ֵ��������һ������

for i=1:ceil(size(pra_dataset,1)/interval)
    if i<=floor(size(pra_dataset,1)/interval)
        pressure_pre = mean( pra_dataset( ( (i-1)*interval+1):(i*interval),11) );   %0����ѹ��������ֵ
        pressure_post = mean( pra_dataset( ( (i-1)*interval+1):(i*interval),21) ); %1����ѹ��������ֵ
        
        feature(i,1) = pressure_pre - pressure_post;
    else
%         pressure_pre = mean( pra_dataset( (((i-1)*interval+1):size(pra_dataset,1)) ,1) );
%         pressure_post = mean( pra_dataset( (((i-1)*interval+1):size(pra_dataset,1)) ,31) );
%         
%         feature(i,1) = pressure_pre - pressure_post;
    end
end

end

