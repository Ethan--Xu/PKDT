% %%
% %绘制数据汇总图
% figure();
% subplot(3,2,1);
% data = standing1;
% plot(data(:,[1,11,21,31,41]));
% 
% subplot(3,2,2);
% data = standing2;
% plot(data(:,[1,11,21,31,41]));
% 
% subplot(3,2,3);
% data = sitting1;
% plot(data(:,[1,11,21,31,41]));
% 
% subplot(3,2,4);
% data = sitting2;
% plot(data(:,[1,11,21,31,41]));
% 
% subplot(3,2,5);
% data = walking1;
% plot(data(:,[1,11,21,31,41]));
% 
% subplot(3,2,6);
% data = walking2;
% plot(data(:,[1,11,21,31,41]));
% 
% %%
% figure();
% subplot(3,2,1);
% data = standing1;
% plot(data(:,[5,6,7]));
% 
% subplot(3,2,2);
% data = standing2;
% plot(data(:,[5,6,7]));
% 
% subplot(3,2,3);
% data = sitting1;
% plot(data(:,[5,6,7]));
% 
% subplot(3,2,4);
% data = sitting2;
% plot(data(:,[5,6,7]));
% 
% subplot(3,2,5);
% data = walking1;
% plot(data(:,[5,6,7]));
% 
% subplot(3,2,6);
% data = walking2;
% plot(data(:,[5,6,7]));
% 
% %%
% %绘制数据汇总图
% figure();
% subplot(2,2,1);
% data = upstairs11;
% plot(data(:,[1,11,21,31,41]));
% 
% subplot(2,2,2);
% data = upstairs21;
% plot(data(:,[1,11,21,31,41]));
% 
% subplot(2,2,3);
% data = elevatorup11;
% plot(data(:,[1,11,21,31,41]));
% 
% subplot(2,2,4);
% data = elevatorup21;
% plot(data(:,[1,11,21,31,41]));
% 
% %%
% %绘制数据汇总图
% figure();
% subplot(2,2,1);
% data = downstairs11;
% plot(data(:,[1,11,21,31,41]));
% 
% subplot(2,2,2);
% data = downstairs21;
% plot(data(:,[1,11,21,31,41]));
% 
% subplot(2,2,3);
% data = elevatordown11;
% plot(data(:,[1,11,21,31,41]));
% 
% subplot(2,2,4);
% data = elevatordown21;
% plot(data(:,[1,11,21,31,41]));



% plot3(feature_downstairs(:,1),feature_downstairs(:,2),feature_downstairs(:,3),'g.');
% hold on;
% plot3(feature_upstairs(:,1),feature_upstairs(:,2),feature_upstairs(:,3),'r.');
% hold on;
% plot3(feature_elevatordown(:,1),feature_elevatordown(:,2),feature_elevatordown(:,3),'y.');
% hold on;
% plot3(feature_elevatorup(:,1),feature_elevatorup(:,2),feature_elevatorup(:,3),'c.');
% hold on;


% plot3(feature_downstairs(:,2*3+2),feature_downstairs(:,2*3+3),feature_downstairs(:,2*3+5),'g.');
% hold on;
% plot3(feature_upstairs(:,2*3+2),feature_upstairs(:,2*3+3),feature_upstairs(:,2*3+5),'y.');
% hold on;
% % plot3(feature_elevatordown(:,2*3+2),feature_elevatordown(:,2*3+3),feature_elevatordown(:,2*3+5),'r.');
% % hold on;
% plot3(feature_elevatorup(:,2*3+2),feature_elevatorup(:,2*3+3),feature_elevatorup(:,2*3+5),'c.');
% hold on;
% plot3(feature_standing(:,2*3+2),feature_standing(:,2*3+3),feature_standing(:,2*3+5),'m.');
% hold on;
% plot3(feature_walking(:,2*3+2),feature_walking(:,2*3+3),feature_walking(:,2*3+5),'b.');
% hold on;
% grid on;

% %%
% %验证 feature_fft的结果
% plot3(feature_downstairs(:,1) ,feature_downstairs(:,2) ,feature_downstairs(:,3) ,'g.');
% hold on;
% plot3(feature_upstairs(:,1),feature_upstairs(:,2),feature_upstairs(:,3), 'y.'); 
% hold on;
% plot3( feature_elevatordown(:,1),feature_elevatordown(:,2),feature_elevatordown(:,3),'r.'); 
% hold on;
% plot3(feature_elevatorup(:,1), feature_elevatorup(:,2),feature_elevatorup(:,3),'k.'); 
% hold on;
% plot3(feature_standing(:,1), feature_standing(:,2),feature_standing(:,3),'m.'); 
% hold on;
% plot3(feature_walking(:,1), feature_walking(:,2),feature_walking(:,3),'b.'); 
% hold on;
% plot3(feature_sitting(:,1), feature_sitting(:,2), feature_sitting(:,3), 'c.'); 
% hold on;
% grid on;
% legend downstairs upstairs elevatordown elevatorup standing walking sitting

% %%
% %验证 feature_fft的结果
% plot3(feature_downstairs(:,5) ,feature_downstairs(:,6) ,feature_downstairs(:,7) ,'g.');
% hold on;
% plot3(feature_upstairs(:,5),feature_upstairs(:,6),feature_upstairs(:,7), 'y.'); 
% hold on;
% plot3( feature_elevatordown(:,5),feature_elevatordown(:,6),feature_elevatordown(:,7),'r.'); 
% hold on;
% plot3(feature_elevatorup(:,5), feature_elevatorup(:,6),feature_elevatorup(:,7),'k.'); 
% hold on;
% plot3(feature_standing(:,5), feature_standing(:,6),feature_standing(:,7),'m.'); 
% hold on;
% plot3(feature_walking(:,5), feature_walking(:,6),feature_walking(:,7),'b.'); 
% hold on;
% plot3(feature_sitting(:,5), feature_sitting(:,6), feature_sitting(:,7), 'c.'); 
% hold on;
% grid on;
% legend downstairs upstairs elevatordown elevatorup standing walking sitting
%%
% %验证 feature_pressure_diff1
% plot(feature_downstairs(:,1),'g.');
% hold on;
% plot(feature_upstairs(:,1),'y.'); 
% hold on;
% plot(feature_elevatordown(:,1),'r.'); 
% hold on;
% plot(feature_elevatorup(:,1),'k.'); 
% hold on;
% plot(feature_standing(:,1),'m.'); 
% hold on;
% plot(feature_walking(:,1),'b.'); 
% hold on;
% plot(feature_sitting(:,1),'c.'); 
% hold on;
% grid on;
% legend downstairs upstairs elevatordown elevatorup standing walking sitting

%%
% %验证 feature_pressure_diff的结果
% plot3(feature_downstairs(:,1),feature_downstairs(:,6),feature_downstairs(:,11),'g.');
% hold on;
% plot3(feature_upstairs(:,1),feature_upstairs(:,6),feature_upstairs(:,11),'y.'); 
% hold on;
% plot3(feature_elevatordown(:,1),feature_elevatordown(:,6),feature_elevatordown(:,11),'r.'); 
% hold on;
% plot3(feature_elevatorup(:,1),feature_elevatorup(:,6),feature_elevatorup(:,11),'k.'); 
% hold on;
% plot3(feature_standing(:,1),feature_standing(:,6),feature_standing(:,11),'m.'); 
% hold on;
% plot3(feature_walking(:,1),feature_walking(:,6),feature_walking(:,11),'b.'); 
% hold on;
% plot3(feature_sitting(:,1),feature_sitting(:,6),feature_sitting(:,11),'c.'); 
% hold on;
% grid on;
% legend downstairs upstairs elevatordown elevatorup standing walking sitting

% %%
% %验证 feature_pressure_diff的结果
% plot3(feature_downstairs(:,5),feature_downstairs(:,45),feature_downstairs(:,51),'g.');
% hold on;
% plot3(feature_upstairs(:,5),feature_upstairs(:,45),feature_upstairs(:,51),'y.'); 
% hold on;
% plot3(feature_elevatordown(:,5),feature_elevatordown(:,45),feature_elevatordown(:,51),'r.'); 
% hold on;
% plot3(feature_elevatorup(:,5),feature_elevatorup(:,45),feature_elevatorup(:,51),'k.'); 
% hold on;
% plot3(feature_standing(:,5),feature_standing(:,45),feature_standing(:,51),'m.'); 
% hold on;
% plot3(feature_walking(:,5),feature_walking(:,45),feature_walking(:,51),'b.'); 
% hold on;
% plot3(feature_sitting(:,5),feature_sitting(:,45),feature_sitting(:,51),'c.'); 
% hold on;
% grid on;
% legend downstairs upstairs elevatordown elevatorup standing walking sitting

%
% 验证 feature_fft的结果
% plot3(feature_downstairs(:,5) ,feature_downstairs(:,48) ,feature_downstairs(:,49) ,'g.');
% hold on;
% plot3(feature_upstairs(:,5),feature_upstairs(:,48),feature_upstairs(:,49), 'y.'); 
% hold on;
% plot3( feature_elevatordown(:,5),feature_elevatordown(:,48),feature_elevatordown(:,49),'r.'); 
% hold on;
% plot3(feature_elevatorup(:,5), feature_elevatorup(:,48),feature_elevatorup(:,49),'k.'); 
% hold on;
% plot3(feature_standing(:,5), feature_standing(:,48),feature_standing(:,49),'m.'); 
% hold on;
% plot3(feature_walking(:,5), feature_walking(:,48),feature_walking(:,49),'b.'); 
% hold on;
% plot3(feature_sitting(:,5), feature_sitting(:,48), feature_sitting(:,49), 'c.'); 
% hold on;
% grid on;
% legend downstairs upstairs elevatordown elevatorup standing walking sitting

% %
% %验证 feature_pressure_diff1
% plot(feature_down(:,1),feature_down(:,2),'b.');
% hold on;
% plot(feature_up(:,1),feature_up(:,2),'g.'); 
% hold on;
% plot(feature_flat(:,1),feature_flat(:,2),'r.'); 
% hold on;
% 
% grid on;
% legend down up flat