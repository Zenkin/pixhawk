function plot_graph(X1, YMatrix1)

figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create multiple lines using matrix input to plot
plot1 = plot(X1,YMatrix1,'Parent',axes1);
set(plot1(1),'DisplayName','data(:,1)');
set(plot1(2),'DisplayName','data(:,2)');
set(plot1(3),'DisplayName','data(:,3)');
set(plot1(4),'DisplayName','data(:,4)');
set(plot1(5),'DisplayName','data(:,5)');
set(plot1(6),'DisplayName','data(:,6)');
set(plot1(7),'DisplayName','data(:,7)');

% Create ylabel
ylabel('\alpha(t), degree');

% Create xlabel
xlabel('t, sec');

box(axes1,'on');
% Set the remaining axes properties
set(axes1,'XGrid','on','YGrid','on');
