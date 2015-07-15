function [ b_cross_validation_result ] = test( n )
clc
close all


%%

mean_acce_total                      = [51:55];
mean_gyro_total                      = [56:60];
mean_acce                            = [2:4, 12:14, 22:24, 32:34, 42:44];
mean_gyro                            = [5:7, 15:17, 25:27, 35:37, 45:47];
mean_pressure                        = [1, 11, 21, 31, 41];
MEAN                                 = [mean_acce_total mean_gyro_total mean_acce mean_gyro mean_pressure];

var_acce_total                       = [116:120];
var_gyro_total                       = [121:125];
var_acce                             = [67:69, 77:79, 87:89, 97:99, 107:109];
var_gyro                             = [70:72, 80:82, 90:92, 100:102, 110:112];
var_pressure                         = [66, 76, 86, 96, 106];
VAR                                  = [var_acce_total var_gyro_total var_acce var_gyro var_pressure];

mean_crossing_rate_acce_total        = [181:185];
mean_crossing_rate_gyro_total        = [186:190];
mean_crossing_rate_acce              = [132:134, 142:144, 152:154, 162:164, 172:174];
mean_crossing_rate_gyro              = [135:137, 145:147, 155:157, 165:167, 175:177];
mean_crossing_rate_pressure          = [131, 141, 151, 161, 171];
MEAN_CROSSING_RATE                   = [mean_crossing_rate_acce_total mean_crossing_rate_gyro_total mean_crossing_rate_acce mean_crossing_rate_gyro mean_crossing_rate_pressure];

interquartile_range_acce_total       = [246:250];
interquartile_range_gyro_total       = [251:255];
interquartile_range_acce             = [197:199, 207:209, 217:219, 227:229, 237:239];
interquartile_range_gyro             = [200:202, 210:212, 220:222, 230:230, 240:242];
interquartile_range_pressure         = [196, 206, 216, 226, 236];
INTERQUARTILE_RANGE                  = [interquartile_range_acce_total interquartile_range_gyro_total interquartile_range_acce interquartile_range_gyro interquartile_range_pressure];

peak2peak_value_acce_total           = [311:315];
peak2peak_value_gyro_total           = [316:320];
peak2peak_value_acce                 = [262:264, 272:274, 282:284, 292:294, 302:304];
peak2peak_value_gyro                 = [265:267, 275:277, 285:287, 295:297, 305:307];
peak2peak_value_pressure             = [261, 271, 281, 291, 301];
PEAK2PEAK_VALUE                      = [peak2peak_value_acce_total peak2peak_value_gyro_total peak2peak_value_acce peak2peak_value_gyro peak2peak_value_pressure];

median_acce_total                    = [376:380];
median_gyro_total                    = [381:385];
median_acce                          = [327:329, 337:339, 347:349. 357:359, 367:369];
median_gyro                          = [330:332, 340:342, 350:352, 360:362, 370:372];
median_pressure                      = [326, 336, 346, 356, 366];
MEDIAN                               = [median_acce_total median_gyro_total median_acce median_gyro median_pressure];

fit_slope_acce_total                 = [441:445];
fit_slope_gyro_total                 = [446:450];
fit_slope_acce                       = [392:394, 402:404, 412:414, 422:424, 432:434];
fit_slope_gyro                       = [395:397, 405:407, 415:417, 425:427, 435:437];
fit_slope_pressure                   = [391, 401, 411, 421, 431];
FIT_SLOPE                            = [fit_slope_acce_total fit_slope_gyro_total fit_slope_acce fit_slope_gyro fit_slope_pressure];

RMS_acce_total                       = [506:510];
RMS_gyro_total                       = [511:515];
RMS_acce                             = [457:459, 467:469, 477:479, 487:489, 497:499];
RMS_gyro                             = [460:462, 470:472, 480:482, 490:492, 500:502];
RMS_pressure                         = [456, 466, 476, 486, 496];
RMS                                  = [RMS_acce_total RMS_gyro_total RMS_acce RMS_gyro RMS_pressure];

pressure_diff1_pressure              = [521:525];

feature_pressure_diff_between_03     = [526];

% BestFeature = [ peak2peak_value_acce peak2peak_value_acce_total
%     ];

BestFeature_ALL={mean_acce_total
    mean_gyro_total
    mean_acce
    mean_gyro
    mean_pressure
%     MEAN
    var_acce_total
    var_gyro_total
    var_acce
    var_gyro
    var_pressure
%     VAR
    mean_crossing_rate_acce_total
    mean_crossing_rate_gyro_total
    mean_crossing_rate_acce
    mean_crossing_rate_gyro
    mean_crossing_rate_pressure
%     MEAN_CROSSING_RATE
    interquartile_range_acce_total
    interquartile_range_gyro_total
    interquartile_range_acce
    interquartile_range_gyro
    interquartile_range_pressure
%     INTERQUARTILE_RANGE
    peak2peak_value_acce_total
    peak2peak_value_gyro_total
    peak2peak_value_acce
    peak2peak_value_gyro
    peak2peak_value_pressure
%     PEAK2PEAK_VALUE
    median_acce_total
    median_gyro_total
    median_acce
    median_gyro
    median_pressure
%     MEDIAN
    fit_slope_acce_total
    fit_slope_gyro_total
    fit_slope_acce
    fit_slope_gyro
    fit_slope_pressure
%     FIT_SLOPE
    RMS_acce_total
    RMS_gyro_total
    RMS_acce
    RMS_gyro
    RMS_pressure
%     RMS
    pressure_diff1_pressure
    feature_pressure_diff_between_03
    };
    %%
    label_elevatorup    = 1;
    label_upstairs      = 2;
    label_elevatordown  = 3;
    label_downstairs    = 4;
    label_walking       = 5;
    label_standing      = 6;
    label_lying         = 7;
    label_sitting       = 8;

    %%
    label_move       = 1;   %动静分级
    label_static     = 6;

    label_updown     = 1;   %水平和上下分级
    label_horizontal = 5;

    label_up         = 1;   %上和下分级
    label_down       = 3;



    %% 分级结果
    Level_zero  = 407;
    Level_one   = 408;
    Level_two   = 409;
    Level_three = 410;
    Level_four  = 411;
    %% K阶交叉验证
    k = 10;
% n = 1;
% for n = 1:k
    %%  
    feature_elevatorup      = [feature_elevatorup(1:195,:)  ;test_feature_elevatorup(1:185,:)  ;];
    feature_upstairs        = [feature_upstairs(1:310,:)  ;test_feature_upstairs(1:310,:)  ;];
    feature_elevatordown    = [feature_elevatordown(1:201,:)  ;test_feature_elevatordown(1:239,:)  ;];
    feature_downstairs      = [feature_downstairs(1:350,:)  ;test_feature_downstairs(1:350,:)  ;];
    feature_walking         = [feature_walking(1:415,:)  ;test_feature_walking(1:415,:)  ;];
    feature_standing        = [feature_standing(1:460,:)  ;test_feature_standing(1:460,:)  ;];
    feature_lying           = [feature_lying(1:290,:)  ;test_feature_lying(1:460,:)  ;];
    %A(2,:)=[];

    %% 各个姿态训练和测试的总个数
    DataSizeElevatorup_total       = size(feature_elevatorup,1);
    DataSizeUpstairs_total         = size(feature_upstairs,1);
    DataSizeElevatordown_total 	   = size(feature_elevatordown,1);
    DataSizeDownstairs_total       = size(feature_downstairs,1);
    DataSizeWalking_total          = size(feature_walking,1);
    DataSizeStanding_total         = size(feature_standing,1);
    DataSizeLying_total            = size(feature_lying,1);

    %% 各个姿态训练用于个数
    DataSizeElevatorup      = DataSizeElevatorup_total - DataSizeElevatorup_total/k;
    DataSizeUpstairs        = DataSizeUpstairs_total - DataSizeUpstairs_total/k;
    DataSizeElevatordown	= DataSizeElevatordown_total - DataSizeElevatordown_total/k;
    DataSizeDownstairs      = DataSizeDownstairs_total - DataSizeDownstairs_total/k;
    DataSizeWalking         = DataSizeWalking_total - DataSizeWalking_total/k;
    DataSizeStanding        = DataSizeStanding_total - DataSizeStanding_total/k;
    DataSizeLying           = DataSizeLying_total - DataSizeLying_total/k;
    %% 各个姿态测试用于个数
    test_DataSizeElevatorup      = DataSizeElevatorup_total - DataSizeElevatorup;
    test_DataSizeUpstairs        = DataSizeUpstairs_total - DataSizeUpstairs;
    test_DataSizeElevatordown	= DataSizeElevatordown_total - DataSizeElevatordown;
    test_DataSizeDownstairs      = DataSizeDownstairs_total - DataSizeDownstairs;
    test_DataSizeWalking         = DataSizeWalking_total - DataSizeWalking;
    test_DataSizeStanding        = DataSizeStanding_total - DataSizeStanding;
    test_DataSizeLying           = DataSizeLying_total - DataSizeLying;
    %% 用于测试的数据
    test_feature_elevatorup     = feature_elevatorup(DataSizeElevatorup_total/k*(n-1)+1:DataSizeElevatorup_total/k*n,:);
    test_feature_upstairs       = feature_upstairs(DataSizeUpstairs_total/k*(n-1)+1:DataSizeUpstairs_total/k*n,:);
    test_feature_elevatordown   = feature_elevatordown(DataSizeElevatordown_total/k*(n-1)+1:DataSizeElevatordown_total/k*n,:);
    test_feature_downstairs     = feature_downstairs(DataSizeDownstairs_total/k*(n-1)+1:DataSizeDownstairs_total/k*n,:);
    test_feature_walking        = feature_walking(DataSizeWalking_total/k*(n-1)+1:DataSizeWalking_total/k*n,:);
    test_feature_standing       = feature_standing(DataSizeStanding_total/k*(n-1)+1:DataSizeStanding_total/k*n,:);
    test_feature_lying          = feature_lying(DataSizeLying_total/k*(n-1)+1:DataSizeLying_total/k*n,:);

    %% 用于训练的数据，从所有的数据中取出用于测试的数据
    feature_elevatorup(DataSizeElevatorup_total/k*(n-1)+1:DataSizeElevatorup_total/k*n,:)=[];
    feature_upstairs(DataSizeUpstairs_total/k*(n-1)+1:DataSizeUpstairs_total/k*n,:)=[];
    feature_elevatordown(DataSizeElevatordown_total/k*(n-1)+1:DataSizeElevatordown_total/k*n,:)=[];
    feature_downstairs(DataSizeDownstairs_total/k*(n-1)+1:DataSizeDownstairs_total/k*n,:)=[];
    feature_walking(DataSizeWalking_total/k*(n-1)+1:DataSizeWalking_total/k*n,:)=[];
    feature_standing(DataSizeStanding_total/k*(n-1)+1:DataSizeStanding_total/k*n,:)=[];
    feature_lying(DataSizeLying_total/k*(n-1)+1:DataSizeLying_total/k*n,:)=[];
    %%
    clear test_feature_label_elevatorup  test_feature_label_upstairs  test_feature_label_elevatordown  test_feature_label_downstairs  test_feature_label_walking  test_feature_label_standing   test_feature_label_lying
    test_feature_label_elevatorup(1:DataSizeElevatorup_total/k,:)       = [label_elevatorup] ;
    test_feature_label_upstairs(1:DataSizeUpstairs_total/k,:)           = [label_upstairs] ;
    test_feature_label_elevatordown(1:DataSizeElevatordown_total/k,:)   = [label_elevatordown] ;
    test_feature_label_downstairs(1:DataSizeDownstairs_total/k,:)       = [label_downstairs] ;
    test_feature_label_walking(1:DataSizeWalking_total/k,:)             = [label_walking] ;
    test_feature_label_standing(1:DataSizeStanding_total/k,:)           = [label_standing] ;
    test_feature_label_lying(1:DataSizeLying_total/k,:)                 = [label_lying] ;

    %%
    test_total_label = [test_feature_label_elevatorup  ;test_feature_label_upstairs  ;test_feature_label_elevatordown  ;test_feature_label_downstairs  ;test_feature_label_walking  ;test_feature_label_standing  ;test_feature_label_lying  ;];
    test_total_feature = [test_feature_elevatorup  ;test_feature_upstairs  ;test_feature_elevatordown  ;test_feature_downstairs  ;test_feature_walking  ;test_feature_standing  ;test_feature_lying  ;];
    test_totalLabelFeature = [test_total_feature  test_total_label];

    %%  第一级 动静分级
    model_feature_label_move(1:( DataSizeElevatorup + DataSizeUpstairs + DataSizeElevatordown + DataSizeDownstairs + DataSizeWalking),1) = [label_move];
    model_feature_label_static(1:( DataSizeStanding + DataSizeLying),1) = [label_static];
    model_feature_label_total = [model_feature_label_move  ;model_feature_label_static  ;];
    BestFeature = [interquartile_range_acce   peak2peak_value_pressure   peak2peak_value_acce];
    model_feature_total = [feature_elevatorup(1:DataSizeElevatorup,BestFeature)  ;feature_upstairs(1:DataSizeUpstairs,BestFeature)  ;feature_elevatordown(1:DataSizeElevatordown,BestFeature)  ;feature_downstairs(1:DataSizeDownstairs,BestFeature)  ;feature_walking(1:DataSizeWalking,BestFeature)  ;feature_standing(1:DataSizeStanding,BestFeature)  ;feature_lying(1:DataSizeLying,BestFeature)  ;];

    test_feature_label_move(1:( test_DataSizeElevatorup + test_DataSizeUpstairs + test_DataSizeElevatordown + test_DataSizeDownstairs + test_DataSizeWalking),1) = [label_move];
    test_feature_label_static(1:( test_DataSizeStanding + test_DataSizeLying),1) = [label_static];
    test_feature_label_total = [test_feature_label_move  ;test_feature_label_static  ;];
    test_feature_total = [test_feature_elevatorup(1:test_DataSizeElevatorup,BestFeature)  ;test_feature_upstairs(1:test_DataSizeUpstairs,BestFeature)  ;test_feature_elevatordown(1:test_DataSizeElevatordown,BestFeature)  ;test_feature_downstairs(1:test_DataSizeDownstairs,BestFeature)  ;test_feature_walking(1:test_DataSizeWalking,BestFeature)  ;test_feature_standing(1:test_DataSizeStanding,BestFeature)  ;test_feature_lying(1:test_DataSizeLying,BestFeature)  ;];
    model=svmtrain(model_feature_label_total,     model_feature_total,'-b 1');
    [label, b_cross_validation_result(:,1),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model,'-b 1');
    
    test_totalLabelFeature = [test_totalLabelFeature  label];
    test_totalLabelFeature = sortrows(test_totalLabelFeature,Level_one);
    
    test_feature_label_total(test_feature_label_total==label_move) = 1;
    test_feature_label_total(test_feature_label_total==label_static) = 0;
    [X,Y,THRE,AUC] = perfcurve(test_feature_label_total,decision_values(:,1),'1');
    AUC
    plot(X,Y,'b');hold on;
    %%  第二级 上下与水平分级
    model_feature_label_updown(1:( DataSizeElevatorup + DataSizeUpstairs + DataSizeElevatordown + DataSizeDownstairs),1) = [label_updown];
    model_feature_label_horizontal(1:( DataSizeWalking ),1) = [label_horizontal ];
    model_feature_label_total = [model_feature_label_updown  ;model_feature_label_horizontal  ;];
    BestFeature = [peak2peak_value_pressure   peak2peak_value_acce   pressure_diff1_pressure   var_pressure   interquartile_range_pressure ];
    model_feature_total = [feature_elevatorup(1:DataSizeElevatorup,BestFeature)  ;feature_upstairs(1:DataSizeUpstairs,BestFeature)  ;feature_elevatordown(1:DataSizeElevatordown,BestFeature)  ;feature_downstairs(1:DataSizeDownstairs,BestFeature)  ;feature_walking(1:DataSizeWalking,BestFeature)  ;];

    test_move_totalDataSize = numel(find(test_totalLabelFeature(:,Level_one)==label_move));%参加上下与水平分级的总测试数据量
    test_updownDataSize = numel(find(test_totalLabelFeature(1:test_move_totalDataSize,Level_zero)==1)) + numel(find(test_totalLabelFeature(1:test_move_totalDataSize,Level_zero)==2)) + numel(find(test_totalLabelFeature(1:test_move_totalDataSize,Level_zero)==3)) + numel(find(test_totalLabelFeature(1:test_move_totalDataSize,Level_zero)==4)) ;
    %test_updownDataSize为上下分几种参加测试上下楼的数据量
    test_feature_label_updown(1:(test_updownDataSize),1) = [label_updown];
    test_feature_label_horizontal(1:(test_move_totalDataSize - test_updownDataSize),1) = [label_horizontal];
    test_feature_label_total = [test_feature_label_updown  ;test_feature_label_horizontal  ;];
    test_feature_total = [test_totalLabelFeature(1:test_move_totalDataSize,BestFeature)  ;];
    model=svmtrain(model_feature_label_total,     model_feature_total,'-b 1');
    [label, b_cross_validation_result(:,2),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model,'-b 1');
    test_totalLabelFeature(1:test_move_totalDataSize,Level_two) = [label];
    test_totalLabelFeature(1:test_move_totalDataSize,1:Level_two) = sortrows(test_totalLabelFeature(1:test_move_totalDataSize,1:Level_two),Level_two);
    test_feature_label_total(test_feature_label_total==label_updown) = 1;
    test_feature_label_total(test_feature_label_total==label_horizontal) = 0;
    [X,Y,THRE,AUC] = perfcurve(test_feature_label_total,decision_values(:,1),'1');
    AUC
    plot(X,Y,'r');
    %%第二级  站和躺分级
    clear model_feature_label_standing   model_feature_label_lying   model_feature_label_total  BestFeature   model_feature_total;
    model_feature_label_standing(1:( DataSizeStanding),1) = [label_standing];
    model_feature_label_lying(1:( DataSizeLying ),1) = [label_lying ];
    model_feature_label_total = [model_feature_label_standing  ;model_feature_label_lying  ;];
    BestFeature = [pressure_diff_between03  pressure_diff1_pressure];
    model_feature_total = [feature_standing(1:DataSizeStanding,BestFeature)  ;feature_lying(1:DataSizeLying,BestFeature)  ;];

    clear test_feature_label_standing   test_feature_label_lying   test_feature_label_total   test_feature_total;
    test_static_totalDataSize = numel(find(test_totalLabelFeature(:,Level_one)==label_static));%为站和躺分级参加测试数据量
    test_lyingDataSize = numel(find(test_totalLabelFeature(test_move_totalDataSize+1:test_move_totalDataSize+test_static_totalDataSize,Level_zero)==label_lying)) ;
    %test_lyingDataSize为站和躺分级参加测试躺着的数据量
    test_feature_label_standing(1:(test_static_totalDataSize - test_lyingDataSize),1) = [label_standing];
    test_feature_label_lying(1:(test_lyingDataSize),1) = [label_lying];
    test_feature_label_total = [test_feature_label_standing   ;test_feature_label_lying];
    test_feature_total = [test_totalLabelFeature(test_move_totalDataSize+1:test_move_totalDataSize+test_static_totalDataSize,BestFeature)  ;];
    model=svmtrain(model_feature_label_total,     model_feature_total,'-b 1');
    [label, b_cross_validation_result(:,3),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model,'-b 1');
    test_totalLabelFeature(test_move_totalDataSize+1:test_move_totalDataSize+test_static_totalDataSize,Level_two) = [label];
    test_totalLabelFeature(test_move_totalDataSize+1:test_move_totalDataSize+test_static_totalDataSize,1:Level_two) = sortrows(test_totalLabelFeature(test_move_totalDataSize+1:test_move_totalDataSize+test_static_totalDataSize,1:Level_two),Level_two);
    test_feature_label_total(test_feature_label_total==label_standing) = 1;
    test_feature_label_total(test_feature_label_total==label_lying) = 0;
    [X,Y,THRE,AUC] = perfcurve(test_feature_label_total,decision_values(:,1),'1');
    AUC
    plot(X,Y,'g');
    %% 第三级 上下分级
    clear model_feature_label_up   model_feature_label_down   model_feature_label_total   BestFeature   model_feature_total
    model_feature_label_up(1:( DataSizeElevatorup + DataSizeUpstairs ),1) = [label_up];
    model_feature_label_down(1:( DataSizeElevatordown + DataSizeDownstairs ),1) = [label_down ];
    model_feature_label_total = [model_feature_label_up  ;model_feature_label_down  ;];
    BestFeature = [ pressure_diff1_pressure     ];% pressure_diff1_pressure   fit_slope_pressure   peak2peak_value_acce    median_acce
    model_feature_total = [feature_elevatorup(1:DataSizeElevatorup,BestFeature)  ;feature_upstairs(1:DataSizeUpstairs,BestFeature)  ;feature_elevatordown(1:DataSizeElevatordown,BestFeature)  ;feature_downstairs(1:DataSizeDownstairs,BestFeature)  ;];

    clear test_feature_label_up   test_feature_label_down   test_feature_label_total   test_feature_total
    test_updown_totalDataSize = numel(find(test_totalLabelFeature(:,Level_two)==label_updown));%参加上下分级的总测试数据量
    test_upDataSize = numel(find(test_totalLabelFeature(1:test_updown_totalDataSize,Level_zero)==label_elevatorup)) + numel(find(test_totalLabelFeature(1:test_updown_totalDataSize,Level_zero)==label_upstairs)) ;
    %test_upDataSize为上下分几种参加测试上楼的数据量
    test_feature_label_up(1:(test_upDataSize),1) = [label_up];
    test_feature_label_down(1:(test_updown_totalDataSize - test_upDataSize),1) = [label_down];
    test_feature_label_total = [test_feature_label_up  ;test_feature_label_down  ;];
    test_feature_total = [test_totalLabelFeature(1:test_updown_totalDataSize,BestFeature)  ;];
    model=svmtrain(model_feature_label_total,     model_feature_total);
    [label, b_cross_validation_result(:,4),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model);
    test_totalLabelFeature(1:test_updown_totalDataSize,Level_three) = [label];
    test_totalLabelFeature(1:test_updown_totalDataSize,1:Level_three) = sortrows(test_totalLabelFeature(1:test_updown_totalDataSize,1:Level_three),Level_three);
    test_totalLabelFeature(test_updown_totalDataSize+1:end,Level_three) = test_totalLabelFeature(test_updown_totalDataSize+1:end,Level_two);
    test_feature_label_total(test_feature_label_total==label_up) = 1;
    test_feature_label_total(test_feature_label_total==label_down) = 0;
    [X,Y,THRE,AUC] = perfcurve(test_feature_label_total,decision_values(:,1),'1');
    AUC
    plot(X,Y,'m');

    %% 第四级 电梯和楼梯上楼分级
    clear model_feature_label_elevatorup   model_feature_label_upstairs   model_feature_label_total   BestFeature   model_feature_total
    model_feature_label_elevatorup(1:( DataSizeElevatorup ),1) = [label_elevatorup];
    model_feature_label_upstairs(1:( DataSizeUpstairs ),1) = [label_upstairs ];
    model_feature_label_total = [model_feature_label_elevatorup  ;model_feature_label_upstairs  ;];
    BestFeature = [ peak2peak_value_gyro     ];% pressure_diff1_pressure   fit_slope_pressure   peak2peak_value_acce    median_acce
    model_feature_total = [feature_elevatorup(1:DataSizeElevatorup,BestFeature)  ;feature_upstairs(1:DataSizeUpstairs,BestFeature)  ;];

    clear test_feature_label_elevatorup   test_feature_label_upstairs   test_feature_label_total   test_feature_total
    test_up_totalDataSize = numel(find(test_totalLabelFeature(:,Level_three)==label_up));%参加上楼分级的总测试数据量
    test_elevatorupDataSize = numel(find(test_totalLabelFeature(1:test_up_totalDataSize,Level_zero)==label_elevatorup)) ;
    %test_elevatorupDataSize为上下分几种参加测试上楼的数据量
    test_feature_label_elevatorup(1:(test_elevatorupDataSize),1) = [label_elevatorup];
    test_feature_label_upstairs(1:(test_up_totalDataSize - test_elevatorupDataSize),1) = [label_upstairs];
    test_feature_label_total = [test_feature_label_elevatorup  ;test_feature_label_upstairs  ;];
    test_feature_total = [test_totalLabelFeature(1:test_up_totalDataSize,BestFeature)  ;];
    model=svmtrain(model_feature_label_total,     model_feature_total);
    [label, b_cross_validation_result(:,5),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model);
    test_totalLabelFeature(1:test_up_totalDataSize,Level_four) = [label];
    test_totalLabelFeature(1:test_up_totalDataSize,1:Level_four) = sortrows(test_totalLabelFeature(1:test_up_totalDataSize,1:Level_four),Level_four);
    test_feature_label_total(test_feature_label_total==label_elevatorup) = 1;
    test_feature_label_total(test_feature_label_total==label_upstairs) = 0;
    [X,Y,THRE,AUC] = perfcurve(test_feature_label_total,decision_values(:,1),'1');
    AUC
    plot(X,Y,'k');
    %%第四级 电梯和楼梯下楼分级
    clear model_feature_label_elevatordown   model_feature_label_downstairs   model_feature_label_total   BestFeature   model_feature_total
    model_feature_label_elevatordown(1:( DataSizeElevatordown ),1) = [label_elevatordown];
    model_feature_label_downstairs(1:( DataSizeDownstairs ),1) = [label_downstairs ];
    model_feature_label_total = [model_feature_label_elevatordown  ;model_feature_label_downstairs  ;];
    BestFeature = [ interquartile_range_gyro   interquartile_range_acce  ];% pressure_diff1_pressure   fit_slope_pressure   peak2peak_value_acce    median_acce
    model_feature_total = [feature_elevatordown(1:DataSizeElevatordown,BestFeature)  ;feature_downstairs(1:DataSizeDownstairs,BestFeature)  ;];

    clear test_feature_label_elevatordown   test_feature_label_downstairs   test_feature_label_total   test_feature_total
    test_down_totalDataSize = numel(find(test_totalLabelFeature(:,Level_three)==label_down));%参加上楼分级的总测试数据量
    test_elevatordownDataSize = numel(find(test_totalLabelFeature(test_up_totalDataSize+1:test_up_totalDataSize+test_down_totalDataSize,Level_zero)==label_elevatorup)) + numel(find(test_totalLabelFeature(test_up_totalDataSize+1:test_up_totalDataSize+test_down_totalDataSize,Level_zero)==label_upstairs)) + numel(find(test_totalLabelFeature(test_up_totalDataSize+1:test_up_totalDataSize+test_down_totalDataSize,Level_zero)==label_elevatordown));
    %test_elevatorupDataSize为上下分几种参加测试上楼的数据量
    test_feature_label_elevatordown(1:(test_elevatordownDataSize),1) = [label_elevatordown];
    test_feature_label_downstairs(1:(test_down_totalDataSize - test_elevatordownDataSize),1) = [label_downstairs];
    test_feature_label_total = [test_feature_label_elevatordown  ;test_feature_label_downstairs  ;];
    test_feature_total = [test_totalLabelFeature(test_up_totalDataSize+1:test_up_totalDataSize+test_down_totalDataSize,BestFeature)  ;];
    model=svmtrain(model_feature_label_total,     model_feature_total);
    [label, b_cross_validation_result(:,6),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model);
    test_totalLabelFeature(test_up_totalDataSize+1:test_up_totalDataSize+test_down_totalDataSize,Level_four) = [label];
    test_totalLabelFeature(test_up_totalDataSize+1:test_up_totalDataSize+test_down_totalDataSize,1:Level_four) = sortrows(test_totalLabelFeature(test_up_totalDataSize+1:test_up_totalDataSize+test_down_totalDataSize,1:Level_four),Level_four);
    test_totalLabelFeature(test_updown_totalDataSize+1:end,Level_four) = test_totalLabelFeature(test_updown_totalDataSize+1:end,Level_three);
    test_feature_label_total(test_feature_label_total==label_elevatordown) = 1;
    test_feature_label_total(test_feature_label_total==label_downstairs) = 0;
    [X,Y,THRE,AUC] = perfcurve(test_feature_label_total,decision_values(:,1),'1');
    AUC
    plot(X,Y,'c');legend('动静分级','上下与水平分级','站和躺分级','上下分级','电梯和楼梯上楼分级','电梯和楼梯下楼分级');

    %%
    b_cross_validation_result(1,7) = numel(find(find(test_totalLabelFeature(:,411)==test_totalLabelFeature(:,407))))*100/size(test_totalLabelFeature,1);

    %%

end