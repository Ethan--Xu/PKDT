function [ feature ] = calc_peak2peak_value( pra_dataset )
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
global dataset;
global interval;
for data_col_num=1:size(pra_dataset,2) %�����ݼ��ڵ�ÿһ������������
    count = 1;
    
    %if  data_col_num==1 || data_col_num==11 || data_col_num==21 ||data_col_num==31 || data_col_num==41
    % if  data_col_num==2 || data_col_num==3 || data_col_num==4 || data_col_num==12 || data_col_num==13 || data_col_num==14 || data_col_num==22 || data_col_num==23 || data_col_num==24 || data_col_num==32 || data_col_num==33 || data_col_num==34 || data_col_num==42 || data_col_num==43 || data_col_num==44 
    %if  data_col_num==7 || data_col_num==5 || data_col_num==6 || data_col_num==17 || data_col_num==15 || data_col_num==16 || data_col_num==27 || data_col_num==25 || data_col_num==26 || data_col_num==37 || data_col_num==35 || data_col_num==36 || data_col_num==47 || data_col_num==45 || data_col_num==46 
%     if  data_col_num==1 || data_col_num==11 || data_col_num==21 ||data_col_num==31 || data_col_num==41 || data_col_num==7 || data_col_num==5 || data_col_num==6 || data_col_num==17 || data_col_num==15 || data_col_num==16 || data_col_num==27 || data_col_num==25 || data_col_num==26 || data_col_num==37 || data_col_num==35 || data_col_num==36 || data_col_num==47 || data_col_num==45 || data_col_num==46 || data_col_num==2 || data_col_num==3 || data_col_num==4 || data_col_num==12 || data_col_num==13 || data_col_num==14 || data_col_num==22 || data_col_num==23 || data_col_num==24 || data_col_num==32 || data_col_num==33 || data_col_num==34 || data_col_num==42 || data_col_num==43 || data_col_num==44 
           
        for i=1:ceil(size(pra_dataset,1)/interval)        
            if i<=floor(size(pra_dataset,1)/interval)
                max = pra_dataset(( (i-1)*interval+1), data_col_num);
                min = pra_dataset(( (i-1)*interval+1), data_col_num);
                for j=1:interval
                    if pra_dataset( ( (i-1)*interval+j),data_col_num) > max
                        max = pra_dataset( ( (i-1)*interval+j),data_col_num);
                    end
                    if pra_dataset( ( (i-1)*interval+j),data_col_num) < min
                        min = pra_dataset( ( (i-1)*interval+j),data_col_num);
                    end
                end
                feature(count,data_col_num) = max - min;
                count = count + 1;  
            else
    %             max = pra_dataset(( (i-1)*interval+1), data_col_num);
    %             min = pra_dataset(( (i-1)*interval+1), data_col_num);
    %             
    %             for j=1:( size(pra_dataset,1) - (i-1)*interval )
    %                 if pra_dataset( ( (i-1)*interval+j),data_col_num) > max
    %                     max = pra_dataset( ( (i-1)*interval+j),data_col_num);
    %                 end
    %                 if pra_dataset( ( (i-1)*interval+j),data_col_num) < min
    %                     min = pra_dataset( ( (i-1)*interval+j),data_col_num);
    %                 end
    %             end
    %             feature(count,data_col_num) = max - min;
    %             count = count + 1;  
            end 
        end
%     end
end

end

