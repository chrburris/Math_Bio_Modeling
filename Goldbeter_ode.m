function dx = Goldbeter_ode(t,x)
global n ms mm md ks k1 k2 V1 V2 V3 V4 K1 K2 K3 K4 KI Km1 Kd


%initial matrix
dx = zeros(5,1);


%Goldbeter model for

%x(1)=M
%x(2)=P_0
%x(3)=P_1
%x(4)=P_2
%x(5)=P_N


dx(1) = ms/(1+(x(5)/KI)^n) - (mm*x(1))/(Km1 + x(1));
dx(2) = ks*x(1) - (V1*x(2))/(K1+x(2))+(V2*x(3))/(K2+x(3));
dx(3) = (V1*x(2))/(K1+x(2))-(V2*x(3))/(K2+x(3))-(V3*x(3))/(K3+x(3))+(V4*x(4))/(K4+x(4));
dx(4) = (V3*x(3))/(K3+x(3))-(V4*x(4))/(K4+x(4))- k1*x(4)+ k2*x(5) - md*x(4)/(Kd+x(4));
dx(5) = k1*x(4)-k2*x(5);

