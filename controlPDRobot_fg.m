function [VL, VR] = controlPDRobot_fg(v,thetaeg,dthetaeg,KP,KD,L) %resulta nas velocidades das rodas para direção do gol

KPl = L/2*KP;
KDl = L/2*KD;

VL = v-KPl*thetaeg - KDl*dthetaeg;
VR = v+KPl*thetaeg + KDl*dthetaeg;