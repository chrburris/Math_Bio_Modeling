% solving goodwin model with ode45 with initial conditions .5, .5, .5
% solutions plotted 

clear all
axis manual;

%main program for the Goodwin model
global b1 b2 b3 p;

%parameter values
b1 = 0.05; 
b2 = 0.05;
b3 = 0.05;
p = 8;

%solving the ODE @Goodwin_ode for time span [0, 1500] and initial
%conditions x1(0)=x2(0)=x3(0)=0.5

[t,x] = ode45(@Goodwin_ode, [0 1500], [0.5; 0.5; 0.5]);

%plot of x1 versus time
plot(t, x(:,1), t, x(:,2),t,x(:,3), 'LineWidth',2);
figure(2)
plot(x(:,1),x(:,3), 'k', 'LineWidth',1);