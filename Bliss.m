%main program for the Bliss model

clear all
axis manual;

% define parameter variables 
global b1 b2 a c K;

%parameter values
b1=0.2; 
b2=0.2;
a=129;
c=1;
K=1;

%solving the ODE @Goodwin_ode for time span [0, 1500] and initial
%conditions x1(0)=x2(0)=x3(0)=0.5

[t,x] = ode45(@Bliss_ode, [0 400], [0.5; 0.5; 0.5]);

%plot of x1 versus time
plot(t, x(:,1), t,x(:,2),t,x(:,3), 'LineWidth',2);

figure(2)
plot(x(:,1),x(:,3), 'k', 'LineWidth',1);