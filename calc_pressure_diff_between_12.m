function [ feature ] = calc_pressure_diff_between_12( pra_dataset )
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明

global dataset;
global interval;
%%
%Notes：
%计算传感器0和1的气压差值，不需要对每一列遍历。
%用0和1号气压传感器在interval区间的均值的差值，表征这一特征。

for i=1:ceil(size(pra_dataset,1)/interval)
    if i<=floor(size(pra_dataset,1)/interval)
        pressure_pre = mean( pra_dataset( ( (i-1)*interval+1):(i*interval),11) );   %0号气压传感器均值
        pressure_post = mean( pra_dataset( ( (i-1)*interval+1):(i*interval),21) ); %1号气压传感器均值
        
        feature(i,1) = pressure_pre - pressure_post;
    else
%         pressure_pre = mean( pra_dataset( (((i-1)*interval+1):size(pra_dataset,1)) ,1) );
%         pressure_post = mean( pra_dataset( (((i-1)*interval+1):size(pra_dataset,1)) ,31) );
%         
%         feature(i,1) = pressure_pre - pressure_post;
    end
end

end

