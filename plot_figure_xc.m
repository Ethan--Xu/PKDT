close all
%%  散点序列图    盒图
% figure();
% column = 51;
% % subplot(2,1,1);
% plot(feature_standing(:,column),'yo'); hold on;
% plot(feature_lying(:,column),'m+'); hold on;
% plot(feature_walking(:,column),'c*'); hold on;
% %plot(feature_running(:,column),'rx'); hold on;
% plot(feature_upstairs(:,column),'gs'); hold on;
% plot(feature_downstairs(:,column),'bd'); hold on;
% plot(feature_elevatorup(:,column),'rp'); hold on;
% plot(feature_elevatordown(:,column),'kh'); hold on;
% h = legend('standing', 'lying', 'walking', 'upstairs', 'downstairs', 'elevatorup', 'elevatordown');
% set(h,'Fontsize',15);
% title 'Mean of Acceleration '
%
% % subplot(2,1,2);
% figure();
% plot_dataset = [feature_standing(:,column); feature_lying(:,column); feature_walking(:,column); feature_upstairs(:,column); feature_downstairs(:,column); feature_elevatorup(:,column); feature_elevatordown(:,column)];
% G_plot_dataset = [zeros(size(feature_standing(:,column))); ones(size(feature_lying(:,column))); ones(size(feature_walking(:,column)))+1; ones(size(feature_upstairs(:,column)))+2; ones(size(feature_downstairs(:,column)))+3; ones(size(feature_elevatorup(:,column)))+4; ones(size(feature_elevatordown(:,column)))+5];
% % boxplot(feature_standing(:,column)); hold on;
% % boxplot(feature_lying(:,column)); hold on;
% % boxplot(feature_walking(:,column)); hold on;
% % %boxplot(feature_running(:,column)); hold on;
% % boxplot(feature_upstairs(:,column)); hold on;
% % boxplot(feature_downstairs(:,column)); hold on;
% % boxplot(feature_elevatorup(:,column)); hold on;
% % boxplot(feature_elevatordown(:,column)); hold on;
% boxplot(plot_dataset, G_plot_dataset);
% title 'Mean of Acceleration '
% set(gca,'XTick',1:7);
% % set(gca,'YTick',-2:14);
% % set(gca,'Ylim',[-2 14]);
% set(gca,'XTickLabel',{'standing','lying','walking','upstairs','downstairs','elevatorup','elevatordown'});
% set(gca,'FontSize',20);

%% 图形保存
% for column = 1:50
%     h=figure();
%
%     plot_dataset = [feature_standing(:,column); feature_lying(:,column); feature_walking(:,column); feature_upstairs(:,column); feature_downstairs(:,column); feature_elevatorup(:,column); feature_elevatordown(:,column)];
%     G_plot_dataset = [zeros(size(feature_standing(:,column))); ones(size(feature_lying(:,column))); ones(size(feature_walking(:,column)))+1; ones(size(feature_upstairs(:,column)))+2; ones(size(feature_downstairs(:,column)))+3; ones(size(feature_elevatorup(:,column)))+4; ones(size(feature_elevatordown(:,column)))+5];
%     boxplot(plot_dataset, G_plot_dataset);
%     title(num2str(column));
%     set(gca,'XTick',1:7);
%     set(gca,'XTickLabel',{'standing','lying','walking','upstairs','downstairs','elevatorup','elevatordown'});
%     set(gca,'FontSize',20);
%     set(gcf,'outerposition',get(0,'screensize'));
%     saveas(h,['C:\\Users\\Ethan\\Desktop\\IEEEtran\\proFigure\\' num2str(column) '.eps']);
%     saveas(h,['C:\\Users\\Ethan\\Desktop\\IEEEtran\\proFigure\\' num2str(column) '.fig']);
% end

%%
%%  2特征  二维平面图
% figure();
% % feature_standing
% % feature_lying
% % feature_walking
% % feature_upstairs
% % feature_downstairs
% % feature_elevatorup
% % feature_elevatordown
%
% f1_column = 261;
% f2_column = 262;
%
% plot(feature_standing(:,f1_column),feature_standing(:,f2_column),'yo'); hold on;
% plot(feature_lying(:,f1_column),feature_lying(:,f2_column),'m+'); hold on;
% plot(feature_walking(:,f1_column),feature_walking(:,f2_column),'c*'); hold on;
% %plot(feature_running(:,f1_column),feature_running(:,f2_column),'rx'); hold on;
% plot(feature_upstairs(:,f1_column),feature_upstairs(:,f2_column),'gs'); hold on;
% plot(feature_downstairs(:,f1_column),feature_downstairs(:,f2_column),'bd'); hold on;
% plot(feature_elevatorup(:,f1_column),feature_elevatorup(:,f2_column),'rp'); hold on;
% plot(feature_elevatordown(:,f1_column),feature_elevatordown(:,f2_column),'kh'); hold on;
% h = legend('standing', 'lying', 'walking', 'upstairs', 'downstairs', 'elevatorup', 'elevatordown');
% set(h,'Fontsize',15);
% set(gca,'Xlim',[0 10]);

%%  3特征  三维立体图
% figure();
%
% f1_column = 2;
% f2_column = 3;
% f3_column = 4;
%
% plot3(feature_standing(:,f1_column),feature_standing(:,f2_column),feature_standing(:,f3_column),'yo'); hold on;
% plot3(feature_lying(:,f1_column),feature_lying(:,f2_column),feature_lying(:,f3_column),'kh'); hold on;
% plot3(feature_walking(:,f1_column),feature_walking(:,f2_column),feature_walking(:,f3_column),'c*'); hold on;
% %plot3(feature_running(:,f1_column),feature_running(:,f2_column),feature_running(:,f3_column),'rx'); hold on;
% plot3(feature_upstairs(:,f1_column),feature_upstairs(:,f2_column),feature_upstairs(:,f3_column),'gs'); hold on;
% plot3(feature_downstairs(:,f1_column),feature_downstairs(:,f2_column),feature_downstairs(:,f3_column),'bd'); hold on;
% plot3(feature_elevatorup(:,f1_column),feature_elevatorup(:,f2_column),feature_elevatorup(:,f3_column),'rp'); hold on;
% plot3(feature_elevatordown(:,f1_column),feature_elevatordown(:,f2_column),feature_elevatordown(:,f3_column),'m+'); hold on;
% h = legend('standing', 'lying', 'walking', 'upstairs', 'downstairs', 'elevatorup', 'elevatordown');
% set(h,'Fontsize',15);
%
% set(gca,'Xlim',[0 10]);

%%  论文绘图
%%  和加速度峰峰值
% column = 53;
% h=figure();
% plot_dataset = [feature_standing(:,column); feature_lying(:,column); feature_walking(:,column); feature_upstairs(:,column); feature_downstairs(:,column); feature_elevatorup(:,column); feature_elevatordown(:,column)];
% G_plot_dataset = [zeros(size(feature_standing(:,column))); ones(size(feature_lying(:,column))); ones(size(feature_walking(:,column)))+1; ones(size(feature_upstairs(:,column)))+2; ones(size(feature_downstairs(:,column)))+3; ones(size(feature_elevatorup(:,column)))+4; ones(size(feature_elevatordown(:,column)))+5];
% % boxplot(feature_standing(:,column)); hold on;
% % boxplot(feature_lying(:,column)); hold on;
% % boxplot(feature_walking(:,column)); hold on;
% % %boxplot(feature_running(:,column)); hold on;
% % boxplot(feature_upstairs(:,column)); hold on;
% % boxplot(feature_downstairs(:,column)); hold on;
% % boxplot(feature_elevatorup(:,column)); hold on;
% % boxplot(feature_elevatordown(:,column)); hold on;
% boxplot(plot_dataset, G_plot_dataset);
% % set(gca,'Ylim',[0 10]);
% % hl = legend('standing', 'lying', 'walking', 'upstairs', 'downstairs', 'elevatorup', 'elevatordown');
% % set(hl,'Fontsize',15);
% set(gca,'XTick',1:7);
% set(gca,'XTickLabel',{'standing','lying','walking','upstairs','downstairs','elevatorup','elevatordown'});
% set(gca,'FontSize',20);
% % saveas(h,['C:\\Users\\Ethan\\Desktop\\IEEEtran\\proFigure\\' 'accTotal_peak2peak_53' '.eps']);

%% 气压差峰峰值
% column = 21;
% h=figure();
% plot_dataset = [feature_standing(:,column); feature_lying(:,column); feature_walking(:,column); feature_upstairs(:,column); feature_downstairs(:,column); feature_elevatorup(:,column); feature_elevatordown(:,column)];
% G_plot_dataset = [zeros(size(feature_standing(:,column))); ones(size(feature_lying(:,column))); ones(size(feature_walking(:,column)))+1; ones(size(feature_upstairs(:,column)))+2; ones(size(feature_downstairs(:,column)))+3; ones(size(feature_elevatorup(:,column)))+4; ones(size(feature_elevatordown(:,column)))+5];
% % boxplot(feature_standing(:,column)); hold on;
% % boxplot(feature_lying(:,column)); hold on;
% % boxplot(feature_walking(:,column)); hold on;
% % %boxplot(feature_running(:,column)); hold on;
% % boxplot(feature_upstairs(:,column)); hold on;
% % boxplot(feature_downstairs(:,column)); hold on;
% % boxplot(feature_elevatorup(:,column)); hold on;
% % boxplot(feature_elevatordown(:,column)); hold on;
% boxplot(plot_dataset, G_plot_dataset);
% % set(gca,'Ylim',[0 10]);
% % hl = legend('standing', 'lying', 'walking', 'upstairs', 'downstairs', 'elevatorup', 'elevatordown');
% % set(hl,'Fontsize',15);
% set(gca,'XTick',1:7);
% set(gca,'XTickLabel',{'standing','lying','walking','upstairs','downstairs','elevatorup','elevatordown'});
% set(gca,'FontSize',20);

%% 气压自差值
% column = 2;
% h=figure();
% plot_dataset = [feature_standing(:,column); feature_lying(:,column); feature_walking(:,column); feature_upstairs(:,column); feature_downstairs(:,column); feature_elevatorup(:,column); feature_elevatordown(:,column)];
% G_plot_dataset = [zeros(size(feature_standing(:,column))); ones(size(feature_lying(:,column))); ones(size(feature_walking(:,column)))+1; ones(size(feature_upstairs(:,column)))+2; ones(size(feature_downstairs(:,column)))+3; ones(size(feature_elevatorup(:,column)))+4; ones(size(feature_elevatordown(:,column)))+5];
% % boxplot(feature_standing(:,column)); hold on;
% % boxplot(feature_lying(:,column)); hold on;
% % boxplot(feature_walking(:,column)); hold on;
% % %boxplot(feature_running(:,column)); hold on;
% % boxplot(feature_upstairs(:,column)); hold on;
% % boxplot(feature_downstairs(:,column)); hold on;
% % boxplot(feature_elevatorup(:,column)); hold on;
% % boxplot(feature_elevatordown(:,column)); hold on;
% boxplot(plot_dataset, G_plot_dataset);
% % set(gca,'Ylim',[0 10]);
% % hl = legend('standing', 'lying', 'walking', 'upstairs', 'downstairs', 'elevatorup', 'elevatordown');
% % set(hl,'Fontsize',15);
% set(gca,'XTick',1:7);
% set(gca,'XTickLabel',{'standing','lying','walking','upstairs','downstairs','elevatorup','elevatordown'});
% set(gca,'FontSize',20);
% set(gcf,'outerposition',get(0,'screensize'));

%% 盒图
% column = 526;
% h=figure();
% plot_dataset = [feature_standing(:,column); feature_lying(:,column); feature_walking(:,column);feature_running(:,column); feature_upstairs(:,column); feature_downstairs(:,column); feature_elevatorup(:,column); feature_elevatordown(:,column)];
% G_plot_dataset = [zeros(size(feature_standing(:,column))); ones(size(feature_lying(:,column))); ones(size(feature_walking(:,column)))+1;  ones(size(feature_running(:,column)))+2;ones(size(feature_upstairs(:,column)))+3; ones(size(feature_downstairs(:,column)))+4; ones(size(feature_elevatorup(:,column)))+5; ones(size(feature_elevatordown(:,column)))+6];
% % boxplot(feature_standing(:,column)); hold on;
% % boxplot(feature_lying(:,column)); hold on;
% % boxplot(feature_walking(:,column)); hold on;
% % %boxplot(feature_running(:,column)); hold on;
% % boxplot(feature_upstairs(:,column)); hold on;
% % boxplot(feature_downstairs(:,column)); hold on;
% % boxplot(feature_elevatorup(:,column)); hold on;
% % boxplot(feature_elevatordown(:,column)); hold on;
% boxplot(plot_dataset, G_plot_dataset,'whisker',10 );hold on;
% % set(gca,'Ylim',[0 10]);
% % hl = legend('standing', 'lying', 'walking', 'upstairs', 'downstairs', 'elevatorup', 'elevatordown');
% % set(hl,'Fontsize',15);
% 
% set(gca,'XTick',1:8);
% set(gca,'XTickLabel',{'Standing','Lying','Walking','Running','Upstairs','Downstairs','ElevatorUp','ElevatorDown'});
% set(gca,'FontSize',15);
% ylabel('{\it PressureDiffer_{AS}/Pa}')
% %
% yy=-6;
% text(0,yy,'{\it \theta^*_1}', 'FontSize',14,'FontWeight','bold');
% plot([0 9], [yy yy], 'r--','LineWidth',2); hold on;
% yy=-21;
% text(0,yy,'{\it \theta^*_2}', 'FontSize',14,'FontWeight','bold');
% plot([0 9], [yy yy], 'g--','LineWidth',2); hold on;
% set(gca,'Ylim',[-30 10]);
% set(gcf,'outerposition',get(0,'screensize'));
% 
% % rotateticklabel(gca,'x',-15);
% % set(gca,'xtick',[ ],'xticklabel',[ ]);
% % str = 'Standing | Lying | Walking | Running | Upstairs | Downstairs | ElevatorUp | ElevatorDown';
% % set(gca,'xtick',1:8,'xticklabel',str);
% % rotateticklabel(gca,'x',-15);
% % set(gcf,'outerposition',get(0,'screensize'));
% 
% % h = findobj(gca,'Tag','Box');
% % colorlist ={'r','g','b','y','r','g','b','y'};
% % for j=1:length(h)
% %     patch(get(h(j),'XData'),get(h(j),'YData'),cell2mat(colorlist(j)),'FaceAlpha',.5);
% % end
% % applyhatch(gcf,'\-x.');

%%
% label_elevatorup    = 1;
% label_upstairs      = 2;
% label_elevatordown  = 1;
% label_downstairs    = 2;
% label_walking       = 2;
% label_standing      = 1;
% label_lying         = 1;
% label_sitting       = 1;
% %feature_label_downstairs(1:350,:)  ;feature_label_elevatordown(1:202,:)  ;feature_label_elevatorup(1:185,:)  ;feature_label_upstairs(1:311,:)  ;feature_label_walking(1:416,:)  ;
% model_feature_label_total = [feature_label_downstairs(1:199,:)  ;feature_label_elevatordown(1:199,:)  ;feature_label_elevatorup(1:199,:)  ;feature_label_upstairs(1:199,:)  ;feature_label_walking(1:199,:);feature_label_lying(1:199,:);feature_label_standing(1:199,:);feature_label_sitting(1:199,:);];
% model_feature_total = [feature_downstairs(1:199,:)  ;feature_elevatordown(1:199,:)  ;feature_elevatorup(1:199,:)  ;feature_upstairs(1:199,:)  ;feature_walking(1:199,:)  ;feature_lying(1:199,:);feature_standing(1:199,:);feature_sitting(1:199,:);];
% test_feature_label_total = [test_feature_label_downstairs(1:185,:)  ;test_feature_label_elevatordown(1:185,:)  ;test_feature_label_elevatorup(1:185,:)  ;test_feature_label_upstairs(1:185,:)  ;test_feature_label_walking(1:185,:)  ;test_feature_label_lying(1:185,:);test_feature_label_standing(1:185,:);test_feature_label_sitting(1:185,:);];
% test_feature_total = [test_feature_downstairs(1:185,:)  ;test_feature_elevatordown(1:185,:)  ;test_feature_elevatorup(1:185,:)  ;test_feature_upstairs(1:185,:)  ;test_feature_walking(1:185,:)  ;feature_lying(1:185,:);feature_standing(1:185,:);feature_sitting(1:185,:);];
% model=svmtrain(model_feature_label_total,     model_feature_total);
% [label, result(:,1),decision_values] = svmpredict(test_feature_label_total,test_feature_total,model);

%% plot model classification view
% clo=1;
% for temp_c = 1:size(model_feature_total,clo)
%     if model_feature_label_total(temp_c,1) == 1
%         plot(temp_c, model_feature_total(temp_c,clo),'*r');
%     else if model_feature_label_total(temp_c,1) == 2
%             plot(temp_c, model_feature_total(temp_c,clo),'*r');
%         end
%     end
% end

% plot(ppp(1,:),'r^-');hold on;
% plot(ppp(2,:),'bo-');hold on;
% plot(ppp(3,:),'kd-');hold on;
% plot(ppp(4,:),'go-');hold on;
% plot(ppp(5,:),'m*-');hold on;
% plot(ppp(6,:),'ys-');hold on;

%% running test
% for i=1:10:50
%     figure();
%     plot(x(:,i+1),'b*-');hold on;
%     plot(x(:,i+2),'rv-');hold on;
%     plot(x(:,i+3),'kd-');hold on;
% end
%
% plot(feature_walking(:,201),'r.'); hold on;
% plot(feature_running(:,201),'b*'); hold on;

%% huizhi
column = 526;
h=figure();
plot_dataset = [feature_standing(:,column); feature_lying(:,column); feature_walking(:,column);feature_running(:,column); feature_upstairs(:,column); feature_downstairs(:,column); feature_elevatorup(:,column); feature_elevatordown(:,column)];
G_plot_dataset = [zeros(size(feature_standing(:,column))); ones(size(feature_lying(:,column))); ones(size(feature_walking(:,column)))+1;  ones(size(feature_running(:,column)))+2;ones(size(feature_upstairs(:,column)))+3; ones(size(feature_downstairs(:,column)))+4; ones(size(feature_elevatorup(:,column)))+5; ones(size(feature_elevatordown(:,column)))+6];
boxplot(plot_dataset, G_plot_dataset,'whisker',10 );hold on;

set(gca,'XTick',1:8);
set(gca,'XTickLabel',{'Standing','Lying','Walking','Running','Upstairs','Downstairs','ElevatorUp','ElevatorDown'});
set(gca,'FontSize',15);
ylabel('{\it PressureDiffer_{AS}/Pa}')

yy=-6;
text(0,yy,'{\it \theta^*_1}', 'FontSize',14,'FontWeight','bold');
plot([0 9], [yy yy], 'r--','LineWidth',2); hold on;
yy=-21;
text(0,yy,'{\it \theta^*_2}', 'FontSize',14,'FontWeight','bold');
plot([0 9], [yy yy], 'g--','LineWidth',2); hold on;
set(gca,'Ylim',[-30 10]);
set(gcf,'outerposition',get(0,'screensize'));