function [x,y,theta] = robotsim_f(v,omega,theta_p,x_p,y_p,T)

dx = v*cos(theta_p);
dy = v*sin(theta_p);
dtheta = omega;

x = dx*T + x_p;
y = dy*T + y_p;
theta = dtheta*T + theta_p;
