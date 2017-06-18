function createfigure1(X1, Y1, STRING, type)
%CREATEFIGURE(X1,Y1)
%  X1:  vector of x data
%  Y1:  vector of y data

%  Auto-generated by MATLAB on 17-Apr-2017 19:33:26

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1,'YGrid','on','XGrid','on','FontSize',16);
box(axes1,'on');
hold(axes1,'all');

% Create plot
plot(X1,Y1);

% Create title
title(STRING,'Interpreter','latex','FontSize',20);

% Create xlabel
xlabel('Tiempo (segundos)','Interpreter','latex','FontSize',20);

% Create ylabel
if(type == 1)
    ylabel('Altura','Interpreter','latex','FontSize',20);
elseif(type == 2)
    ylabel('Voltaje','Interpreter','latex','FontSize',20);
end
set(figure1, 'Position', get(0,'Screensize'));

end
