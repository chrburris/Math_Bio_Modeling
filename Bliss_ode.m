function dx = Bliss_ode(t,x)
% Bliss ode system given by 3 odes. 
% Bliss has derived a version of Goodwin model where the cooperativity 
% p is ignored

% parameter variables 
global b1 b2 a c K

%initial matrix
dx = zeros(3,1);

%Bliss model for
dx(1) = a/(1+x(3))-b1*x(1);
dx(2) = b1*x(1)-b2*x(2);
dx(3) = b2*x(2)-(c*x(3))/(K+x(3));

