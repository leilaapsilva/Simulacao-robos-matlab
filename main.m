clear all
close all
clc
%% GUI
gui = guidata(GuiSimRobot)
% set(gui.pushbuttonOpenserial,'Callback', 'pushbuttonOpenSerial_f')
% set(gui.pushbuttonCloseserial,'Callback','pushbuttonCloseSerial_f')
set(gui.pushbuttonGetPosition,'Callback','[xd,yd] = ginput(1)')
set(gui.pushbuttonStart,'Callback','robotLoop_f')
set(gui.pushbuttonEnd,'Callback','flag = 0')
set(gui.pushbuttonPenalti,'Callback','pushbuttonPenalti_f')

% Condi��es Iniciais
L = 75/100; % comprimento do robo
vrMax = 10; % velocidade maxima
theta = 0; %angulo de saida do robo
dtheta = 0; %varia��o do angulo de saida
thetar =pi; %angulo robo em rela��o a bola
dthetar = 0; % varia��o angulo robo em rela��o a bola
thetarg =pi; %angulo robo em rela��o a gol
dthetarg = 0; % varia��o angulo robo em rela��o ao gol
x = 0;  % posi��o x do robo
y = 0;  % posi��o y do robo
xd = -4;    % posi��o x da bola
yd = 2;     % posi��o y da bola
xg = 14;    % posi��o x do gol
yg = 7.5;   % posi��o y do gol
T = 1/1000; % tempo
KP = 60;  % constante proporcional 
KD = 0; %constante derivativa
k = 1; 

 
% figure(1)
% plot(xv,yv)
% xlabel('X(m)')
% ylabel('Y(m)')
% 
% figure(2)
% plot(tv,thetav*180/pi)
% xlabel('t(s)')
% ylabel('\theta(graus)')