%%%% Script for Fig1a - comparing ODE dynamics and IBM2 dynamics %%%%
% reset the environment
clear all; clc;
% goes to the folder the current script is in
% and add this path into searching path for future use
cd(fileparts(matlab.desktop.editor.getActiveFilename))
addpath(fullfile(pwd));

% load data
disp('loading data files for plotting FIG. 1a...')
load('./input/fig1/all_data_IBM2.mat');
disp('data loaded!');
set(gcf,'Visible','on');
%% construct the sections of parameter space
clf;
set(gcf,'visible','off');
gcf_print_format(gcf, 'w', [11 9]);
disp('Generating the figure: dynamics of individaul-based model with 2 players...')
%%% A0 background
sections_A0_fig1(10, 10, 1, [0.03 0.05 .9 .9]);
box off
set(gca,'Xcolor','w')
set(gca,'Ycolor','w')
% discription of sections
text(-2.5, -1.5,'TOC','FontSize',22,'FontWeight','bold')
text(-3.5, .5,'o-TOC','FontSize',22,'FontWeight','bold')
text(-2.6, 3.2,'o-TOC','FontSize',22,'FontWeight','bold')
text(.1, 3.2,'TOC','FontSize',22,'FontWeight','bold')
text(1.2, .5,'TOC','FontSize',22,'FontWeight','bold')
text(1.2, -.5,'TOC','FontSize',22,'FontWeight','bold')
text(.1, -2.3,'TOC','FontSize',22,'FontWeight','bold')

%%% 3rd quandrant
p1 = axes('Units', 'normalized','position',[0.21 0.18 0.23 0.23]);
% plot ODE solutions
ODEPlot = all_data_ns.A0_R5S5d5T6P6.ODE{1,2};
plot(ODEPlot(:,2), ODEPlot(:,3),'Color',[.8 .8 .8],'LineWidth',5); hold on;
% overlay the IBM dynamics on top
samplePlot = all_data_ns.A0_R5S5d5T6P6.avg{1,2};
plot(samplePlot(:,2), samplePlot(:,3),'k','LineWidth',2); hold on;
% plot a few arrows of the flow 
quiver_xn_plot(samplePlot(6,2),samplePlot(6,3),samplePlot,...
    12, [-0.02, 0.0]);hold on;
% formatting the current axes
gca_format(p1, 0, 14, [0 1 0 1], [0 1], [0 1],...
    'Cooperator, x', 'Environment, n');
legend({'ODE','IBM2'},...
    'Location','southoutside','Orientation','horizontal',...
    'Interpreter','latex','FontSize',24)
legend('boxoff')
axis square
box on;

%%% 2nd quandrant - 1
p1 = axes('Units', 'normalized','position',[0.17 0.58 0.13 0.13]);
ODEPlot = all_data_ns.A0_R1d5S5d5T1P6.ODE{1,2};
plot(ODEPlot(:,2), ODEPlot(:,3),'Color',[.7 .7 .7],'LineWidth',5); hold on;
samplePlot = all_data_ns.A0_R1d5S5d5T1P6.IBM{1,2};
plot(samplePlot(:,2), samplePlot(:,3),'k','LineWidth',2); hold on;
quiver_xn_plot(samplePlot(55,2),samplePlot(55,3),samplePlot,...
    12, [0.02, 0.0]); hold on;
quiver_xn_plot(samplePlot(82,2),samplePlot(82,3),samplePlot,...
    12, [-0.03, 0.]); hold on;
quiver_xn_plot(samplePlot(157,2),samplePlot(157,3),samplePlot,...
    12, [0.05, 0.]); hold on;
quiver_xn_plot(samplePlot(215,2),samplePlot(215,3),samplePlot,...
    12, [-0.05, 0.]); hold on;
gca_format(p1, 0, 14, [0 1 0 1], [0 1], [0 1],...
    'Cooperator, x', 'Environment, n');
axis square
box on;

%%% 2nd quandrant - 2
p1 = axes('Units', 'normalized','position',[0.32 0.76 0.13 0.13]);
ODEPlot = all_data_ns.A0_R2d5S5d5T1P6.ODE{1,2};
plot(ODEPlot(:,2), ODEPlot(:,3),'Color',[.7 .7 .7],'LineWidth',5); hold on;
samplePlot = all_data_ns.A0_R2d5S5d5T1P6.IBM{1,2};
plot(samplePlot(:,2), samplePlot(:,3),'k','LineWidth',2); hold on;
quiver_xn_plot(samplePlot(55,2),samplePlot(55,3),samplePlot,...
    12, [0.02, 0.0]); hold on;
quiver_xn_plot(samplePlot(82,2),samplePlot(82,3),samplePlot,...
    12, [-0.03, 0.]); hold on;
quiver_xn_plot(samplePlot(157,2),samplePlot(157,3),samplePlot,...
    12, [0.05, 0.]); hold on;
quiver_xn_plot(samplePlot(215,2),samplePlot(215,3),samplePlot,...
    12, [-0.05, 0.]); hold on;
gca_format(p1, 0, 14, [0 1 0 1], [0 1], [0 1],...
    'Cooperator, x', 'Environment, n');
axis square
box on;

%%% 1st quandrant
p1 = axes('Units', 'normalized','position',[0.52 0.76 0.13 0.13]);
ODEPlot = all_data_ns.A0_R2d5S1d5T1P1.ODE{1,2};
plot(ODEPlot(:,2), ODEPlot(:,3),'Color',[.7 .7 .7],'LineWidth',5); hold on;
samplePlot = all_data_ns.A0_R2d5S1d5T1P1.avg{1,2};
plot(samplePlot(:,2), samplePlot(:,3),'k','LineWidth',2); hold on;
quiver_xn_plot(samplePlot(6,2),samplePlot(6,3),samplePlot,...
    12, [-0.05, -0.025]);hold on;
gca_format(p1, 0, 14, [0 1 0 1], [0 1], [0 1],...
    'Cooperator, x', 'Environment, n');
axis square
box on;


%%% 1st quandrant - 2
p1 = axes('Units', 'normalized','position',[0.7 0.58 0.13 0.13]);
ODEPlot = all_data_ns.A0_R1d5S1d5T1P1.ODE{1,2};
plot(ODEPlot(:,2), ODEPlot(:,3),'Color',[.7 .7 .7],'LineWidth',5); hold on;
samplePlot = all_data_ns.A0_R1d5S1d5T1P1.avg{1,2};
plot(samplePlot(:,2), samplePlot(:,3),'k','LineWidth',2); hold on;
quiver_xn_plot(samplePlot(6,2),samplePlot(6,3),samplePlot,...
    12, [-0.05, -0.025]);hold on;
gca_format(p1, 0, 14, [0 1 0 1], [0 1], [0 1],...
    'Cooperator, x', 'Environment, n');
axis square
box on;

%%% 4th quandrant
p1 = axes('Units', 'normalized','position',[0.7 0.34 0.13 0.13]);
ODEPlot = all_data_ns.A0_R5d5S1d5T6P1.ODE{1,2};
plot(ODEPlot(:,2), ODEPlot(:,3),'Color',[.7 .7 .7],'LineWidth',5); hold on;
samplePlot = all_data_ns.A0_R5d5S1d5T6P1.avg{1,2};
plot(samplePlot(:,2), samplePlot(:,3),'k','LineWidth',2); hold on;
quiver_xn_plot(samplePlot(4,2),samplePlot(4,3),samplePlot,...
    12, [-0.05, -0.02]);hold on;
gca_format(p1, 0, 14, [0 1 0 1], [0 1], [0 1],...
    'Cooperator, x', 'Environment, n');
axis square
box on;

%%% 4th quandrant - 2
p1 = axes('Units', 'normalized','position',[0.52 0.16 0.13 0.13]);
ODEPlot = all_data_ns.A0_R4d5S1d5T6P1.ODE{1,2};
plot(ODEPlot(:,2), ODEPlot(:,3),'Color',[.7 .7 .7],'LineWidth',5); hold on;
samplePlot = all_data_ns.A0_R4d5S1d5T6P1.avg{1,2};
plot(samplePlot(:,2), samplePlot(:,3),'k','LineWidth',2); hold on;
quiver_xn_plot(samplePlot(4,2),samplePlot(4,3),samplePlot,...
    12, [-0.05, -0.01]);hold on;
gca_format(p1, 0, 14, [0 1 0 1], [0 1], [0 1],...
    'Cooperator, x', 'Environment, n');
axis square
box on;

set(gcf,'renderer','Painters');
print(gcf,['./output/fig1a'],'-dpdf','-r600')
disp('FIG. 1a was generated!')