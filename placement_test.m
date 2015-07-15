%%
clc
clf
clear all;
load('C:\Users\HaiPiao\Desktop\消防员定位\多传感器测试\20150425\Activity Recognition\Dataset_20150601_全部特征值.mat');
%%
mean_pressure                   = [1,11,21,31,41];
mean_gyro                       = [2:4,12:14,22:24,32:34,42:44];
mean_acce                       = [5:7,15:17,25:27,35:37,45:47];

var_pressure                    = [51,61,71,81,91];
var_gyro                        = [52:54,62:64,72:74,82:84,92:94];
var_acce                        = [55:57,65:67,75:77,85:87,95:97];

mean_crossing_rate_pressure   	= [101,111,121,131,141];
mean_crossing_rate_gyro      	= [102:104,112:114,122:124,132:134,142:144];
mean_crossing_rate_acce      	= [105:107,115:117,125:127,135:137,145:147];

interquartile_range_pressure	= [151,161,171,181,191];
interquartile_range_gyro        = [152:154,162:164,172:174,182:184,192:194];
interquartile_range_acce        = [155:157,165:167,175:177,185:187,195:197];

peak2peak_value_pressure        = [201,211,221,231,241];
peak2peak_value_gyro          	= [202:204,212:214,222:224,232:234,242:244];
peak2peak_value_acce         	= [205:207,215:217,225:227,235:237,245:247];

median_pressure                 = [251,261,271,281,291];
median_gyro                     = [252:254,262:264,272:274,282:284,292:294];
median_acce                     = [255:257,265:267,275:277,285:287,295:297];

fit_slope_pressure              = [301,311,321,331,341];
fit_slope_gyro                  = [302:304,312:314,322:324,332:334,342:344];
fit_slope_acce                  = [305:307,315:317,325:327,335:337,345:347];

RMS_pressure                    = [351,361,371,381,391];
RMS_gyro                        = [352:354,362:364,372:374,382:384,392:394];
RMS_acce                        = [355:357,365:367,375:377,385:387,395:397];

pressure_diff1_pressure     	= [401,402,403,404,405];

pressure_diff_between03     	= [406];
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
%% 
DataSizeElevatorup      = 185;
DataSizeUpstairs        = 311;
DataSizeElevatordown	= 202;
DataSizeDownstairs      = 350;
DataSizeWalking         = 416;
DataSizeStanding        = 463;
DataSizeLying           = 290;
%% 分级结果
Level_zero = 407;
Level_one = 408;
Level_two = 409;
Level_three = 410;
Level_four = 411;
%%  
total_label = [feature_label_elevatorup(1:185,:)  ;feature_label_upstairs(1:311,:)  ;feature_label_elevatordown(1:202,:)  ;feature_label_downstairs(1:350,:)  ;feature_label_walking(1:416,:)  ;feature_label_standing(1:463,:)  ;feature_label_lying(1:290,:)  ;];
total_feature = [feature_elevatorup(1:185,:)  ;feature_upstairs(1:311,:)  ;feature_elevatordown(1:202,:)  ;feature_downstairs(1:350,:)  ;feature_walking(1:416,:)  ;feature_standing(1:463,:)  ;feature_lying(1:290,:)  ;];
model_totalLabelFeature = [total_label total_feature];

test_total_label = [test_feature_label_elevatorup(1:185,:)  ;test_feature_label_upstairs(1:311,:)  ;test_feature_label_elevatordown(1:202,:)  ;test_feature_label_downstairs(1:350,:)  ;test_feature_label_walking(1:416,:)  ;test_feature_label_standing(1:463,:)  ;test_feature_label_lying(1:290,:)  ;];
test_total_feature = [test_feature_elevatorup(1:185,:)  ;test_feature_upstairs(1:311,:)  ;test_feature_elevatordown(1:202,:)  ;test_feature_downstairs(1:350,:)  ;test_feature_walking(1:416,:)  ;test_feature_standing(1:463,:)  ;test_feature_lying(1:290,:)  ;];
test_totalLabelFeature = [test_total_feature  test_total_label];

%%  第一级 动静分级
model_feature_label_move(1:( DataSizeElevatorup + DataSizeUpstairs + DataSizeElevatordown + DataSizeDownstairs + DataSizeWalking),1) = [label_move];
model_feature_label_static(1:( DataSizeStanding + DataSizeLying),1) = [label_static];
model_feature_label_total = [model_feature_label_move  ;model_feature_label_static  ;];
BestFeature = [interquartile_range_acce   peak2peak_value_pressure   peak2peak_value_acce];
model_feature_total = [feature_elevatorup(1:185,BestFeature)  ;feature_upstairs(1:311,BestFeature)  ;feature_elevatordown(1:202,BestFeature)  ;feature_downstairs(1:350,BestFeature)  ;feature_walking(1:416,BestFeature)  ;feature_standing(1:463,BestFeature)  ;feature_lying(1:290,BestFeature)  ;];
test_feature_label_move(1:( DataSizeElevatorup + DataSizeUpstairs + DataSizeElevatordown + DataSizeDownstairs + DataSizeWalking),1) = [label_move];
test_feature_label_static(1:( DataSizeStanding + DataSizeLying),1) = [label_static];
test_feature_label_total = [test_feature_label_move  ;test_feature_label_static  ;];
test_feature_total = [test_feature_elevatorup(1:185,BestFeature)  ;test_feature_upstairs(1:311,BestFeature)  ;test_feature_elevatordown(1:202,BestFeature)  ;test_feature_downstairs(1:350,BestFeature)  ;test_feature_walking(1:416,BestFeature)  ;test_feature_standing(1:463,BestFeature)  ;test_feature_lying(1:290,BestFeature)  ;];
model=svmtrain(model_feature_label_total,     model_feature_total,'-b 1');
[label, result(:,1),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model,'-b 1');
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
BestFeature = [201,211,221,231,241,205:207,215:217,225:227,235:237,245:247,401:405,51,61,71,81,91,151,161,171,181,191];
model_feature_total = [feature_elevatorup(1:DataSizeElevatorup,BestFeature)  ;feature_upstairs(1:DataSizeUpstairs,BestFeature)  ;feature_elevatordown(1:DataSizeElevatordown,BestFeature)  ;feature_downstairs(1:DataSizeDownstairs,BestFeature)  ;feature_walking(1:DataSizeWalking,BestFeature)  ;];

test_move_totalDataSize = numel(find(test_totalLabelFeature(:,Level_one)==label_move));%参加上下与水平分级的总测试数据量
test_updownDataSize = numel(find(test_totalLabelFeature(1:test_move_totalDataSize,Level_zero)==1)) + numel(find(test_totalLabelFeature(1:test_move_totalDataSize,Level_zero)==2)) + numel(find(test_totalLabelFeature(1:test_move_totalDataSize,Level_zero)==3)) + numel(find(test_totalLabelFeature(1:test_move_totalDataSize,Level_zero)==4)) ;
%test_updownDataSize为上下分几种参加测试上下楼的数据量
test_feature_label_updown(1:(test_updownDataSize),1) = [label_updown];
test_feature_label_horizontal(1:(test_move_totalDataSize - test_updownDataSize),1) = [label_horizontal];
test_feature_label_total = [test_feature_label_updown  ;test_feature_label_horizontal  ;];
test_feature_total = [test_totalLabelFeature(1:test_move_totalDataSize,BestFeature)  ;];
model=svmtrain(model_feature_label_total,     model_feature_total,'-b 1');
[label, result(:,1),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model,'-b 1');
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
[label, result(:,1),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model,'-b 1');
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
[label, result(:,1),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model);
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
[label, result(:,1),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model);
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
[label, result(:,1),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model);
test_totalLabelFeature(test_up_totalDataSize+1:test_up_totalDataSize+test_down_totalDataSize,Level_four) = [label];
test_totalLabelFeature(test_up_totalDataSize+1:test_up_totalDataSize+test_down_totalDataSize,1:Level_four) = sortrows(test_totalLabelFeature(test_up_totalDataSize+1:test_up_totalDataSize+test_down_totalDataSize,1:Level_four),Level_four);
test_totalLabelFeature(test_updown_totalDataSize+1:end,Level_four) = test_totalLabelFeature(test_updown_totalDataSize+1:end,Level_three);
test_feature_label_total(test_feature_label_total==label_elevatordown) = 1;
test_feature_label_total(test_feature_label_total==label_downstairs) = 0;
[X,Y,THRE,AUC] = perfcurve(test_feature_label_total,decision_values(:,1),'1');
AUC
plot(X,Y,'c');legend('动静分级','上下与水平分级','站和躺分级','上下分级','电梯和楼梯上楼分级','电梯和楼梯下楼分级');

%%