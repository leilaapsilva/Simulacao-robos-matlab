Port=get(gui.editPort,'string')
Baudrate=str2num(get(findobj(gcf,'Tag','editBaudrate'),'String'))

if (exist('s'))   
  s = serial(Port,'BAUDRATE',Baudrate)
    fclose(s)
    clear s
end 
    
   