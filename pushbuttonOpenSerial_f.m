Port=get(gui.editPort,'string');
Baudrate=str2num(get(findobj(gcf,'Tag','editBaudrate'),'String'));
 instr = instrfind
 if ~isempty(instr)
     fclose(instrfind);
 end
if (~exist('s'))   
s = serial(Port,'BAUDRATE',Baudrate)

else 
    fclose(s);
    clear s
    s = serial(Port,'BAUDRATE',Baudrate);
end

if (strcmp(get(s,'Status'),'closed'))
    fopen(s);
end
