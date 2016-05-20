flag = 0; % estado da variável start
flag = 1;
% % axis([0 1.5 0 1.7]) % delimita o tamanho dos eixos
while(flag) 
    xg = 1.4; % posição do gol no eixo x
    yg = .75;   % posição do gol no eixo y
    vr=10;  % velocidade máxima
    k = k+1; 
    distTR = abs(sqrt((xd-x)^2 + (yd-y)^2 )); % distance between target and robot
    
    
        thetar = atan2(yd-y,xd-x)  % angulo entre robo e o alvo
    
        thetae = normalize_angle_f(thetar - theta,-pi)  % erro do angulo em relação a posição desejada
        dthetae = dthetar - dtheta   % variação angular
        distTR = abs(sqrt((xd-x)^2 + (yd-y)^2 )); % distance between the target and the robot 

    
%         if (distTR < 0.2) && (distTR>0.15)
        if (distTR < 0.2) && (distTR>0.15) % redução da velocidade do robo p/atingir o alvo
            Kvr  = 1; % constante derivativa 
            vr = Kvr*distTR*vrMax; %velocidade que irá alcancar a bola

        else
            if distTR < 0.15 % mudança de alvo robô vai para o gol
                xd=x; %posição desejada se iguala a posicão do robô para mudar a meta 
                yd=y;
                distTR = abs(sqrt((xd-x)^2 + (yd-y)^2 )); %distance between target and robot
                distGR = abs(sqrt((xg-x)^2 + (yg-y)^2 )); % distance between target and goal
                while (distGR < 2)  && (flag) && (distTR <0.15)% robo vai para o gol
                    
                    xg = 1.4;
                    yg = .75;
                    thetar = atan2(yg-y,xg-x) %calculo do angulo de saida para a bola
                    
                    thetae = normalize_angle_f(thetar - theta,-pi) %calculo do angulo de erro em relação ao robo e a bola
                    dthetae = dthetar - dtheta %variação calculo do angulo de erro em relação ao robo e a bola
                    distGR = abs(sqrt((xg-x)^2 + (yg-y)^2 )); % distance between target and robot
                        [VL, VR] = controlPDRobot_f(vr,thetae,dthetae,KP,KD,L) % definição da velocidade 
                        v = (VR + VL)/2; % velocidade media 
                        omega = (VR - VL)/L; % angulo medio
                        [x,y,theta] = robotsim_f(v,omega,theta,x,y,T); % dado a simulação do robo

                        xv(k) = x; % vetores de posição
                        yv(k) = y;
                        thetav(k) = theta; 
                        tv(k) = T*k;
                    %     axis([0 1.5 0 1.7])
                        figure(1)
                        plot(xv,yv)
                        hold on
                        plot(x,y,'bo')
                        plot(xg,yg,'k*')
                        hold off
                        xlabel('X(m)')
                        ylabel('Y(m)')
                        drawnow
                        if distGR< 0.08 && distGR> 0.05 % redução da velocidade perto do gol
                             Kvr  = 1;
                            vr = Kvr*distGR*vrMax;
                        else
                            if distGR< 0.03 % parada do robo
                                vr=0;
                                VL = 0
                                VR = 0
                            end
                        end
                
                end
                             
            else
                    vr = vrMax;  
                
            end

        end
        
   
    
                 

%      
%         set_motor_f(s,4,10*VL,1,10*VR,1);
%     
%     if distTR < 0.15
%         distGR = abs(sqrt((xg-x)^2 + (yg-y)^2 )); % distance between target and robot 
%      while distGR > 2
%         xg = 1.4;
%             yg = .75;
%          thetarg = atan2(yg-y,xg-x)
%     
%         thetaeg = normalize_angle_f(thetarg - theta,-pi)
%         dthetaeg = dthetarg - dthetag
%         distGR = abs(sqrt((xg-x)^2 + (yg-y)^2 )); % distance between target and robot 
%  
%             
%      end
%         if distGR < 0.2
%         
%             Kvr  = 0.1;
%             vr = Kvr*distGR*vrMax;
%         else
%             vr = vrMax;
%         end
%      end
    
%     
%     
       
%         [VL, VR] = controlPDRobot_f(vr,thetae,dthetae,KP,KD,L);
%         v = (VR + VL)/2;
   
%         omega = (VR - VL)/L;
%         [x,y,theta] = robotsim_f(v,omega,theta,x,y,T);

%         set_motor_f(s,4,10*VL,1,10*VR,1);
    
%     if (VL<2) && (VR <2)
%         set_motor_f(s,4,0,0,0,0);
%     end

    [VL, VR] = controlPDRobot_f(vr,thetae,dthetae,KP,KD,L) 
    v = (VR + VL)/2;
    omega = (VR - VL)/L;
    [x,y,theta] = robotsim_f(v,omega,theta,x,y,T);
    w1 =  round(255*(1-abs(VL)/255)); %conversão de velocidade para o robo
    w2 =  round(255*(1-abs(VR)/255));
    if (VL < 0)
        sL = 0; %sentido de velocidade para a roda
    else
        sL = 1;
    end
    if (VR < 0)
        sR = 0;
    else
        sR = 1;
    end
    msg = sprintf('$%d,%.3d,%d,%.3d,%d#\n\r',2,w1,sL,w2,sR)
    
    xv(k) = x;
    yv(k) = y;
    thetav(k) = theta;
    tv(k) = T*k;
%     axis([0 1.5 0 1.7])
    figure(1)
    plot(xv,yv)
    hold on
    plot(x,y,'bo')
    plot(xg,yg,'k*')
    hold off
    xlabel('X(m)')
    ylabel('Y(m)')
    drawnow 
end