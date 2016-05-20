function set_motor_f(s,id,wL,sL,wR,sR) %retorna o ajuste do motor segundo a velocidade exigida
w1 = round(255*(1-abs(wL)/255));
w2 = round(255*(1-abs(wR)/255));
msg = sprintf('$%d,%.3d,%d,%.3d,%d#\n\r',id,w1,sL,w2,sR)
fwrite(s,msg)
pause(0.3)