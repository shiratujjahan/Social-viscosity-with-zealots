%%
%direct reciprocity without zealots
clc;
clear;
close all;
syms xc yc w w1 
b=2;
r=b-1;
s=-1;
t=b;
p=0;
w=1;
w1=0.6;
yc=0;
R=r/(1-w1);
S=s+(w1*p)/(1-w1);
T=t+(w1*p)/(1-w1);
P=p/(1-w1);
f1=@(xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc);
s1=solve(f1(xc)==0,xc)
f=@(t,xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc);
options = odeset('RelTol', 1e-100, 'AbsTol', 1e-100);
[t sol]=ode45(f,[0,50],0.7);
plot(t,sol,'k-','Linewidth',2);
hold on;
[t sol]=ode45(f,[0,50],0.68);
plot(t,sol,'k-','Linewidth',2);
hold on;
[t sol]=ode45(f,[0,50],0.75);
plot(t,sol,'k-','Linewidth',2);
[t sol]=ode45(f,[0,50],0.3);
plot(t,sol,'k-','Linewidth',2);
axis([0 50 0 1]);
hold on;
b=1.5;
r=b-1;
s=-1;
t=b;
p=0;
w=1;
w1=0.6;
yc=0;
R=r/(1-w1);
S=s+(w1*p)/(1-w1);
T=t+(w1*p)/(1-w1);
P=p/(1-w1);
f1=@(xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc);
s1=solve(f1(xc)==0,xc)
f=@(t,xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc);
[t sol]=ode45(f,[0,50],0.4);
plot(t,sol,'k-','Linewidth',2);
hold on;
[t sol]=ode45(f,[0,50],0.2);
plot(t,sol,'k-','Linewidth',2);
hold on;
[t sol]=ode45(f,[0,50],0.8);
plot(t,sol,'k-','Linewidth',2);
hold on;
[t sol]=ode45(f,[0,50],0.75);
plot(t,sol,'k-','Linewidth',2);
hold on;
title('Direct reciprocity');
axis([0 50 0 1]);
hold on;
xlabel('\textbf{Time $\textbf{(t)}$}', 'Interpreter', 'latex')
ylabel('\textbf{Fraction of Cooperators $\textbf{(x)}$}', 'Interpreter', 'latex');
set(gcf, 'Color', 'w');  % white background
set(gca, 'FontSize', 18);  % readable fonts
set(gca, 'FontWeight', 'bold');  % Bold tick labels and axes lines
%%
clc;
clear;
close all;
syms xc yc w w1 
%direct reciprocity with zealous cooperators
b=3;
r=b-1;
s=-1;
t=b;
p=0;
w=1;
w1=0.6;
yc=0.01;
R=r/(1-w1);
S=s+(w1*p)/(1-w1);
T=t+(w1*p)/(1-w1);
P=p/(1-w1);
f1=@(xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc)/((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))+(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P)));
s1=solve(f1(xc)==0,xc)
f=@(t,xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc)/((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))+(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P)));
[t sol]=ode45(f,[0,50],0.4);
plot(t,sol,'k-','Linewidth',2)
axis([0 50 0 1]);
hold on;
s=(1 - w1 + yc - b* yc)/((-1 + b)* w1)
y = s * ones(size(t));
plot(t,y,'k--','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,50],0.35);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,50],0.5);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,50],0.6);
plot(t,sol,'k','Linewidth',2)
xlabel('\textbf{Time $\textbf{(t)}$}', 'Interpreter', 'latex')
ylabel('\textbf{Fraction of Cooperators $\textbf{(x)}$}', 'Interpreter', 'latex');
title('Direct reciprocity')
set(gcf, 'Color', 'w');  % white background
set(gca, 'FontSize', 18);  % readable fonts
set(gca, 'FontWeight', 'bold');  % Bold tick labels and axes lines
ylim([0,1]);
%%
clc;
clear;
close all;
syms xc yc w w1 
%indirect reciprocity with zealous cooperators
b=3;
r=b-1;
s=-1;
t=b;
p=0;
w=1;
q=0.6;
yc=0.01;
R=r;
S=s*(1-q)+q*p;
T=t*(1-q)+q*p;
P=p;
f1=@(xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc)/((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))+(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P)));
s1=solve(f1(xc)==0,xc)
subs(simplify(diff(f1(xc))),s1(1))
subs(simplify(diff(f1(xc))),s1(2))
f=@(t,xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc)/((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))+(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P)));
[t sol]=ode45(f,[0,50],0.4);
plot(t,sol,'k','Linewidth',2)
hold on;
axis([0 50 0 1]);
s=(1 - q + yc - b *yc)/((-1 + b)* q)
y = s * ones(size(t));
plot(t,y,'k--','Linewidth',2);
hold on;
[t sol]=ode45(f,[0,50],0.4);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,50],0.45);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,50],0.6);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,50],0.7);
plot(t,sol,'k','Linewidth',2)
xlabel('\textbf{Time $\textbf{(t)}$}', 'Interpreter', 'latex')
ylabel('\textbf{Fraction of Cooperators $\textbf{(x)}$}', 'Interpreter', 'latex');
title('Indirect reciprocity');
set(gcf, 'Color', 'w');  % white background
set(gca, 'FontSize', 18);  % readable fonts
set(gca, 'FontWeight', 'bold');  % Bold tick labels and axes lines
%%
%indirect reciprocity without zealots
clc;
clear;
close all;
syms xc yc w w1 
b=1.5;
r=b-1;
s=-1;
t=b;
p=0;
w=1;
q=0.6;
yc=0;
R=r;
S=s*(1-q)+q*p;
T=t*(1-q)+q*p;
P=p;
s=1/q;
f1=@(xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc);
s1=solve(f1(xc)==0,xc)

f=@(t,xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc);
[t sol]=ode45(f,[0,50],0.6);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,50],0.8);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,50],0.4);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,50],0.2);
plot(t,sol,'k','Linewidth',2)

axis([0 50 0 1]);
hold on;

b=2;
r=b-1;
s=-1;
t=b;
p=0;
w=1;
q=0.6;
yc=0;
R=r;
S=s*(1-q)+q*p;
T=t*(1-q)+q*p;
P=p;
f1=@(xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc);
s1=solve(f1(xc)==0,xc)

subs(simplify(diff(f1(xc))),s1(1))
subs(simplify(diff(f1(xc))),s1(2))

f=@(t,xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc);
[t sol]=ode45(f,[0,50],0.7);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,50],0.85);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,50],0.75);
plot(t,sol,'k','Linewidth',2)
axis([0 50 0 1]);
xlabel('\textbf{Time $\textbf{(t)}$}', 'Interpreter', 'latex')
ylabel('\textbf{Fraction of Cooperators $\textbf{(x)}$}', 'Interpreter', 'latex');
title('Indirect reciprocity');
hold on;
set(gcf, 'Color', 'w');  % white background
set(gca, 'FontSize', 18);  % readable fonts
set(gca, 'FontWeight', 'bold');  % Bold tick labels and axes lines
%%
clc;
clear;
close all;
syms xc yc w w1 
%kin selection without zealots
b=2;
r=b-1;
s=-1;
t=b;
p=0;
w=1;
r1=0.4;
yc=0;
R=r;
S=(s+t*r1)/(1+r1);
T=(t+s*r1)/(1+r1);
P=p;
f1=@(xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc)/((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))+(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P)));
s1=solve(f1(xc)==0,xc)
f=@(t,xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc);
[t sol]=ode45(f,[0,100],0.5);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,100],0.7);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,100],0.45);
plot(t,sol,'k','Linewidth',2)
axis tight;
axis([0 100 0 1]);
hold on;
b=3;
r=b-1;
s=-1;
t=b;
p=0;
w=1;
r1=0.4;
yc=0;
R=r;
S=(s+t*r1)/(1+r1);
T=(t+s*r1)/(1+r1);
P=p;
f1=@(xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc)/((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))+(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P)));
s1=solve(f1(xc)==0,xc)
f=@(t,xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc);
[t sol]=ode45(f,[0,100],0.4);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,100],0.6);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,100],0.55);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,100],0.1);
plot(t,sol,'k','Linewidth',2)
hold on;

b=2.5;
r=b-1;
s=-1;
t=b;
p=0;
w=1;
r1=0.4;
yc=0;
R=r;
S=(s+t*r1)/(1+r1);
T=(t+s*r1)/(1+r1);
P=p;
f1=@(xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc)/((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))+(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P)));
s1=solve(f1(xc)==0,xc)
f=@(t,xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc);
[t sol]=ode45(f,[0,100],0.45);
plot(t,sol,'k','Linewidth',2)
axis tight;
axis([0 100 0 1]);
title('Kin selection');

xlabel('\textbf{Time $\textbf{(t)}$}', 'Interpreter', 'latex')
ylabel('\textbf{Fraction of Cooperators $\textbf{(x)}$}', 'Interpreter', 'latex');
title('Without zealots');
set(gcf, 'Color', 'w');  % white background
set(gca, 'FontSize', 18);  % readable fonts
set(gca, 'FontWeight', 'bold');  % Bold tick labels and axes lines
%%
clc;
clear;
close all;
syms xc yc w w1 
%kin selection with zealous cooperators
b=2.5;
r=b-1;
s=-1;
t=b;
p=0;
w=1;
r1=0.4;
yc=0.01;
R=r;
S=(s+t*r1)/(1+r1);
T=(t+s*r1)/(1+r1);
P=p;
f1=@(xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc)/((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))+(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P)));
s1=solve(f1(xc)==0,xc)
f=@(t,xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc)/((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))+(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P)));
[t sol]=ode45(f,[0,1000],0.3);
plot(t,sol,'k','Linewidth',2)
axis tight;
axis([0 1000 0 1]);
hold on;
hold on;
[t sol]=ode45(f,[0,1000],0.35);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,1000],0.5);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,1000],0.6);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,1000],0.001);
semilogy(t,sol,'k','Linewidth',2)
xlabel('\textbf{Time $\textbf{(t)}$}', 'Interpreter', 'latex')
ylabel('\textbf{Fraction of Cooperators $\textbf{(x)}$}', 'Interpreter', 'latex');
title('With zealous cooperators');
set(gcf, 'Color', 'w');  % white background
set(gca, 'FontSize', 18);  % readable fonts
set(gca, 'FontWeight', 'bold');  % Bold tick labels and axes lines
%%
clc;
clear;
close all;
syms xc yc w w1 
%network reciprocity with zealous cooperators
b=3; % b=2.714
r=b-1;
s=-1;
t=b;
p=0;
w=1;
k=3;
h=((k+1)*(r-p)-t+s)/((k+1)*(k-2));
yc=0.01;
R=r;
S=s+h;
T=t-h;
P=p;
f1=@(xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc)/((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))+(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P)));
s1=solve(f1(xc)==0,xc)
subs(simplify(diff(f1(xc))),s1(1))
f=@(t,xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc)/((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))+(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P)));
[t sol]=ode45(f,[0,1000],0.4);
plot(t,sol,'k','Linewidth',2)
axis tight;
axis([0 1000 0 1]);
hold on;
[t sol]=ode45(f,[0,1000],0.5);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,1000],0.6);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,1000],0.1);
semilogy(t,sol,'k','Linewidth',2)
xlabel('\textbf{Time $\textbf{(t)}$}', 'Interpreter', 'latex')
ylabel('\textbf{Fraction of Cooperators $\textbf{(x)}$}', 'Interpreter', 'latex');
title('Network reciprocity');
set(gcf, 'Color', 'w');  % white background
set(gca, 'FontSize', 18);  % readable fonts
set(gca, 'FontWeight', 'bold');  % Bold tick labels and axes lines
%%
clc;
clear;
close all;
syms xc yc w w1 
%network reciprocity without zealots
b=3;
r=b-1;
s=-1;
t=b;
p=0;
w=1;
k=4;
h=((k+1)*(r-p)-t+s)/((k+1)*(k-2));
yc=0.;
R=r;
S=s+h;
T=t-h;
P=p;
f1=@(xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc)/((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))+(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P)));
s1=solve(f1(xc)==0,xc)
subs(simplify(diff(f1(xc))),s1(1))

f=@(t,xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc);
[t sol]=ode45(f,[0,100],0.4);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,100],0.2);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,100],0.6);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,100],0.7);
plot(t,sol,'k','Linewidth',2)
axis tight;
axis([0 100 0 1]);
hold on;
b=4;
r=b-1;
s=-1;
t=b;
p=0;
w=1;
k=4;
h=((k+1)*(r-p)-t+s)/((k+1)*(k-2));
yc=0.;
R=r;
S=s+h;
T=t-h;
P=p;
f1=@(xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc)/((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))+(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P)));
s1=solve(f1(xc)==0,xc)

subs(simplify(diff(f1(xc))),s1(1))
f=@(t,xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc);
[t sol]=ode45(f,[0,100],0.55);
plot(t,sol,'k','Linewidth',2)
hold on;
b=4.2;
r=b-1;
s=-1;
t=b;
p=0;
w=1;
k=4;
h=((k+1)*(r-p)-t+s)/((k+1)*(k-2));
yc=0.;
R=r;
S=s+h;
T=t-h;
P=p;
f1=@(xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc)/((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))+(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P)));
s1=solve(f1(xc)==0,xc)

subs(simplify(diff(f1(xc))),s1(1))
f=@(t,xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc);
[t sol]=ode45(f,[0,100],0.5);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,100],0.25);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,100],0.66);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,100],0.75);
plot(t,sol,'k','Linewidth',2)

axis tight;
axis([0 100 0 1]);
xlabel('\textbf{Time $\textbf{(t)}$}', 'Interpreter', 'latex')
ylabel('\textbf{Fraction of Cooperators $\textbf{(x)}$}', 'Interpreter', 'latex');
title('Network reciprocity');
set(gcf, 'Color', 'w');  % white background
set(gca, 'FontSize', 18);  % readable fonts
set(gca, 'FontWeight', 'bold');  % Bold tick labels and axes lines
%%
clc;
clear;
close all;
syms xc yc w w1 
%group selectiom with zealous cooperators
b=2.5; 
r=b-1;
s=-1;
t=b;
p=0;
w=1;
m=4;
n=6;
yc=0.001;
R=r*(m+n);
S=s*n+m*r;
T=t*n+m*p;
P=p*(m+n);
f1=@(xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc)/((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))+(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P)));
s1=solve(f1(xc)==0,xc)

subs(simplify(diff(f1(xc))),s1(1))


f=@(t,xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc);
[t sol]=ode45(f,[0,1000],0.2);
plot(t,sol,'k','Linewidth',2)

axis tight;
axis([0 1000 0 1]);
hold on;
[t sol]=ode45(f,[0,1000],0.5);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,1000],0.6);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,1000],0.01);
semilogy(t,sol,'k','Linewidth',2)
xlabel('\textbf{Time $\textbf{(t)}$}', 'Interpreter', 'latex')
ylabel('\textbf{Fraction of Cooperators $\textbf{(x)}$}', 'Interpreter', 'latex');
title('Group selection');
set(gcf, 'Color', 'w');  % white background
set(gca, 'FontSize', 18);  % readable fonts
set(gca, 'FontWeight', 'bold');  % Bold tick labels and axes lines
%%
clc;
clear;
close all;
syms xc yc w w1 
%group selectiom without zealots
b=2.47;
r=b-1;
s=-1;
t=b;
p=0;
w=1;
m=4;
n=6;
yc=0;
R=r*(m+n);
S=s*n+m*r;
T=t*n+m*p;
P=p*(m+n);
f1=@(xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc)/((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))+(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P)));
s1=solve(f1(xc)==0,xc)

subs(simplify(diff(f1(xc))),s1(1))


f=@(t,xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc);
[t sol]=ode45(f,[0,100],0.5);
plot(t,sol,'k','Linewidth',2);
hold on;
[t sol]=ode45(f,[0,100],0.3);
plot(t,sol,'k','Linewidth',2);
hold on;
[t sol]=ode45(f,[0,100],0.65);
plot(t,sol,'k','Linewidth',2);
hold on;
[t sol]=ode45(f,[0,100],0.8);
plot(t,sol,'k','Linewidth',2);
axis tight;
hold on;
b=2.6;
r=b-1;
s=-1;
t=b;
p=0;
w=1;
m=4;
n=6;
yc=0;
R=r*(m+n);
S=s*n+m*r;
T=t*n+m*p;
P=p*(m+n);
f1=@(xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc)/((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))+(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P)));
s1=solve(f1(xc)==0,xc)
subs(simplify(diff(f1(xc))),s1(1))
f=@(t,xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc);
[t sol]=ode45(f,[0,100],0.65);
plot(t,sol,'k','Linewidth',2);
hold on;
[t sol]=ode45(f,[0,100],0.85);
plot(t,sol,'k','Linewidth',2);
hold on;
[t sol]=ode45(f,[0,100],0.35);
plot(t,sol,'k','Linewidth',2);
hold on;
[t sol]=ode45(f,[0,100],0.2);
plot(t,sol,'k','Linewidth',2);
hold on;
b=2.5;
r=b-1;
s=-1;
t=b;
p=0;
w=1;
m=4;
n=6;
yc=0;
R=r*(m+n);
S=s*n+m*r;
T=t*n+m*p;
P=p*(m+n);
f1=@(xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc)/((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))+(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P)));
s1=solve(f1(xc)==0,xc)
subs(simplify(diff(f1(xc))),s1(1))
f=@(t,xc)((xc+yc)*(1-w+(w/1+yc)*((xc+yc)*R+(1-xc)*S))*(1-xc)-(1-xc)*(1-w+(w/1+yc)*((xc+yc)*T+(1-xc)*P))*xc);
[t sol]=ode45(f,[0,100],0.33);
plot(t,sol,'k','Linewidth',2);
axis tight;

hold on;
xlabel('\textbf{Time $\textbf{(t)}$}', 'Interpreter', 'latex')
ylabel('\textbf{Fraction of Cooperators $\textbf{(x)}$}', 'Interpreter', 'latex');
title('Group selection');

set(gcf, 'Color', 'w');  % white background
set(gca, 'FontSize', 18);  % readable fonts
set(gca, 'FontWeight', 'bold');  % Bold tick labels and axes lines
%%
clc;
clear;
close all;
syms xc yd w w1 
%direct reciprocity with zealous defectors
b=2.7;
r=b-1;
s=-1;
t=b;
p=0;
w=1;
w1=0.6;
yd=0.07;
R=r/(1-w1);
S=s+(w1*p)/(1-w1);
T=t+(w1*p)/(1-w1);
P=p/(1-w1);
f1=@(xc)(xc*(1-w+(w/1+yd)*(xc*R+(1-xc+yd)*S))*(1-xc)-(1-xc+yd)*(1-w+(w/1+yd)*(xc*T+(1-xc+yd)*P))*xc)/(xc*(1-w+(w/1+yd)*(xc*R+(1-xc+yd)*S))+(1-xc+yd)*(1-w+(w/1+yd)*(xc*T+(1-xc+yd)*P)));
s1=solve(f1(xc)==0,xc)
f=@(t,xc)(xc*(1-w+(w/1+yd)*(xc*R+(1-xc+yd)*S))*(1-xc)-(1-xc+yd)*(1-w+(w/1+yd)*(xc*T+(1-xc+yd)*P))*xc)/(xc*(1-w+(w/1+yd)*(xc*R+(1-xc+yd)*S))+(1-xc+yd)*(1-w+(w/1+yd)*(xc*T+(1-xc+yd)*P)));
[t sol]=ode45(f,[0,50],0.60);
plot(t,sol,'k-','Linewidth',2)

axis([0 50 0 1]);
hold on;
s=double((-1+2*w1-b*w1-yd+b*yd+w1*yd -b*w1*yd+sqrt(double((-4*(w1-b*w1)*(-1+w1-yd+w1*yd)+(1-2*w1+b*w1+yd-b*yd-w1*yd+b*w1*yd)^2))))/(2*(w1- b*w1)));
y = s * ones(size(t));
loglog(t,y,'k--','Linewidth',2)

hold on;
[t sol]=ode45(f,[0,50],0.5);
loglog(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,50],0.54);
loglog(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,50],0.66);
loglog(t,sol,'k','Linewidth',2)
xlabel('\textbf{Time $(t)$}', 'Interpreter', 'latex')
ylabel('\textbf{Fraction of Cooperators $(x)$}', 'Interpreter', 'latex');
title('Direct reciprocity');
set(gcf, 'Color', 'w');  % white background
set(gca, 'FontSize', 18);  % readable fonts
set(gca, 'FontWeight', 'bold');  % Bold tick labels and axes lines

%%
clc;
clear;
close all;
syms xc yd w w1 
%group selectiom with zealous defectors
b=2.6; 
r=b-1;
s=-1;
t=b;
p=0;
w=1;
m=4;
n=6;
yd=0.01;
R=r*(m+n);
S=s*n+m*r;
T=t*n+m*p;
P=p*(m+n);
f1=@(xc)(xc*(1-w+(w/1+yd)*(xc*R+(1-xc+yd)*S))*(1-xc)-(1-xc+yd)*(1-w+(w/1+yd)*(xc*T+(1-xc+yd)*P))*xc)/(xc*(1-w+(w/1+yd)*(xc*R+(1-xc+yd)*S))+(1-xc+yd)*(1-w+(w/1+yd)*(xc*T+(1-xc+yd)*P)));
s1=solve(f1(xc)==0,xc)
f=@(t,xc)(xc*(1-w+(w/1+yd)*(xc*R+(1-xc+yd)*S))*(1-xc)-(1-xc+yd)*(1-w+(w/1+yd)*(xc*T+(1-xc+yd)*P))*xc)/(xc*(1-w+(w/1+yd)*(xc*R+(1-xc+yd)*S))+(1-xc+yd)*(1-w+(w/1+yd)*(xc*T+(1-xc+yd)*P)));
[t sol]=ode45(f,[0,10000],0.2);
plot(t,sol,'k','Linewidth',2)

axis tight;
axis([0 1000 0 1]);
hold on;
[t sol]=ode45(f,[0,1000],0.5);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,1000],0.6);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,1000],0.01);
semilogy(t,sol,'k','Linewidth',2)
xlabel('Time $(t)$', 'Interpreter', 'latex')
ylabel('Fraction of Cooperators $(x)$', 'Interpreter', 'latex');
set(gcf, 'Color', 'w');  % white background
set(gca, 'FontSize', 14);  % readable fonts

b=2.5; 
r=b-1;
s=-1;
t=b;
p=0;
w=1;
m=4;
n=6;
yd=0.01;
R=r*(m+n);
S=s*n+m*r;
T=t*n+m*p;
P=p*(m+n);
f1=@(xc)(xc*(1-w+(w/1+yd)*(xc*R+(1-xc+yd)*S))*(1-xc)-(1-xc+yd)*(1-w+(w/1+yd)*(xc*T+(1-xc+yd)*P))*xc)/(xc*(1-w+(w/1+yd)*(xc*R+(1-xc+yd)*S))+(1-xc+yd)*(1-w+(w/1+yd)*(xc*T+(1-xc+yd)*P)));
s1=solve(f1(xc)==0,xc)
f=@(t,xc)(xc*(1-w+(w/1+yd)*(xc*R+(1-xc+yd)*S))*(1-xc)-(1-xc+yd)*(1-w+(w/1+yd)*(xc*T+(1-xc+yd)*P))*xc)/(xc*(1-w+(w/1+yd)*(xc*R+(1-xc+yd)*S))+(1-xc+yd)*(1-w+(w/1+yd)*(xc*T+(1-xc+yd)*P)));
[t sol]=ode45(f,[0,10000],0.4);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,10000],0.5);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,10000],0.7);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,10000],0.82);
plot(t,sol,'k','Linewidth',2)

axis tight;
axis([0 2000 0 1]);
hold on;
xlabel('\textbf{Time $(t)$}', 'Interpreter', 'latex')
ylabel('\textbf{Fraction of Cooperators $(x)$}', 'Interpreter', 'latex');
title('Group selection');
set(gcf, 'Color', 'w');  % white background
set(gca, 'FontSize', 18);  % readable fonts
set(gca, 'FontWeight', 'bold');  % Bold tick labels and axes lines


%%
clc;
clear;
close all;
syms xc yd w w1 
%kin selection with zealous defectors
b=2.6;
r=b-1;
s=-1;
t=b;
p=0;
w=1;
r1=0.4;
yd=0.001;
R=r;
S=(s+t*r1)/(1+r1);
T=(t+s*r1)/(1+r1);
P=p;
f1=@(xc)(xc*(1-w+(w/1+yd)*(xc*R+(1-xc+yd)*S))*(1-xc)-(1-xc+yd)*(1-w+(w/1+yd)*(xc*T+(1-xc+yd)*P))*xc)/(xc*(1-w+(w/1+yd)*(xc*R+(1-xc+yd)*S))+(1-xc+yd)*(1-w+(w/1+yd)*(xc*T+(1-xc+yd)*P)));
s1=solve(f1(xc)==0,xc)
f=@(t,xc)(xc*(1-w+(w/1+yd)*(xc*R+(1-xc+yd)*S))*(1-xc)-(1-xc+yd)*(1-w+(w/1+yd)*(xc*T+(1-xc+yd)*P))*xc)/(xc*(1-w+(w/1+yd)*(xc*R+(1-xc+yd)*S))+(1-xc+yd)*(1-w+(w/1+yd)*(xc*T+(1-xc+yd)*P)));
[t sol]=ode45(f,[0,1000],0.3);

plot(t,sol,'k','Linewidth',2)
axis tight;
axis([0 1000 0 1]);
hold on;
hold on;
[t sol]=ode45(f,[0,5000],0.35);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,5000],0.5);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,5000],0.6);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,5000],0.001);
semilogy(t,sol,'k','Linewidth',2)
xlabel('Time $(t)$', 'Interpreter', 'latex')
ylabel('Fraction of Cooperators $(x)$', 'Interpreter', 'latex');
set(gcf, 'Color', 'w');  % white background
set(gca, 'FontSize', 14);  % readable fonts

b=2.5;
r=b-1;
s=-1;
t=b;
p=0;
w=1;
r1=0.4;
yd=0.001;
R=r;
S=(s+t*r1)/(1+r1);
T=(t+s*r1)/(1+r1);
P=p;
f1=@(xc)(xc*(1-w+(w/1+yd)*(xc*R+(1-xc+yd)*S))*(1-xc)-(1-xc+yd)*(1-w+(w/1+yd)*(xc*T+(1-xc+yd)*P))*xc)/(xc*(1-w+(w/1+yd)*(xc*R+(1-xc+yd)*S))+(1-xc+yd)*(1-w+(w/1+yd)*(xc*T+(1-xc+yd)*P)));
s1=solve(f1(xc)==0,xc)
f=@(t,xc)(xc*(1-w+(w/1+yd)*(xc*R+(1-xc+yd)*S))*(1-xc)-(1-xc+yd)*(1-w+(w/1+yd)*(xc*T+(1-xc+yd)*P))*xc)/(xc*(1-w+(w/1+yd)*(xc*R+(1-xc+yd)*S))+(1-xc+yd)*(1-w+(w/1+yd)*(xc*T+(1-xc+yd)*P)));
[t sol]=ode45(f,[0,5000],0.3);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,5000],0.5);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,5000],0.66);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,5000],0.43);
plot(t,sol,'k','Linewidth',2)
axis tight;
axis([0 5000 0 1]);
hold on;
xlabel('\textbf{Time $(t)$}', 'Interpreter', 'latex')
ylabel('\textbf{Fraction of Cooperators $(x)$}', 'Interpreter', 'latex');
title('With zealous defectors');
set(gcf, 'Color', 'w');  % white background
set(gca, 'FontSize', 18);  % readable fonts
set(gca, 'FontWeight', 'bold');  % Bold tick labels and axes lines

%%
clc;
clear;
close all;
syms xc yd w w1 
%network reciprocity with zealous defectors
b=8.5; 
r=b-1;
s=-1;
t=b;
p=0;
w=1;
k=8;
h=((k+1)*(r-p)-t+s)/((k+1)*(k-2));
yd=0.001;
R=r;
S=s+h;
T=t-h;
P=p;
f1=@(xc)(xc*(1-w+(w/1+yd)*(xc*R+(1-xc+yd)*S))*(1-xc)-(1-xc+yd)*(1-w+(w/1+yd)*(xc*T+(1-xc+yd)*P))*xc)/(xc*(1-w+(w/1+yd)*(xc*R+(1-xc+yd)*S))+(1-xc+yd)*(1-w+(w/1+yd)*(xc*T+(1-xc+yd)*P)));
s1=double(solve(f1(xc)==0,xc))
f=@(t,xc)(xc*(1-w+(w/1+yd)*(xc*R+(1-xc+yd)*S))*(1-xc)-(1-xc+yd)*(1-w+(w/1+yd)*(xc*T+(1-xc+yd)*P))*xc)/(xc*(1-w+(w/1+yd)*(xc*R+(1-xc+yd)*S))+(1-xc+yd)*(1-w+(w/1+yd)*(xc*T+(1-xc+yd)*P)));

[t sol]=ode45(f,[0,5000],0.4);
plot(t,sol,'k','Linewidth',2)
axis tight;
axis([0 5000 0 1]);
hold on;
[t sol]=ode45(f,[0,5000],0.5);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,5000],0.6);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,5000],0.001);
semilogy(t,sol,'k','Linewidth',2)
xlabel('Time $(t)$', 'Interpreter', 'latex')
ylabel('Fraction of Cooperators $(x)$', 'Interpreter', 'latex');
set(gcf, 'Color', 'w');  % white background
set(gca, 'FontSize', 14);  % readable fonts
b=8; 
r=b-1;
s=-1;
t=b;
p=0;
w=1;
k=8;
h=((k+1)*(r-p)-t+s)/((k+1)*(k-2));
yd=0.001;
R=r;
S=s+h;
T=t-h;
P=p;
f1=@(xc)(xc*(1-w+(w/1+yd)*(xc*R+(1-xc+yd)*S))*(1-xc)-(1-xc+yd)*(1-w+(w/1+yd)*(xc*T+(1-xc+yd)*P))*xc)/(xc*(1-w+(w/1+yd)*(xc*R+(1-xc+yd)*S))+(1-xc+yd)*(1-w+(w/1+yd)*(xc*T+(1-xc+yd)*P)));
s1=solve(f1(xc)==0,xc)
f=@(t,xc)(xc*(1-w+(w/1+yd)*(xc*R+(1-xc+yd)*S))*(1-xc)-(1-xc+yd)*(1-w+(w/1+yd)*(xc*T+(1-xc+yd)*P))*xc)/(xc*(1-w+(w/1+yd)*(xc*R+(1-xc+yd)*S))+(1-xc+yd)*(1-w+(w/1+yd)*(xc*T+(1-xc+yd)*P)));
[t sol]=ode45(f,[0,5000],0.4);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,5000],0.6);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,5000],0.8);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,5000],0.5);
plot(t,sol,'k','Linewidth',2)
xlabel('t')
ylabel('$x_c$', 'Interpreter', 'latex');
axis([0 5000 0 1]);
xlabel('\textbf{Time $(t)$}', 'Interpreter', 'latex')
ylabel('\textbf{Fraction of Cooperators $(x)$}', 'Interpreter', 'latex');
title('Network reciprocity');
set(gcf, 'Color', 'w');  % white background
set(gca, 'FontSize', 18);  % readable fonts
set(gca, 'FontWeight', 'bold');  % Bold tick labels and axes lines


%%
clc;
clear;
close all;
syms xc yd w w1 
%indirect reciprocity with zealous defectors
b=2.7;
r=b-1;
s=-1;
t=b;
p=0;
w=1;
q=0.6;
yd=0.07;
R=r;
S=s*(1-q)+q*p;
T=t*(1-q)+q*p;
P=p;
f=@(t,xc)(xc*(1-w+(w/1+yd)*(xc*R+(1-xc+yd)*S))*(1-xc)-(1-xc+yd)*(1-w+(w/1+yd)*(xc*T+(1-xc+yd)*P))*xc)/(xc*(1-w+(w/1+yd)*(xc*R+(1-xc+yd)*S))+(1-xc+yd)*(1-w+(w/1+yd)*(xc*T+(1-xc+yd)*P)));
[t sol]=ode45(f,[0,50],0.63);
plot(t,sol,'k','Linewidth',2)
hold on;
axis([0 50 0 1]);
s=double((-1+2*q-b*q-yd+b*yd+q*yd -b*q*yd+sqrt(double((-4*(q-b*q)*(-1+q-yd+q*yd)+(1-2*q+b*q+yd-b*yd-q*yd+b*q*yd)^2))))/(2*(q- b*q)));
y = s * ones(size(t));
plot(t,y,'k--','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,50],0.7);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,50],0.58);
plot(t,sol,'k','Linewidth',2)
hold on;
[t sol]=ode45(f,[0,50],0.6);
plot(t,sol,'k','Linewidth',2)
xlabel('\textbf{Time $(t)$}', 'Interpreter', 'latex')
ylabel('\textbf{Fraction of Cooperators $(x)$}', 'Interpreter', 'latex');
title('Indirect reciprocity');
set(gcf, 'Color', 'w');  % white background
set(gca, 'FontSize', 18);  % readable fonts
set(gca, 'FontWeight', 'bold');  % Bold tick labels and axes lines
