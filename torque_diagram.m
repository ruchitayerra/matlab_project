
clc;
close all
    r=0.3;
    N=250;
    n=0.6/r;
omega=(2*pi*N)/60;

for d=1:360
    theta=((pi*d)/180);
    
fi=250*omega^2*r*((cos(theta))+((cos(2*theta))/n));

 fp=68730-fi;
 
 phi=asin((sin(theta))/n);
 
 fq=fp/cos(phi);
 
 ft=fq*sin(theta+phi);
 
 t=ft*r;
 
 torque(:,d)=t;

end


plot(1:360,torque);
xlabel('Crank angle in deg')
ylabel('Torque in N-m')
title('Turning moment Diagram')
grid on
disp('The maximum torque in N-m is');
disp(max(torque));