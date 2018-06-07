% plotting nullclines in Matlab
% starting from the model given by:
% dx(1) = a/(1+x(3))-b1*x(1);
% dx(2) = b1*x(1)-b2*x(2);
% dx(3) = b2*x(2)-(c*x(3))/(K+x(3));
% 
% parameters are:
K=1;
b1=.24;
b2=.24;
c=.25;
a=c*sqrt(c/b1)-c;

% nullclines definition (as string):

str1 = 'a/(1+z)-b1*x';
str2 = 'b1*x-b2*y';
str3 = 'b2*y-(c*z)/(K+z)';


% building function to plot

syms x y z;

func1=eval(str1);
func2=eval(str2);
func3=eval(str3);

% nullclines plot

figure(1)

h=ezplot(func1,[0,.4,0,.4]);set(h,'linewidth',2);
hold on

h1=ezplot(func2,[0,.4,0,.4]);set(h1,'linewidth',2);
hold on

h2=ezplot(func3,[0,.4,0,.4]);set(h2,'linewidth',2);
