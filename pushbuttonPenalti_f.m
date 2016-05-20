%% Função penalti
function pushbuttonPenalti_f
gui = guidata(GuiSimRobot)
   for  i=1:2
%         set_motor_f(s,id,80,0,80,0)
        t = i
    end
    for i=1:2
%     set_motor_f(s,id,0,0,0,0)
    K=i
    end
    
    set(gui.pushbuttonStart,'Callback','robotLoop_f')
  