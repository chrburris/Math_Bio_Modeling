% main program for the Goldbeter model
% varying parameters mu_d

clear all
axis manual;

%x(1)=M
%x(2)=P_0
%x(3)=P_1
%x(4)=P_2
%x(5)=P_N

global n ms mm md ks k1 k2 V1 V2 V3 V4 K1 K2 K3 K4 KI Km1 Kd


% parameter values
n =4;
ms =.76;
ks =.38;
k1 = 1.9;
k2 = 1.3;
V1 = 3.2;
V2 = 1.58;
V3 = 5;
V4 = 2.5;
K1 = 2;
K2 = 2;
K3 = 2;
K4 = 2;
KI = 1;
Km1 = .5;
Kd = .2;

md=.95;
mm=.65;
for i=1:5
    md =md-i*.05;

[t,x] = ode45(@Goldbeter_ode, [0 80], [0.5; 0.5; 0.5; 0.5; 0.5]);

%plot of M, x(1), versus time for varying mu_m and mu_d seperately

plot(t, x(:,1), 'LineWidth',2);
hold on
end

