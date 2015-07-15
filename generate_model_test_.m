clear all
load ('I:\git bar\Activity Recognition\Dataset_20150407 - update.mat');
tic
%%Label Map
label_downstairs    = 1;
label_upstairs      = 2;
label_elevatordown  = 1;
label_elevatorup    = 2;
label_standing      = 3;
label_walking       = 3;
label_sitting       = 3;

global distribute_rate;

%建模数据与测试数据比例：model/(model+test)
distribute_rate = 0.4;

dataset = downstairs;
for data_row_num=1:floor((size(dataset,1)*distribute_rate))
    for data_col_num=1:size(dataset,2)
        model_downstairs(data_row_num,data_col_num) = dataset(data_row_num,data_col_num);
    end
end
for data_row_num=1:(size(dataset,1)-floor((size(dataset,1)*distribute_rate)))
    for data_col_num=1:size(dataset,2)
        test_downstairs(data_row_num,data_col_num) = dataset(data_row_num+floor((size(dataset,1)*distribute_rate)),data_col_num);
    end
end

dataset = upstairs;
for data_row_num=1:floor((size(dataset,1)*distribute_rate))
    for data_col_num=1:size(dataset,2)
        model_upstairs(data_row_num,data_col_num) = dataset(data_row_num,data_col_num);
    end
end
for data_row_num=1:(size(dataset,1)-floor((size(dataset,1)*distribute_rate)))
    for data_col_num=1:size(dataset,2)
        test_upstairs(data_row_num,data_col_num) = dataset(data_row_num+floor((size(dataset,1)*distribute_rate)),data_col_num);
    end
end

dataset = elevatordown;
for data_row_num=1:floor((size(dataset,1)*distribute_rate))
    for data_col_num=1:size(dataset,2)
        model_elevatordown(data_row_num,data_col_num) = dataset(data_row_num,data_col_num);
    end
end
for data_row_num=1:(size(dataset,1)-floor((size(dataset,1)*distribute_rate)))
    for data_col_num=1:size(dataset,2)
        test_elevatordown(data_row_num,data_col_num) = dataset(data_row_num+floor((size(dataset,1)*distribute_rate)),data_col_num);
    end
end

dataset = elevatorup;
for data_row_num=1:floor((size(dataset,1)*distribute_rate))
    for data_col_num=1:size(dataset,2)
        model_elevatorup(data_row_num,data_col_num) = dataset(data_row_num,data_col_num);
    end
end
for data_row_num=1:(size(dataset,1)-floor((size(dataset,1)*distribute_rate)))
    for data_col_num=1:size(dataset,2)
        test_elevatorup(data_row_num,data_col_num) = dataset(data_row_num+floor((size(dataset,1)*distribute_rate)),data_col_num);
    end
end

dataset = standing;
for data_row_num=1:floor((size(dataset,1)*distribute_rate))
    for data_col_num=1:size(dataset,2)
        model_standing(data_row_num,data_col_num) = dataset(data_row_num,data_col_num);
    end
end
for data_row_num=1:(size(dataset,1)-floor((size(dataset,1)*distribute_rate)))
    for data_col_num=1:size(dataset,2)
        test_standing(data_row_num,data_col_num) = dataset(data_row_num+floor((size(dataset,1)*distribute_rate)),data_col_num);
    end
end

dataset = walking;
for data_row_num=1:floor((size(dataset,1)*distribute_rate))
    for data_col_num=1:size(dataset,2)
        model_walking(data_row_num,data_col_num) = dataset(data_row_num,data_col_num);
    end
end
for data_row_num=1:(size(dataset,1)-floor((size(dataset,1)*distribute_rate)))
    for data_col_num=1:size(dataset,2)
        test_walking(data_row_num,data_col_num) = dataset(data_row_num+floor((size(dataset,1)*distribute_rate)),data_col_num);
    end
end

dataset = sitting;
for data_row_num=1:floor((size(dataset,1)*distribute_rate))
    for data_col_num=1:size(dataset,2)
        model_sitting(data_row_num,data_col_num) = dataset(data_row_num,data_col_num);
    end
end
for data_row_num=1:(size(dataset,1)-floor((size(dataset,1)*distribute_rate)))
    for data_col_num=1:size(dataset,2)
        test_sitting(data_row_num,data_col_num) = dataset(data_row_num+floor((size(dataset,1)*distribute_rate)),data_col_num);
    end
end

toc