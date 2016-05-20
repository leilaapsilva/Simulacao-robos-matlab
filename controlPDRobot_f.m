function [VL, VR] = controlPDRobot_f(v,thetae,dthetae,KP,KD,L) %resulta nas velocidades das rodas para direção da bola

KPl = L/2*KP; 
KDl = L/2*KD;

VL = v-KPl*thetae - KDl*dthetae;
VR = v+KPl*thetae + KDl*dthetae;

