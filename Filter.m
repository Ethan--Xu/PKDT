%%
interval = 20;                   %���ݴ����������ڴ�С����

%%
%���ݾ�ֵ����
Data=downstairs;
datasize = size(Data,1);%���ݳ���
datasize2 =size(Data,2);%������
downstairs_filtering(datasize-interval,datasize2)=(0);%0�Žڵ��ֵ�˲����
counter = 1;
while counter<=datasize2
    data_col_num = 1;
    while data_col_num<=datasize-interval %�����ݼ��ڵ�ÿһ������������
        %plot(data_col_num,1,'r');
        downstairs_filtering(data_col_num,counter)=mean(Data(data_col_num:data_col_num+interval,counter));
        data_col_num=data_col_num+1;
    end
    counter=counter+1;
end

%%
%���ݾ�ֵ����
Data=elevatordown;
datasize = size(Data,1);%���ݳ���
datasize2 =size(Data,2);%������
elevatordown_filtering(datasize-interval,datasize2)=(0);%0�Žڵ��ֵ�˲����
counter = 1;
while counter<=datasize2
    data_col_num = 1;
    while data_col_num<=datasize-interval %�����ݼ��ڵ�ÿһ������������
        %plot(data_col_num,1,'r');
        elevatordown_filtering(data_col_num,counter)=mean(Data(data_col_num:data_col_num+interval,counter));
        data_col_num=data_col_num+1;
    end
    counter=counter+1;
end
%%
%���ݾ�ֵ����
Data=elevatorup;
datasize = size(Data,1);%���ݳ���
datasize2 =size(Data,2);%������
elevatorup_filtering(datasize-interval,datasize2)=(0);%0�Žڵ��ֵ�˲����
counter = 1;
while counter<=datasize2
    data_col_num = 1;
    while data_col_num<=datasize-interval %�����ݼ��ڵ�ÿһ������������
        %plot(data_col_num,1,'r');
        elevatorup_filtering(data_col_num,counter)=mean(Data(data_col_num:data_col_num+interval,counter));
        data_col_num=data_col_num+1;
    end
    counter=counter+1;
end
%%
%���ݾ�ֵ����
Data=sitting;
datasize = size(Data,1);%���ݳ���
datasize2 =size(Data,2);%������
sitting_filtering(datasize-interval,datasize2)=(0);%0�Žڵ��ֵ�˲����
counter = 1;
while counter<=datasize2
    data_col_num = 1;
    while data_col_num<=datasize-interval %�����ݼ��ڵ�ÿһ������������
        %plot(data_col_num,1,'r');
        sitting_filtering(data_col_num,counter)=mean(Data(data_col_num:data_col_num+interval,counter));
        data_col_num=data_col_num+1;
    end
    counter=counter+1;
end
%%
%���ݾ�ֵ����
Data=standing;
datasize = size(Data,1);%���ݳ���
datasize2 =size(Data,2);%������
standing_filtering(datasize-interval,datasize2)=(0);%0�Žڵ��ֵ�˲����
counter = 1;
while counter<=datasize2
    data_col_num = 1;
    while data_col_num<=datasize-interval %�����ݼ��ڵ�ÿһ������������
        %plot(data_col_num,1,'r');
        standing_filtering(data_col_num,counter)=mean(Data(data_col_num:data_col_num+interval,counter));
        data_col_num=data_col_num+1;
    end
    counter=counter+1;
end
%%
%���ݾ�ֵ����
Data=upstairs;
datasize = size(Data,1);%���ݳ���
datasize2 =size(Data,2);%������
upstairs_filtering(datasize-interval,datasize2)=(0);%0�Žڵ��ֵ�˲����
counter = 1;
while counter<=datasize2
    data_col_num = 1;
    while data_col_num<=datasize-interval %�����ݼ��ڵ�ÿһ������������
        %plot(data_col_num,1,'r');
        upstairs_filtering(data_col_num,counter)=mean(Data(data_col_num:data_col_num+interval,counter));
        data_col_num=data_col_num+1;
    end
    counter=counter+1;
end
%%
%���ݾ�ֵ����
Data=walking;
datasize = size(Data,1);%���ݳ���
datasize2 =size(Data,2);%������
walking_filtering(datasize-interval,datasize2)=(0);%0�Žڵ��ֵ�˲����
counter = 1;
while counter<=datasize2
    data_col_num = 1;
    while data_col_num<=datasize-interval %�����ݼ��ڵ�ÿһ������������
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