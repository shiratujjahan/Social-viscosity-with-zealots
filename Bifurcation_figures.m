%%
%direct reciprocity with zealous cooperators
clc;
clear;
close all;
yc=0.01;
alpha=0.6;
x1=(1+yc)/(alpha+yc)
b=linspace(x1,10);
b=b(2:end);
xc=ones(size(b));
plot(b,xc,'k','Linewidth',4)
hold on;
t=linspace(0,1,20);
b1=x1*ones(size(t));
plot(b1,t,'k--','Linewidth',4)
hold on;
u=(1 -alpha + yc - b* yc)/((-1 + b)* alpha);
x2=u*ones(size(b));
plot(b,x2,'k--','Linewidth',4);
hold on;
plot(x1,1,'ko','Linewidth',3,'MarkerSize',10);
hold on;
xlim([1,10])
ylim([0,1]);
text(1.25,0.3,'Unstable Region','Rotation',90,'FontSize',12,'FontWeight','bold');
text(3.25,0.05,'Unstable Region','FontSize',12,'FontWeight','bold');
xlabel('$\textbf{b}$', 'Interpreter', 'latex')
ylabel('\textbf{Stability}', 'Interpreter', 'latex');
title('Direct reciprocity');
set(gcf, 'Color', 'w');  % white background
set(gca, 'FontSize', 18);  % readable fonts
set(gca, 'FontWeight', 'bold');  % Bold tick labels and axes lines
set(gca, 'XScale','log');

%%
%direct reciprocity with zealous defectors
clc;
clear;
close all;
yd=0.07;
alpha=0.6;
x1=(alpha+yd-2*alpha*yd+alpha^2*yd+yd^2-2*alpha*yd^2+alpha^2*yd^2)/(alpha-yd+alpha*yd)^2+2*sqrt((alpha*yd-2*alpha^2*yd+alpha^3*yd+alpha*yd^2-2*alpha^2*yd^2+alpha^3*yd^2)/(alpha-yd+alpha*yd)^4)
b=linspace(x1,10);
xc1=(-1+2*alpha-b.*alpha-yd+b.*yd+alpha*yd-alpha*yd.*b-sqrt(4*alpha*(b-1)*(-1+alpha-yd+alpha*yd)+(1-2*alpha+alpha.*b+yd-yd.*b-alpha*yd+alpha*yd.*b).^2))./(2*alpha.*(1-b));
b=b(2:end);
xc=xc1(2:end);
plot(b,xc,'k','Linewidth',4)
hold on;
t=linspace(0,1,20);
b1=x1*ones(size(t));
plot(b1,t,'k--','Linewidth',4)
hold on;
%x2=(-1 + 2 *alpha - b *alpha  - yd + b* yd + alpha * yd - b* alpha  *yd - Sqrt(-4 *(alpha  - b* alpha )* (-1 + alpha  - yd + alpha * yd) + (1 - 2 *alpha  +  b* alpha  + yd - b* yd - alpha * yd + b *alpha * yd).^2))./(2* (alpha  - b* alpha ));
x2=0.5*ones(size(b));
plot(b,x2,'k--','Linewidth',4);
hold on;
plot(x1,xc(1),'ko','Linewidth',3,'markerSize',10);
hold on;
xlim([1,10]);
text(1.5,0.3,'Unstable Region','Rotation',90,'FontSize',12,'FontWeight','bold');
text(3.5,0.3,'Unstable Region','FontSize',12,'FontWeight','bold');
xlabel('$\textbf{b}$', 'Interpreter', 'latex')
ylabel('\textbf{Stability}', 'Interpreter', 'latex');
title('Direct reciprocity');
set(gcf, 'Color', 'w');  % white background
set(gca, 'FontSize', 18);  % readable fonts
set(gca, 'FontWeight', 'bold');  % Bold tick labels and axes lines
set(gca, 'XScale','log');
%%
%direct reciprocity without zealots
clc;
clear;
close all;
alpha=0.6;
x1=1/alpha;
b1=linspace(1,x1);
b1=b1(1:end-1);
xc1=zeros(size(b1));
plot(b1,xc1,'k','Linewidth',4)
hold on;
plot(x1,1,'ok','Linewidth',3,'MarkerSize',10)
hold on;
h=0.07;
plot([x1 x1],[0-h/2 0+h/2],'k','LineWidth',4)
b2=linspace(x1,10);
xc2=ones(size(b2));
plot(b2,xc2,'k','Linewidth',4)
hold on;
xc2=zeros(size(b2));
plot(b2,xc2,'k','Linewidth',4)
hold on;
xc2=0.2.*ones(size(b2));
plot(b2,xc2,'k--','Linewidth',4)
hold on;
xlim([1,10]);
xlabel('$\textbf{b}$', 'Interpreter', 'latex')
ylabel('\textbf{Stability}', 'Interpreter', 'latex');
title('Direct reciprocity');
set(gcf, 'Color', 'w');  % white background
set(gca, 'FontSize', 18);  % readable fonts
set(gca, 'FontWeight', 'bold');  % Bold tick labels and axes lines
xlim([1,10]);
ylim([0,1]);
set(gca,'Clipping','off');
set(gca, 'XScale','log');
%%
%indirect reciprocity with zealous cooperators
clc;
clear;
close all;
yc=0.01;
q=0.6;
x1=(1+yc)/(q+yc)
b=linspace(x1,10);
b=b(2:end);
xc=ones(size(b));
plot(b,xc,'k','Linewidth',4)
hold on;
t=linspace(0,1,20);
b1=x1*ones(size(t));
plot(b1,t,'k--','Linewidth',4)
hold on;
plot(x1,1,'ko','Linewidth',3,'MarkerSize',10);
hold on;
u=(1 -q + yc - b* yc)/((-1 + b)* q);
x2=u*ones(size(b));
plot(b,x2,'k--','Linewidth',4);
hold on;
xlim([1,10])
text(1.25,0.3,'Unstable Region','Rotation',90,'FontSize',12,'FontWeight','bold');
text(3.25,0.05,'Unstable Region','FontSize',12,'FontWeight','bold');
xlabel('$\textbf{b}$', 'Interpreter', 'latex')
ylabel('\textbf{Stability}', 'Interpreter', 'latex');
title('Indirect reciprocity');
set(gcf, 'Color', 'w');  % white background
set(gca, 'FontSize', 18);  % readable fonts
set(gca, 'FontWeight', 'bold');  % Bold tick labels and axes lines
set(gca, 'XScale','log');
%%
%indirect reciprocity with zealous defectors
clc;
clear;
close all;
yd=0.07;
q=0.6;
x1=(q+yd-2*q*yd+q^2*yd+yd^2-2*q*yd^2+q^2*yd^2)/(q-yd+q*yd)^2+2*sqrt((q*yd-2*q^2*yd+q^3*yd+q*yd^2-2*q^2*yd^2+q^3*yd^2)/(q-yd+q*yd)^4)
b=linspace(x1,10);
xc1=(-1+2*q-b.*q-yd+b.*yd+q*yd-q*yd.*b-sqrt(4*q*(b-1)*(-1+q-yd+q*yd)+(1-2*q+q.*b+yd-yd.*b-q*yd+q*yd.*b).^2))./(2*q.*(1-b));
b=b(2:end);
xc=xc1(2:end);
plot(b,xc,'k','Linewidth',4)
hold on;
t=linspace(0,1,20);
b1=x1*ones(size(t));
plot(b1,t,'k--','Linewidth',4)
hold on;
x2=0.5*ones(size(b));
plot(b,x2,'k--','Linewidth',4)
plot(x1,xc(1),'ko','Linewidth',3,'MarkerSize',10);
hold on;
xlim([1,10]);
text(1.5,0.3,'Unstable Region','Rotation',90,'FontSize',12,'FontWeight','bold');
text(3.5,0.3,'Unstable Region','FontSize',12,'FontWeight','bold');
xlabel('$\textbf{b}$', 'Interpreter', 'latex')
ylabel('\textbf{Stability}', 'Interpreter', 'latex');
title('Indirect reciprocity');
set(gcf, 'Color', 'w');  % white background
set(gca, 'FontSize', 18);  % readable fonts
set(gca, 'FontWeight', 'bold');  % Bold tick labels and axes lines
set(gca, 'XScale','log');
%%
%indirect reciprocity without zealots
clc;
clear;
close all;
q=0.6;
x1=1/q;
b1=linspace(1,x1);
b1=b1(1:end-1);
xc1=zeros(size(b1));
plot(b1,xc1,'k','Linewidth',4)
hold on;
b2=linspace(x1,10);
xc2=ones(size(b2));
plot(b2,xc2,'k','Linewidth',4)
hold on;
xc2=zeros(size(b2));
plot(b2,xc2,'k','Linewidth',4)
hold on;
plot(x1,1,'ok','linewidth',3,'MarkerSize',10);
hold on;
h=0.07;
plot([x1 x1],[0-h/2 0+h/2],'k','LineWidth',4);
xc2=0.2.*ones(size(b2));
plot(b2,xc2,'k--','Linewidth',4)
hold on;
xlim([1,10]);
ylim([0,1]);
xlabel('$\textbf{b}$', 'Interpreter', 'latex')
ylabel('\textbf{Stability}', 'Interpreter', 'latex');
title('Indirect reciprocity');
set(gcf, 'Color', 'w');  % white background
set(gca, 'FontSize', 18);  % readable fonts
set(gca, 'FontWeight', 'bold');  % Bold tick labels and axes lines
set(gca,'Clipping','off');
set(gca, 'XScale','log');
%%
%kin selection with zealous cooperators
clc;
clear;
close all;
yc=0.01;
r=0.4;
x1=(1+(1+r)*yc)/(r+(1+r)*yc);
b=linspace(x1,10);
b=b(2:end);
xc=ones(size(b));
plot(b,xc,'k','Linewidth',4)
hold on;
t=linspace(0,1,20);
b1=x1*ones(size(t));
plot(b1,t,'k--','Linewidth',4)
hold on;
plot(x1,1,'ko','Linewidth',3,'MarkerSize',10);
hold on;
xlim([1,10])
text(1.75,0.3,'Unstable Region','Rotation',90,'FontSize',12,'FontWeight','bold');
xlabel('$\textbf{b}$', 'Interpreter', 'latex')
ylabel('\textbf{Stability}', 'Interpreter', 'latex');
title('Kin selection');
set(gcf, 'Color', 'w');  % white background
set(gca, 'FontSize', 18);  % readable fonts
set(gca, 'FontWeight', 'bold');  % Bold tick labels and axes lines
set(gca, 'XScale','log');
%%
%kin selection with zealous defectors
clc;
clear;
close all;
yd=0.001;
r=0.4;
x1=1/r;
b=linspace(x1,10);
b=b(2:end);
xc=((r.*b-1).*(1+yd))./(-1+r.*b-yd+yd.*b-r*yd+r*yd.*b);
l=xc(1)
plot(x1,l,'ko','Linewidth',3,'markerSize',10);
hold on;
plot(b,xc,'k','Linewidth',4)
hold on;
h=0.1;
plot([x1 x1],[0-h/2 0+h/2],'k','LineWidth',4);
hold on;
t=linspace(0,1,20);
y=x1.*ones(size(t));
plot(y,t,'k--','Linewidth',4)
hold on;
xlim([1,10])
ylim([0,1])
text(1.75,0.3,'Unstable Region','Rotation',90,'FontSize',12,'FontWeight','bold');
xlabel('$\textbf{b}$', 'Interpreter', 'latex')
ylabel('\textbf{Stability}', 'Interpreter', 'latex');
title('Kin selection');
set(gcf, 'Color', 'w');  % white background
set(gca, 'FontSize', 18);  % readable fonts
set(gca, 'FontWeight', 'bold');  % Bold tick labels and axes lines
set(gca, 'XScale','log');
set(gca,'Clipping','off');
%%
%kin selection without zealots
clc;
clear;
close all;
r=0.4;
x1=1/r;
b=linspace(1,x1);
xc=zeros(size(b));
plot(b,xc,'k','Linewidth',4);
hold on;
b=linspace(x1,10);
xc=ones(size(b));
plot(b,xc,'k','Linewidth',4);
hold on;
t=linspace(0,1,20);
b=x1.*ones(size(t));
plot(b,t,'k--','Linewidth',4);
hold on;
xlim([1,10])
xlabel('$\textbf{b}$', 'Interpreter', 'latex')
ylabel('\textbf{Stability}', 'Interpreter', 'latex');
title('Kin selection');
set(gcf, 'Color', 'w');  % white background
set(gca, 'FontSize', 18);  % readable fonts
set(gca, 'FontWeight', 'bold');  % Bold tick labels and axes lines
set(gca, 'XScale','log');
%% 
%group selection with zealous cooperators
clc;
clear;
close all;
yc=0.001;
m=4;
n=6;
x1=(m+n+(m+n)*yc)/(m+(m+n)*yc);
b=linspace(x1,10);
b=b(2:end);
xc=ones(size(b));
plot(b,xc,'k','Linewidth',4)
hold on;
t=linspace(0,1,20);
b1=x1*ones(size(t));
plot(b1,t,'k--','Linewidth',4)
hold on;
plot(x1,1,'ko','Linewidth',3,'MarkerSize',10);
hold on;
xlim([1,10])
text(1.75,0.3,'Unstable Region','Rotation',90,'FontSize',12,'FontWeight','bold');
xlabel('$\textbf{b}$', 'Interpreter', 'latex')
ylabel('\textbf{Stability}', 'Interpreter', 'latex');
title('Group selection');
set(gcf, 'Color', 'w');  % white background
set(gca, 'FontSize', 18);  % readable fonts
set(gca, 'FontWeight', 'bold');  % Bold tick labels and axes lines
set(gca, 'XScale','log');
%%
%group selection with zealous defectors
clc;
clear;
close all;
yd=0.01;
m=4;
n=6
x1=(m+n)/m;
b=linspace(x1,10);
b=b(2:end)
xc=((m.*(b-1)-n).*(1+yd))./(m*(1+yd).*(b-1)+n*(-1+yd.*(b-1)));
plot(b,xc,'k','Linewidth',4)
hold on;
xl=xc(1);
plot(x1,xl,'ko','MarkerSize',10,'Linewidth',3);
h=0.1;
plot([x1 x1],[0-h/2 0+h/2],'k','LineWidth',4);
hold on;
t=linspace(0,1,20);
y=x1.*ones(size(t));
plot(y,t,'k--','Linewidth',4)
hold on;
xlim([1,10])
ylim([0,1])
text(1.75,0.3,'Unstable Region','Rotation',90,'FontSize',12,'FontWeight','bold');
xlabel('$\textbf{b}$', 'Interpreter', 'latex')
ylabel('\textbf{Stability}', 'Interpreter', 'latex');
title('Group selection');
set(gcf, 'Color', 'w');  % white background
set(gca, 'FontSize', 18);  % readable fonts
set(gca, 'FontWeight', 'bold');  % Bold tick labels and axes lines
set(gca, 'XScale','log');
set(gca,'Clipping','off');
%%
% group selection without zealots
clc;
clear;
close all;
m=4;
n=6;
x1=(m+n)/m;
b=linspace(1,x1);
xc=zeros(size(b));
plot(b,xc,'k','Linewidth',4);
hold on;
b=linspace(x1,10);
xc=ones(size(b));
plot(b,xc,'k','Linewidth',4);
hold on;
t=linspace(0,1,20);
b=x1.*ones(size(t));
plot(b,t,'k--','Linewidth',4);
hold on;
xlim([1,10])
xlabel('$\textbf{b}$', 'Interpreter', 'latex')
ylabel('\textbf{Stability}', 'Interpreter', 'latex');
title('Group selection');
set(gcf, 'Color', 'w');  % white background
set(gca, 'FontSize', 18);  % readable fonts
set(gca, 'FontWeight', 'bold');  % Bold tick labels and axes lines
set(gca, 'XScale','log');
%%
%network reciprocity with zealous cooperators
clc;
clear;
close all;
yc=0.01;
k=3;
x1=(-2*yc-k*yc+k^2*(1+yc))/(k-2*yc-k*yc+k^2*yc);
b=linspace(x1,10);
b=b(2:end);
xc=ones(size(b));
plot(b,xc,'k','Linewidth',4)
hold on;
t=linspace(0,1,20);
b1=x1*ones(size(t));
plot(b1,t,'k--','Linewidth',4)
hold on;
plot(x1,1,'ko','Linewidth',3,'MarkerSize',10);
hold on;
xlim([2,10])
text(2.5,0.3,'Unstable Region','Rotation',90,'FontSize',12,'FontWeight','bold');
xlabel('$\textbf{b}$', 'Interpreter', 'latex')
ylabel('\textbf{Stability}', 'Interpreter', 'latex');
title('Network reciprocity');
set(gcf, 'Color', 'w');  % white background
set(gca, 'FontSize', 18);  % readable fonts
set(gca, 'FontWeight', 'bold');  % Bold tick labels and axes lines
set(gca, 'XScale','log');
%%
%network reciprocity with zealous defectors
clc;
clear;
close all;
yd=0.001;
k=4;
x1=k;
b=linspace(x1,10);
b=b(2:end)
xc=((b-k).*k*(1+yd))./(k.*b-k^2+2*yd-2*yd.*b+k*yd-k*yd.*b-k^2*yd+k^2*yd.*b);
plot(b,xc,'k','Linewidth',4)
hold on
xl=xc(1);
plot(x1,xl,'ko','MarkerSize',10,'Linewidth',3);
%plot(x1,0,'ko','MarkerFaceColor','k','MarkerSize',10,'Linewidth',3);
h=0.1;
plot([x1 x1],[0-h/2 0+h/2],'k','LineWidth',4);
hold on;
t=linspace(0,1,10);
y=x1.*ones(size(t));
plot(y,t,'k--','Linewidth',4)
hold on;
xlim([2,10])
ylim([0,1])
text(2,0.3,'Unstable Region','Rotation',90,'FontSize',12,'FontWeight','bold');
xlabel('$\textbf{b}$', 'Interpreter', 'latex')
ylabel('\textbf{Stability}', 'Interpreter', 'latex');
title('Network reciprocity');
set(gcf, 'Color', 'w');  % white background
set(gca, 'FontSize', 18);  % readable fonts
set(gca, 'FontWeight', 'bold');  % Bold tick labels and axes lines
set(gca, 'XScale','log');
set(gca,'Clipping','off');
%%
%network reciprocity without zealots
clc;
clear;
close all;
k=4;
x1=k;
b=linspace(1,x1);
xc=zeros(size(b));
plot(b,xc,'k','Linewidth',4);
hold on;
b=linspace(x1,10);
xc=ones(size(b));
plot(b,xc,'k','Linewidth',4);
hold on;
t=linspace(0,1,20);
b=x1.*ones(size(t));
plot(b,t,'k--','Linewidth',4);
hold on;
xlim([2,10])
xlabel('$\textbf{b}$', 'Interpreter', 'latex')
ylabel('\textbf{Stability}', 'Interpreter', 'latex');
title('Network reciprocity');
set(gcf, 'Color', 'w');  % white background
set(gca, 'FontSize', 18);  % readable fonts
set(gca, 'FontWeight', 'bold');  % Bold tick labels and axes lines
set(gca, 'XScale','log');

