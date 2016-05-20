function varargout = GuiSimRobot(varargin)
% GUISIMROBOT MATLAB code for GuiSimRobot.fig
%      GUISIMROBOT, by itself, creates a new GUISIMROBOT or raises the existing
%      singleton*.
%
%      H = GUISIMROBOT returns the handle to a new GUISIMROBOT or the handle to
%      the existing singleton*.
%
%      GUISIMROBOT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUISIMROBOT.M with the given input arguments.
%
%      GUISIMROBOT('Property','Value',...) creates a new GUISIMROBOT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GuiSimRobot_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GuiSimRobot_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GuiSimRobot

% Last Modified by GUIDE v2.5 04-Oct-2015 15:43:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GuiSimRobot_OpeningFcn, ...
                   'gui_OutputFcn',  @GuiSimRobot_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before GuiSimRobot is made visible.
function GuiSimRobot_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GuiSimRobot (see VARARGIN)

% Choose default command line output for GuiSimRobot
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GuiSimRobot wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GuiSimRobot_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbuttonGetPosition.
function pushbuttonGetPosition_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonGetPosition (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbuttonStart.
function pushbuttonStart_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonStart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbuttonEnd.
function pushbuttonEnd_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonEnd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function editBaudrate_Callback(hObject, eventdata, handles)
% hObject    handle to editBaudrate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editBaudrate as text
%        str2double(get(hObject,'String')) returns contents of editBaudrate as a double


% --- Executes during object creation, after setting all properties.
function editBaudrate_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editBaudrate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbuttonOpenserial.
function pushbuttonOpenserial_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonOpenserial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbuttonCloseserial.
function pushbuttonCloseserial_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonCloseserial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function editPort_Callback(hObject, eventdata, handles)
% hObject    handle to editPort (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editPort as text
%        str2double(get(hObject,'String')) returns contents of editPort as a double


% --- Executes during object creation, after setting all properties.
function editPort_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editPort (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbuttonPenalti.
function pushbuttonPenalti_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonPenalti (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
