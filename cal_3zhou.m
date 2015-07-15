clear all
clc
load('I:\20150425\Activity Recognition\running.mat');

% %% downstairs
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = downstairs11;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% downstairs11 = [downstairs11 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = downstairs12;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% downstairs12 = [downstairs12 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = downstairs13;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% downstairs13 = [downstairs13 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = downstairs14;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% downstairs14 = [downstairs14 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = downstairs21;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% downstairs21 = [downstairs21 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = downstairs22;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% downstairs22 = [downstairs22 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = downstairs23;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% downstairs23 = [downstairs23 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = downstairs24;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% downstairs24 = [downstairs24 acc_total gyo_total mag_total];
% 
% %%  upstairs
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = upstairs11;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% upstairs11 = [upstairs11 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = upstairs12;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% upstairs12 = [upstairs12 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = upstairs13;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% upstairs13 = [upstairs13 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = upstairs21;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% upstairs21 = [upstairs21 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = upstairs22;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% upstairs22 = [upstairs22 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = upstairs23;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% upstairs23 = [upstairs23 acc_total gyo_total mag_total];
% 
% %% elevatordown
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatordown11;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatordown11 = [elevatordown11 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatordown12;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatordown12 = [elevatordown12 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatordown13;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatordown13 = [elevatordown13 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatordown14;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatordown14 = [elevatordown14 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatordown15;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatordown15 = [elevatordown15 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatordown21;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatordown21 = [elevatordown21 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatordown22;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatordown22 = [elevatordown22 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatordown23;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatordown23 = [elevatordown23 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatordown24;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatordown24 = [elevatordown24 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatordown25;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatordown25 = [elevatordown25 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatordown1_1;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatordown1_1 = [elevatordown1_1 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatordown1_2;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatordown1_2 = [elevatordown1_2 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatordown1_3;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatordown1_3 = [elevatordown1_3 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatordown1_4;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatordown1_4 = [elevatordown1_4 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatordown1_5;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatordown1_5 = [elevatordown1_5 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatordown1_6;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatordown1_6 = [elevatordown1_6 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatordown1_7;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatordown1_7 = [elevatordown1_7 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatordown1_8;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatordown1_8 = [elevatordown1_8 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatordown1_9;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatordown1_9 = [elevatordown1_9 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatordown2_1;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatordown2_1 = [elevatordown2_1 acc_total gyo_total mag_total];
% 
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatordown2_2;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatordown2_2 = [elevatordown2_2 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatordown2_3;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatordown2_3 = [elevatordown2_3 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatordown2_4;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatordown2_4 = [elevatordown2_4 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatordown2_5;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatordown2_5 = [elevatordown2_5 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatordown2_6;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatordown2_6 = [elevatordown2_6 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatordown2_7;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatordown2_7 = [elevatordown2_7 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatordown2_8;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatordown2_8 = [elevatordown2_8 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatordown2_9;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatordown2_9 = [elevatordown2_9 acc_total gyo_total mag_total];
% 
% %% elevatorup
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatorup11;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatorup11 = [elevatorup11 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatorup12;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatorup12 = [elevatorup12 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatorup13;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatorup13 = [elevatorup13 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatorup14;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatorup14 = [elevatorup14 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatorup15;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatorup15 = [elevatorup15 acc_total gyo_total mag_total];
% 
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatorup21;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatorup21 = [elevatorup21 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatorup22;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatorup22 = [elevatorup22 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatorup24;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatorup24 = [elevatorup24 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatorup25;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatorup25 = [elevatorup25 acc_total gyo_total mag_total];
% 
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatorup1_1;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatorup1_1 = [elevatorup1_1 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatorup1_2;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatorup1_2 = [elevatorup1_2 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatorup1_3;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatorup1_3 = [elevatorup1_3 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatorup1_4;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatorup1_4 = [elevatorup1_4 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatorup1_5;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatorup1_5 = [elevatorup1_5 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatorup1_6;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatorup1_6 = [elevatorup1_6 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatorup1_7;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatorup1_7 = [elevatorup1_7 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatorup1_8;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatorup1_8 = [elevatorup1_8 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatorup1_9;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatorup1_9 = [elevatorup1_9 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatorup2_1;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatorup2_1 = [elevatorup2_1 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatorup2_2;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatorup2_2 = [elevatorup2_2 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatorup2_3;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatorup2_3 = [elevatorup2_3 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatorup2_4;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatorup2_4 = [elevatorup2_4 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatorup2_5;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatorup2_5 = [elevatorup2_5 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatorup2_6;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatorup2_6 = [elevatorup2_6 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatorup2_7;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatorup2_7 = [elevatorup2_7 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatorup2_8;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatorup2_8 = [elevatorup2_8 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = elevatorup2_9;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% elevatorup2_9 = [elevatorup2_9 acc_total gyo_total mag_total];
% %%  lying
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = lying1;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% lying1 = [lying1 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = lying2;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% lying2 = [lying2 acc_total gyo_total mag_total];
% 
% %% sitting
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = sitting1;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% sitting1 = [sitting1 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = sitting2;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% sitting2 = [sitting2 acc_total gyo_total mag_total];
% 
% 
% %%  standing
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = standing1;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% standing1 = [standing1 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = standing2;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% standing2 = [standing2 acc_total gyo_total mag_total];
% 
% %% walking
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = walking1;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% walking1 = [walking1 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = walking2;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% walking2 = [walking2 acc_total gyo_total mag_total];

%% running
acc_total=0;
gyo_total=0;
mag_total=0;
dSet = running1;
for i=1:size(dSet,1)
    for j=1:5
        acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
        gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
        mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
    end    
end
running1 = [running1 acc_total gyo_total mag_total];

acc_total=0;
gyo_total=0;
mag_total=0;
dSet = running2;
for i=1:size(dSet,1)
    for j=1:5
        acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
        gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
        mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
    end    
end
running2 = [running2 acc_total gyo_total mag_total];
% 
% acc_total=0;
% gyo_total=0;
% mag_total=0;
% dSet = running3;
% for i=1:size(dSet,1)
%     for j=1:5
%         acc_total(i,j) = sqrt(power(dSet(i,2+(j-1)*10),2)+power(dSet(i,3+(j-1)*10),2)+power(dSet(i,4+(j-1)*10),2));
%         gyo_total(i,j) = sqrt(power(dSet(i,5+(j-1)*10),2)+power(dSet(i,6+(j-1)*10),2)+power(dSet(i,7+(j-1)*10),2));
%         mag_total(i,j) = sqrt(power(dSet(i,8+(j-1)*10),2)+power(dSet(i,9+(j-1)*10),2)+power(dSet(i,10+(j-1)*10),2));
%     end    
% end
% running3 = [running3 acc_total gyo_total mag_total];
