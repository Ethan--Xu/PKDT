function [ feature ] = calc_fit_slope( pra_dataset )
%UNTITLED4 此处显示有关此函数的摘要
%   此处显示详细说明
global dataset;
global interval;
x=[1:interval]';
for data_col_num=1:size(pra_dataset,2) %对数据集内的每一列数据做处理
    count = 1;
%     if  data_col_num==1 || data_col_num==11 || data_col_num==21|| data_col_num==31 || data_col_num==41
    %if  data_col_num==2 || data_col_num==3 || data_col_num==4 || data_col_num==12 || data_col_num==13 || data_col_num==14 || data_col_num==22 || data_col_num==23 || data_col_num==24 || data_col_num==32 || data_col_num==33 || data_col_num==34 || data_col_num==42 || data_col_num==43 || data_col_num==44 || data_col_num==7 || data_col_num==5 || data_col_num==6 || data_col_num==17 || data_col_num==15 || data_col_num==16 || data_col_num==27 || data_col_num==25 || data_col_num==26 || data_col_num==37 || data_col_num==35 || data_col_num==36 || data_col_num==47 || data_col_num==45 || data_col_num==46 
    %if  data_col_num==7 || data_col_num==5 || data_col_num==6 || data_col_num==17 || data_col_num==15 || data_col_num==16 || data_col_num==27 || data_col_num==25 || data_col_num==26 || data_col_num==37 || data_col_num==35 || data_col_num==36 || data_col_num==47 || data_col_num==45 || data_col_num==46 
   
        for i=1:ceil(size(pra_dataset,1)/interval)
            if i<=floor(size(pra_dataset,1)/interval)
                p=polyfit(x,pra_dataset( ( (i-1)*interval+1):(i*interval),data_col_num),1);%polyfit(x,y,1)已结线性拟合
                feature(count,data_col_num) = p(1,1);
                count = count + 1;  
            else
    %             p=polyfit(x(1:(size(pra_dataset,1)-(i-1)*interval),1),pra_dataset( ( (i-1)*interval+1):size(pra_dataset,1),data_col_num),1);
    %             feature(count,data_col_num) = p(1,1);
    %             count = count + 1;  
            end 
        end
%     end
end

end

