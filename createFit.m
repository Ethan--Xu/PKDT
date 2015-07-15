function pd1 = createFit(arg_1)
%CREATEFIT    Create plot of datasets and fits
%   PD1 = CREATEFIT(ARG_1)
%   Creates a plot, similar to the plot in the main distribution fitting
%   window, using the data that you provide as input.  You can
%   apply this function to the same data you used with dfittool
%   or with different data.  You may want to edit the function to
%   customize the code and this help message.
%
%   Number of datasets:  1
%   Number of fits:  1
%
%   See also FITDIST.

% This function was automatically generated on 05-May-2015 09:30:58

% Output fitted probablility distribution: PD1

% Data from dataset "feature_lying(:,51) data":
%    Y = arg_1 (originally feature_lying(:,51))

% Force all inputs to be column vectors
%figure();
%hold on;
arg_1 = arg_1(:);

% Prepare figure
%clf;
hold on;
LegHandles = []; LegText = {};


% --- Plot data originally in dataset "feature_lying(:,51) data"
[CdfF,CdfX] = ecdf(arg_1,'Function','cdf');  % compute empirical cdf
BinInfo.rule = 1;
[~,BinEdge] = internal.stats.histbins(arg_1,[],[],BinInfo,CdfF,CdfX);
[BinHeight,BinCenter] = ecdfhist(CdfF,CdfX,'edges',BinEdge);
SumHeight=sum(BinHeight);
BinHeight=BinHeight(1,:)/SumHeight;
hLine = bar(BinCenter,BinHeight,'hist');
set(hLine,'FaceColor','none','EdgeColor',[0.333333 0 0.666667],...
    'LineStyle','-', 'LineWidth',1);
xlabel('Data');
ylabel('Density')
LegHandles(end+1) = hLine;
%LegText{end+1} = 'feature_lying(:,51) data';

% Create grid where function will be computed
XLim = get(gca,'XLim');
XLim = XLim + [-1 1] * 0.01 * diff(XLim);
XGrid = linspace(XLim(1),XLim(2),100);


% --- Create fit "fit 25"

% Fit this distribution to get parameter values
% To use parameter estimates from the original fit:
%     pd1 = ProbDistUnivParam('normal',[ 0.1346034194386, 0.1160268955415])
pd1 = fitdist(arg_1, 'normal');
YPlot = pdf(pd1,XGrid);
SumYPlot = sum(YPlot);
YPlot = YPlot(1,:)*(length(YPlot)/SumYPlot/length(BinHeight));
hLine = plot(XGrid,YPlot,'Color',[1 0 0],...
    'LineStyle','-', 'LineWidth',2,...
    'Marker','none', 'MarkerSize',6);
LegHandles(end+1) = hLine;
%LegText{end+1} = 'fit 25';

% Adjust figure
box on;
hold off;

% Create legend from accumulated handles and labels
hLegend = legend(LegHandles,LegText,'Orientation', 'vertical', 'Location', 'NorthEast');
set(hLegend,'Interpreter','none');
