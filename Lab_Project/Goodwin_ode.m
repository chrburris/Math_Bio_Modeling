function dx = Goodwin_ode(t,x)
% Goodwin_ode can be called to solve the ode system given below
% by 3 odes. 

global b1 b2 b3 p 

%initial matrix
dx = zeros(3,1);

%Goodwin model
dx(1) = 1/(1+x(3)^p)-b1*x(1);
dx(2) = b2*(x(1)-x(2));
dx(3) = b3*(x(2)-x(3));




