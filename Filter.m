%%
interval = 20;                   %数据处理间隔，窗口大小设置

%%
%数据均值处理
Data=downstairs;
datasize = size(Data,1);%数据长度
datasize2 =size(Data,2);%矩阵宽度
downstairs_filtering(datasize-interval,datasize2)=(0);%0号节点均值滤波结果
counter = 1;
while counter<=datasize2
    data_col_num = 1;
    while data_col_num<=datasize-interval %对数据集内的每一列数据做处理
        %plot(data_col_num,1,'r');
        downstairs_filtering(data_col_num,counter)=mean(Data(data_col_num:data_col_num+interval,counter));
        data_col_num=data_col_num+1;
    end
    counter=counter+1;
end

%%
%数据均值处理
Data=elevatordown;
datasize = size(Data,1);%数据长度
datasize2 =size(Data,2);%矩阵宽度
elevatordown_filtering(datasize-interval,datasize2)=(0);%0号节点均值滤波结果
counter = 1;
while counter<=datasize2
    data_col_num = 1;
    while data_col_num<=datasize-interval %对数据集内的每一列数据做处理
        %plot(data_col_num,1,'r');
        elevatordown_filtering(data_col_num,counter)=mean(Data(data_col_num:data_col_num+interval,counter));
        data_col_num=data_col_num+1;
    end
    counter=counter+1;
end
%%
%数据均值处理
Data=elevatorup;
datasize = size(Data,1);%数据长度
datasize2 =size(Data,2);%矩阵宽度
elevatorup_filtering(datasize-interval,datasize2)=(0);%0号节点均值滤波结果
counter = 1;
while counter<=datasize2
    data_col_num = 1;
    while data_col_num<=datasize-interval %对数据集内的每一列数据做处理
        %plot(data_col_num,1,'r');
        elevatorup_filtering(data_col_num,counter)=mean(Data(data_col_num:data_col_num+interval,counter));
        data_col_num=data_col_num+1;
    end
    counter=counter+1;
end
%%
%数据均值处理
Data=sitting;
datasize = size(Data,1);%数据长度
datasize2 =size(Data,2);%矩阵宽度
sitting_filtering(datasize-interval,datasize2)=(0);%0号节点均值滤波结果
counter = 1;
while counter<=datasize2
    data_col_num = 1;
    while data_col_num<=datasize-interval %对数据集内的每一列数据做处理
        %plot(data_col_num,1,'r');
        sitting_filtering(data_col_num,counter)=mean(Data(data_col_num:data_col_num+interval,counter));
        data_col_num=data_col_num+1;
    end
    counter=counter+1;
end
%%
%数据均值处理
Data=standing;
datasize = size(Data,1);%数据长度
datasize2 =size(Data,2);%矩阵宽度
standing_filtering(datasize-interval,datasize2)=(0);%0号节点均值滤波结果
counter = 1;
while counter<=datasize2
    data_col_num = 1;
    while data_col_num<=datasize-interval %对数据集内的每一列数据做处理
        %plot(data_col_num,1,'r');
        standing_filtering(data_col_num,counter)=mean(Data(data_col_num:data_col_num+interval,counter));
        data_col_num=data_col_num+1;
    end
    counter=counter+1;
end
%%
%数据均值处理
Data=upstairs;
datasize = size(Data,1);%数据长度
datasize2 =size(Data,2);%矩阵宽度
upstairs_filtering(datasize-interval,datasize2)=(0);%0号节点均值滤波结果
counter = 1;
while counter<=datasize2
    data_col_num = 1;
    while data_col_num<=datasize-interval %对数据集内的每一列数据做处理
        %plot(data_col_num,1,'r');
        upstairs_filtering(data_col_num,counter)=mean(Data(data_col_num:data_col_num+interval,counter));
        data_col_num=data_col_num+1;
    end
    counter=counter+1;
end
%%
%数据均值处理
Data=walking;
datasize = size(Data,1);%数据长度
datasize2 =size(Data,2);%矩阵宽度
walking_filtering(datasize-interval,datasize2)=(0);%0号节点均值滤波结果
counter = 1;
while counter<=datasize2
    data_col_num = 1;
    while data_col_num<=datasize-interval %对数据集内的每一列数据做处理
        %plot(data_col_num,1,'r');
        walking_filtering(data_col_num,counter)=mean(Data(data_col_num:data_col_num+interval,counter));
        data_col_num=data_col_num+1;
    end
    counter=counter+1;
end

clear counter;
clear data_col_num;
clear datasize;
clear datasize2;
clear interval;
clear Data;