function varargout = bodefopid(varargin)
% BODEFOPID MATLAB code for bodefopid.fig
%      BODEFOPID, by itself, creates a new BODEFOPID or raises the existing
%      singleton*.
%
%      H = BODEFOPID returns the handle to a new BODEFOPID or the handle to
%      the existing singleton*.
%
%      BODEFOPID('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BODEFOPID.M with the given input arguments.
%
%      BODEFOPID('Property','Value',...) creates a new BODEFOPID or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before bodefopid_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to bodefopid_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help bodefopid

% Last Modified by GUIDE v2.5 14-Nov-2019 13:30:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @bodefopid_OpeningFcn, ...
    'gui_OutputFcn',  @bodefopid_OutputFcn, ...
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


% --- Executes just before bodefopid is made visible.
function bodefopid_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to bodefopid (see VARARGIN)

% Choose default command line output for bodefopid
handles.output = hObject;

% Put image inside of picture axes
pidPlant = importdata('fpid.jpg');
axes(handles.axSchematic);
hi = imagesc(pidPlant);
axis off;

% Update handles structure
guidata(hObject, handles);

% Save user data as structure
ud = struct;
ud.figureHandle = [];
ud.log = 1;
ud.upd_workspace = 0;
set(hObject, 'UserData', ud);


% UIWAIT makes bodefopid wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = bodefopid_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function txtZ_Callback(hObject, eventdata, handles)
% hObject    handle to txtZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtZ as text
%        str2double(get(hObject,'String')) returns contents of txtZ as a double


% --- Executes during object creation, after setting all properties.
function txtZ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtP_Callback(hObject, eventdata, handles)
% hObject    handle to txtP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtP as text
%        str2double(get(hObject,'String')) returns contents of txtP as a double


% --- Executes during object creation, after setting all properties.
function txtP_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtK_Callback(hObject, eventdata, handles)
% hObject    handle to txtK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtK as text
%        str2double(get(hObject,'String')) returns contents of txtK as a double


% --- Executes during object creation, after setting all properties.
function txtK_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtMaxK_Callback(hObject, eventdata, handles)
% hObject    handle to txtMaxK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtMaxK as text
%        str2double(get(hObject,'String')) returns contents of txtMaxK as a double


% --- Executes during object creation, after setting all properties.
function txtMaxK_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtMaxK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function sliderK_Callback(hObject, eventdata, handles)
% hObject    handle to sliderK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% Get the value of the slider
valK = get(handles.sliderK, 'value');

% Convert to number
set(handles.txtK, 'string', num2str(valK));

% Update before proceeding
drawnow;

% Finally, call the handling function
fcdd_plot_responses(handles);


% --- Executes during object creation, after setting all properties.
function sliderK_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in btnSetK.
function btnSetK_Callback(hObject, eventdata, handles)
% hObject    handle to btnSetK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Update slider
myMax = str2double(get(handles.txtMaxK, 'string'));
myMin = str2double(get(handles.txtMinK, 'string'));
myVal = str2double(get(handles.txtK, 'string'));

if myVal > myMax, myMax = myVal; set(handles.txtMaxK, 'string', num2str(myVal)); end
if myVal < myMin, myMin = myVal; set(handles.txtMinK, 'string', num2str(myVal)); end

set(handles.sliderK, 'Max', myMax);
set(handles.sliderK, 'Min', myMin);
set(handles.sliderK, 'Value', myVal);

fcdd_plot_responses(handles);



function txtMinK_Callback(hObject, eventdata, handles)
% hObject    handle to txtMinK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtMinK as text
%        str2double(get(hObject,'String')) returns contents of txtMinK as a double


% --- Executes during object creation, after setting all properties.
function txtMinK_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtMinK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtKi_Callback(hObject, eventdata, handles)
% hObject    handle to txtKi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtKi as text
%        str2double(get(hObject,'String')) returns contents of txtKi as a double


% --- Executes during object creation, after setting all properties.
function txtKi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtKi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtMaxKi_Callback(hObject, eventdata, handles)
% hObject    handle to txtMaxKi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtMaxKi as text
%        str2double(get(hObject,'String')) returns contents of txtMaxKi as a double


% --- Executes during object creation, after setting all properties.
function txtMaxKi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtMaxKi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function sliderKi_Callback(hObject, eventdata, handles)
% hObject    handle to sliderKi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
valKi = get(handles.sliderKi, 'value');
set(handles.txtKi, 'string', num2str(valKi));
drawnow;
fcdd_plot_responses(handles);


% --- Executes during object creation, after setting all properties.
function sliderKi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderKi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in btnSetKi.
function btnSetKi_Callback(hObject, eventdata, handles)
% hObject    handle to btnSetKi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Update slider
myMax = str2double(get(handles.txtMaxKi, 'string'));
myMin = str2double(get(handles.txtMinKi, 'string'));
myVal = str2double(get(handles.txtKi, 'string'));

if myVal > myMax, myMax = myVal; set(handles.txtMaxKi, 'string', num2str(myVal)); end
if myVal < myMin, myMin = myVal; set(handles.txtMinKi, 'string', num2str(myVal)); end

set(handles.sliderKi, 'Max', myMax);
set(handles.sliderKi, 'Min', myMin);
set(handles.sliderKi, 'Value', myVal);

fcdd_plot_responses(handles);


function txtMinKi_Callback(hObject, eventdata, handles)
% hObject    handle to txtMinKi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtMinKi as text
%        str2double(get(hObject,'String')) returns contents of txtMinKi as a double


% --- Executes during object creation, after setting all properties.
function txtMinKi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtMinKi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtKp_Callback(hObject, eventdata, handles)
% hObject    handle to txtKp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtKp as text
%        str2double(get(hObject,'String')) returns contents of txtKp as a double


% --- Executes during object creation, after setting all properties.
function txtKp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtKp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtMaxKp_Callback(hObject, eventdata, handles)
% hObject    handle to txtMaxKp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtMaxKp as text
%        str2double(get(hObject,'String')) returns contents of txtMaxKp as a double


% --- Executes during object creation, after setting all properties.
function txtMaxKp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtMaxKp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function sliderKp_Callback(hObject, eventdata, handles)
% hObject    handle to sliderKp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
% Get the value of the slider

valKp = get(handles.sliderKp, 'value');
set(handles.txtKp, 'string', num2str(valKp));
drawnow;
fcdd_plot_responses(handles);


% --- Executes during object creation, after setting all properties.
function sliderKp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderKp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in btnSetKp.
function btnSetKp_Callback(hObject, eventdata, handles)
% hObject    handle to btnSetKp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Update slider
myMax = str2double(get(handles.txtMaxKp, 'string'));
myMin = str2double(get(handles.txtMinKp, 'string'));
myVal = str2double(get(handles.txtKp, 'string'));

if myVal > myMax, myMax = myVal; set(handles.txtMaxKp, 'string', num2str(myVal)); end
if myVal < myMin, myMin = myVal; set(handles.txtMinKp, 'string', num2str(myVal)); end

set(handles.sliderKp, 'Max', myMax);
set(handles.sliderKp, 'Min', myMin);
set(handles.sliderKp, 'Value', myVal);

fcdd_plot_responses(handles);



function txtMinKp_Callback(hObject, eventdata, handles)
% hObject    handle to txtMinKp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtMinKp as text
%        str2double(get(hObject,'String')) returns contents of txtMinKp as a double


% --- Executes during object creation, after setting all properties.
function txtMinKp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtMinKp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtKd_Callback(hObject, eventdata, handles)
% hObject    handle to txtKd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtKd as text
%        str2double(get(hObject,'String')) returns contents of txtKd as a double


% --- Executes during object creation, after setting all properties.
function txtKd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtKd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtMaxKd_Callback(hObject, eventdata, handles)
% hObject    handle to txtMaxKd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtMaxKd as text
%        str2double(get(hObject,'String')) returns contents of txtMaxKd as a double


% --- Executes during object creation, after setting all properties.
function txtMaxKd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtMaxKd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function sliderKd_Callback(hObject, eventdata, handles)
% hObject    handle to sliderKd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
valKd = get(handles.sliderKd, 'value');
set(handles.txtKd, 'string', num2str(valKd));
drawnow;
fcdd_plot_responses(handles);

% --- Executes during object creation, after setting all properties.
function sliderKd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderKd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in btnSetKd.
function btnSetKd_Callback(hObject, eventdata, handles)
% hObject    handle to btnSetKd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Update slider
myMax = str2double(get(handles.txtMaxKd, 'string'));
myMin = str2double(get(handles.txtMinKd, 'string'));
myVal = str2double(get(handles.txtKd, 'string'));

if myVal > myMax, myMax = myVal; set(handles.txtMaxKd, 'string', num2str(myVal)); end
if myVal < myMin, myMin = myVal; set(handles.txtMinKd, 'string', num2str(myVal)); end

set(handles.sliderKd, 'Max', myMax);
set(handles.sliderKd, 'Min', myMin);
set(handles.sliderKd, 'Value', myVal);

fcdd_plot_responses(handles);


function txtMinKd_Callback(hObject, eventdata, handles)
% hObject    handle to txtMinKd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtMinKd as text
%        str2double(get(hObject,'String')) returns contents of txtMinKd as a double


% --- Executes during object creation, after setting all properties.
function txtMinKd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtMinKd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Get dynamic system
function [G,C,K,Kp,Ki,Kd,lam,mu] = fcdd_get_system(handles)

% The transfer function
K = str2double(get(handles.txtK, 'string'));
p.K = K;
[b,nb] = str2poly(get(handles.txtZ, 'string'), p);
[a,na] = str2poly(get(handles.txtP, 'string'), p);
G = fotf(a,na,b,nb);

% Is there a delay?
myDelay = str2double(get(handles.txtL, 'string'));
if myDelay < 0
    set(handles.txtL, 'string', '0');
    warning('Input-output delay cannot be negative');
    myDelay = 0;
end

if myDelay > 0
    G.ioDelay = myDelay;
end

% The controller
s=fotf('s');
Kp = str2double(get(handles.txtKp, 'string'));
Ki = str2double(get(handles.txtKi, 'string'));
Kd = str2double(get(handles.txtKd, 'string'));
lam = str2double(get(handles.txtLam, 'string'));
mu = str2double(get(handles.txtMu, 'string'));
C = Kp + Ki/(s^lam) + Kd*s^mu;

% Check if system needs to be approximated
sel = get(handles.menuSimulation, 'Value');
switch sel
    case 1
        appr = false;
    case 2
        appr = true;
        met = 'oust';
    case 3
        appr = true;
        met = 'ref';
    otherwise
        appr = false;
end

if appr
    wa = str2num(get(handles.txtW, 'string'));
    Na = str2num(get(handles.txtN, 'string'));
    
    % Return approximated systems instead of FOTF objects
    G = oustapp(G,wa(1),wa(2),Na,met);
    C = oustapp(C,wa(1),wa(2),Na,met);
end

% --- Create the system and do the plot
function fcdd_plot_responses(handles)

% Get handle object
hObject = handles.output;

% Get user data
ud = get(hObject, 'UserData');
fh = ud.figureHandle;

% Do log?
doLog = ud.log;
doOldPlot = 0;

% Save vars to workspace?
doUpdWorkspace = ud.upd_workspace;

% Create a figure if it doesn't exist
if isempty(fh) || ~ishandle(fh)
    h = figure;
else
    h = fh;
    ud = get(h, 'UserData');
    history = ud.history;
    doOldPlot = 1;
end

% Get necessary values if history exists
if doOldPlot
    y_old = history.y;
    u_old = history.u;
    t_old = history.t;
    w_old = history.w;
    r_old = history.r;
    p_old = history.p;
    G_old = history.G;
    C_old = history.C;
end

udGui = struct;

% Save for later
udGui.figureHandle = h;
udGui.log = doLog;
udGui.upd_workspace = doUpdWorkspace;

% Get control system
[G, C, K, Kp, Ki, Kd, lam, mu] = fcdd_get_system(handles);

% Check the delay parameter
hasDelay = 0;
if ~isempty(G.ioDelay) && G.ioDelay > 0
    hasDelay = 1;
end

% Check simulation type
simul = get(handles.menuSimulation, 'Value');

history.G = G;
history.hasDelay = hasDelay;
history.C = C;

% Closed loop system step response
if hasDelay && simul == 1
    Gnd = G; Gnd.ioDelay = 0;
    CL = feedback(C*Gnd,1);
    CL.ioDelay = G.ioDelay;
    warning('Feedback system modified: IO delay moved to input. Simulation results may be inaccurate. Choose an approximation method instead.');
else
    CL = feedback(C*G,1);
end

% Check whether system is proper. If not, hard fault.
if (simul ~= 1 && ~isproper(CL))
    close(h);
    errordlg(['Control system model is not proper.' ...
        'It has more zeros than poles and cannot be simulated.']);
    return;
end

if simul == 1
    t = str2num(get(handles.txtT, 'string'));
    y = step(CL,t);
else
    [y, t] = step(CL);
end

u = zeros(length(t));

% Also get control law ONLY if C/(1+CG) system is proper
if hasDelay && simul == 1
    Gnd = G; Gnd.ioDelay = 0;
    CLU = C / (1+C*Gnd);
    CLU.ioDelay = G.ioDelay;
    warning('Feedback system modified: IO delay moved to input. Simulation results may be inaccurate. Choose an approximation method instead.');
else
    CLU = C / (1+C*G);
end

if simul == 1
    isControlProper = 1;
else
    isControlProper = isproper(CLU);
end

% t1 serves as the second non-uniform time vector in case of
% systems with time delays, but is the same as t otherwise.
t1 = t;
if isControlProper
    if hasDelay
        if simul == 1
            u = step(CLU,t1);
        else
            [u, t1] = step(CLU);
        end
    else
        u = step(CLU,t1);
    end
end

% Save for later
history.y = y;
history.t = t;
history.u = u;

% Save for context menu
u_data = struct;
u_data.t = t1;
u_data.u = u;

% Open loop frequency response
[r,w] = freqresp(C*G);

% Convert to single dimension
r = r(:);
w = w(:);

history.r = r;
history.w = w;

% Closed loop poles (without regard to delay)
G_nd = G;
C_nd = C;
G_nd.ioDelay = [];

if simul == 1
    G_nd = oustapp(G_nd);
    C_nd = oustapp(C_nd);
end

CL_nd = feedback(C_nd*G_nd,1);

[b, a] = tfdata(CL_nd, 'v');
p = roots(a);
history.p = p;

% Set current figure and clear it
figure(h);
clf(h);

% Do the plots
oldPlotColor = [0.7 0.7 0.7];
newPlotColor = [0 0 1];

% Time domain
h1 = subplot(4,2,[2 4]);
if doOldPlot
    
    % Simulate over for longer time IF system doesn't have a delay
    if ~hasDelay
        t_max = max(max(t), max(t_old)); % Longest time
        numPts = max(length(t), length(t_old)); % Max length
        t_st = t_max / numPts;
        t_new = 0:t_st:t_max;
        
        % Closed loop system step response
        if hasDelay && simul == 1
            
            Gnd1 = G; Gnd1.ioDelay = 0;
            CL1 = feedback(C*Gnd1,1);
            Gnd1.ioDelay = G.ioDelay;
            
            Gnd2 = G_old; Gnd2.ioDelay = 0;
            CL2 = feedback(C_old*Gnd2,1);
            CL2.ioDelay = G_old.ioDelay;
            
            warning('Feedback system modified: IO delay moved to input. Simulation results may be inaccurate. Choose an approximation method instead.');
        else
            CL1 = feedback(C*G,1);
            CL2 = feedback(C_old*G_old,1);
        end
        
        % New responses
        t = t_new;
        y = step(CL1, t_new);
        
        t_old = t;
        y_old = step(CL2, t_new);
        
    end
    
    plot(t_old,y_old,'Color',oldPlotColor,'LineWidth',2);
    hold on;
end

% Add context menu for control law, if corresponding system is proper
if isControlProper
    cmenu = uicontextmenu;
    set(h1, 'UIContextMenu', cmenu);
    m1 = uimenu(cmenu, 'Label', 'Show control law', 'Callback', ...
        @fcdd_draw_control_law, 'UserData', u_data);
end

% Get some info on step
S = stepinfo(y,t,y(end));

% Form some nice analysis text
titleText = ['Step resp.; Settl.t: ' ...
    num2str(S.SettlingTime) 's, Ovsht: ' num2str(S.Overshoot) '%'];

plot(t,y,'Color',newPlotColor, 'LineWidth',2);
title(titleText);
xlim('auto');

xlims = get(gca, 'xlim');

% Plot reference
hold on;
plot(xlims, [1 1], ':r', 'LineWidth', 2);

% Produce a legend
if doOldPlot
    legend('Prev. response', 'Cur. response', ...
        'Reference', 'Location', 'best');
else
    legend('Prev. response', 'Reference', 'Location', 'best');
end

% Correct the limits a little
ylims = get(gca, 'ylim');
ylim([ylims(1)-0.5 ylims(2)+0.5]);

grid;
ylabel('Amplitude');

% If history exists, recompute the frequency domain characteristics
if doOldPlot
    w_min = min(min(w), min(w_old));
    w_max = max(max(w), max(w_old));
    numPts = max(length(w), length(w_old));
    w_new = logspace(log10(w_min), log10(w_max), numPts);
    
    w = w_new;
    r = freqresp(C*G, w);
    r = r(:);
    
    w_old = w_new;
    r_old = freqresp(C_old*G_old, w);
    r_old = r_old(:);
    
    r_db_old = 20*log10(abs(r_old));
    r_deg_old = rad2deg(angle(r_old));
    
end

% Frequency domain
r_db = 20*log10(abs(r));
r_deg = rad2deg(angle(r));

% Get info on gm/pm
[Gm,Pm,wcg,wcp] = margin(C*G);

% Some nice text
titleText = ['Bode plot. Gm: ' num2str(Gm) ...
    ' dB; pm: ' num2str(Pm) ' deg.'];

% Gain plot
h2 = subplot(4,2,[1 3]);
if doOldPlot
    semilogx(w_old, r_db_old, 'Color', oldPlotColor, 'LineWidth', 2);
    hold on;
end
semilogx(w, r_db, 'Color', newPlotColor, 'LineWidth', 2);
ylabel('Magn. [dB]');
title(titleText);

% Plot gain/phase margins
ylims = get(gca,'ylim');
if ~isnan(wcg)
    hold on;
    semilogx([wcg wcg], ylims, 'k', 'LineWidth', 2);
end

if ~isnan(wcp)
    hold on;
    semilogx([wcp wcp], ylims, 'r', 'LineWidth', 2);
end

grid;

% Phase plot
h3 = subplot(4,2,[5 7]);
if doOldPlot
    semilogx(w_old, r_deg_old, 'Color', oldPlotColor, 'LineWidth', 2);
    hold on;
end
semilogx(w, r_deg, 'Color', newPlotColor, 'LineWidth', 2);
linkaxes([h2,h3],'x');
xlim('auto');
xlabel('Frequency [rad/s]');
ylabel('Ph.angle [deg]');

% Plot gain/phase margins
ylims = get(gca,'ylim');
if ~isnan(wcg)
    hold on;
    semilogx([wcg wcg], ylims, 'k', 'LineWidth', 2);
end

if ~isnan(wcp)
    hold on;
    semilogx([wcp wcp], ylims, 'r', 'LineWidth', 2);
end

grid;

% Pole plot
h4 = subplot(4,2,[6 8]);
if doOldPlot
    plot(real(p_old),imag(p_old),'x','Color',oldPlotColor,'LineWidth',2);
    hold on;
end
plot(real(p), imag(p), 'x', 'Color', newPlotColor, 'LineWidth', 2);
grid;
xlabel('Real');
ylabel('Imag');
title('Approx.cl.loop poles (sys. w/o delay)');

% Correct the limits a little
xlims = get(gca, 'xlim');
ylims = get(gca, 'ylim');
xlim(xlims + [-0.5 0.5]);
ylim(ylims + [-0.5 0.5]);

% Output log
if doLog
    plantText = ['For plant G with K = ' num2str(K)];
    disp(plantText);
    
    controlText = ['with controller Kp=' num2str(Kp) ...
        ', Ki=' num2str(Ki) ', Kd=' num2str(Kd) ...
        ', lam=' num2str(lam) ', mu=' num2str(mu)];
    disp(controlText);
    
    if ~isnan(wcp)
        margin1Text = ['Phase margin: ' num2str(Pm) ' deg at freq. ' ...
            num2str(wcp) ' rad/s'];
        disp(margin1Text);
    end
    
    if ~isnan(wcg)
        margin2Text = ['Gain margin: ' num2str(Pm) ' dB at freq. ' ...
            num2str(wcg) ' rad/s'];
        disp(margin2Text);
    end
    
    controlQText = ['Settling time: ' num2str(S.SettlingTime) 's and ' ...
        'Percent overshoot: ' num2str(S.Overshoot) '%'];
    disp(controlQText);
    disp('----------------');
    
end

% Update workspace
if doUpdWorkspace
    assignin('base', 'Kp', Kp);
    assignin('base', 'Ki', Ki);
    assignin('base', 'Kd', Kd);
    assignin('base', 'lambda', lam);
    assignin('base', 'mu', mu);
    assignin('base', 'K', K);
    assignin('base', 'C', C);
    assignin('base', 'G', G);
end

% Save new user data
set(hObject, 'UserData', udGui);
ud.history = history;
set(h, 'UserData', ud);
set(h, 'Name', 'Control system simulation', 'NumberTitle', 'off');



function txtL_Callback(hObject, eventdata, handles)
% hObject    handle to txtL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtL as text
%        str2double(get(hObject,'String')) returns contents of txtL as a double


% --- Executes during object creation, after setting all properties.
function txtL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function menuView_Callback(hObject, eventdata, handles)
% hObject    handle to menuView (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menuLog_Callback(hObject, eventdata, handles)
% hObject    handle to menuLog (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

h = handles.output;
ud = get(h, 'UserData');
if strcmpi(get(handles.menuLog, 'Checked'), 'on')
    set(handles.menuLog, 'Checked', 'off');
    ud.log = 0;
else
    set(handles.menuLog, 'Checked', 'on');
    ud.log = 1;
end
set(h, 'UserData', ud);

% Draw the control law
function fcdd_draw_control_law(source, callbackdata)

% Get data
u_data = get(source, 'UserData');
u = u_data.u;
t = u_data.t;

% Produce figure
h = figure;
plot(t, u, 'r', 'LineWidth', 2);
title('Current control law');
ylabel('Amplitude');
xlabel('Time');
set(h, 'Name', 'Control law', 'NumberTitle', 'off');
grid;

% Resample t vector if it is nonuniform using minimum step by default
% Method for choosing step can also be "mean", "max", etc.
function t_new = fcdd_resample_t(t, method)
% Check that a default method is set
if nargin < 2
    method = 'min'; % Exact method but very slow
end

fun_method = str2func(method);

t_dif = fun_method(diff(t));
t_new = 0:t_dif:max(t);


% --------------------------------------------------------------------
function menuEdit_Callback(hObject, eventdata, handles)
% hObject    handle to menuEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menuUpdWorkspace_Callback(hObject, eventdata, handles)
% hObject    handle to menuUpdWorkspace (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

h = handles.output;
ud = get(h, 'UserData');
if strcmpi(get(handles.menuUpdWorkspace, 'Checked'), 'on')
    set(handles.menuUpdWorkspace, 'Checked', 'off');
    ud.upd_workspace = 0;
else
    set(handles.menuUpdWorkspace, 'Checked', 'on');
    ud.upd_workspace = 1;
end
set(h, 'UserData', ud);


% --- Executes on slider movement.
function slider6_Callback(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit21_Callback(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit21 as text
%        str2double(get(hObject,'String')) returns contents of edit21 as a double


% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function sldLam_Callback(hObject, eventdata, handles)
% hObject    handle to sldLam (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
valLam = get(handles.sldLam, 'value');
set(handles.txtLam, 'string', num2str(valLam));
drawnow;
fcdd_plot_responses(handles);


% --- Executes during object creation, after setting all properties.
function sldLam_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sldLam (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function txtLam_Callback(hObject, eventdata, handles)
% hObject    handle to txtLam (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtLam as text
%        str2double(get(hObject,'String')) returns contents of txtLam as a double


% --- Executes during object creation, after setting all properties.
function txtLam_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtLam (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function sldMu_Callback(hObject, eventdata, handles)
% hObject    handle to sldMu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
valMu = get(handles.sldMu, 'value');
set(handles.txtMu, 'string', num2str(valMu));
drawnow;
fcdd_plot_responses(handles);

% --- Executes during object creation, after setting all properties.
function sldMu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sldMu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function txtMu_Callback(hObject, eventdata, handles)
% hObject    handle to txtMu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtMu as text
%        str2double(get(hObject,'String')) returns contents of txtMu as a double


% --- Executes during object creation, after setting all properties.
function txtMu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtMu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnOpenLoop.
function btnOpenLoop_Callback(hObject, eventdata, handles)
% hObject    handle to btnOpenLoop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% The transfer function
K = str2double(get(handles.txtK, 'string'));
p.K = K;
[b,nb] = str2poly(get(handles.txtZ, 'string'), p);
[a,na] = str2poly(get(handles.txtP, 'string'), p);
G = fotf(a,na,b,nb);

% Draw the requested figures
h1 = figure; step(G);
h2 = figure; bode(G); grid;


% --- Executes on selection change in menuSimulation.
function menuSimulation_Callback(hObject, eventdata, handles)
% hObject    handle to menuSimulation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns menuSimulation contents as cell array
%        contents{get(hObject,'Value')} returns selected item from menuSimulation

% Enable or disable the approximation parameter selection
sel = get(handles.menuSimulation, 'Value');
switch sel
    case 1
        act = 'off';
        act1 = 'on';
    case {2,3}
        act = 'on';
        act1 = 'off';
    otherwise
        act = 'off';
        act1 = 'on';
end
set(handles.txtW, 'Enable', act);
set(handles.txtN, 'Enable', act);
set(handles.txtT, 'Enable', act1);



% --- Executes during object creation, after setting all properties.
function menuSimulation_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menuSimulation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtW_Callback(hObject, eventdata, handles)
% hObject    handle to txtW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtW as text
%        str2double(get(hObject,'String')) returns contents of txtW as a double


% --- Executes during object creation, after setting all properties.
function txtW_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtN_Callback(hObject, eventdata, handles)
% hObject    handle to txtN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtN as text
%        str2double(get(hObject,'String')) returns contents of txtN as a double


% --- Executes during object creation, after setting all properties.
function txtN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtT_Callback(hObject, eventdata, handles)
% hObject    handle to txtT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtT as text
%        str2double(get(hObject,'String')) returns contents of txtT as a double


% --- Executes during object creation, after setting all properties.
function txtT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function menuFile_Callback(hObject, eventdata, handles)
% hObject    handle to menuFile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menuExportOptimConfig_Callback(hObject, eventdata, handles)
% hObject    handle to menuExportOptimConfig (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[filename,path] = uiputfile('*.mat');
if ~isequal(filename, 0) && ~isequal(path, 0)
    
    % Check file extension, add if necessary
    if ~strcmpi(filename(end-2:end),'mat')
        filename = [filename '.mat'];
    end
    
    % Load default asset
    config_struct_default = load(['assets' filesep 'initial_control.mat']);
    
    % Get the structure out
    fcfg = config_struct_default.FPID_Optimizer_GUI_config;
    
    % Create the file
    config_struct = matfile([path filename], 'Writable', true);
    
    % Store the params
    fcfg.FPIDParams.Kp = get(handles.txtKp, 'string');
    fcfg.FPIDParams.Ki = get(handles.txtKi, 'string');
    fcfg.FPIDParams.Kd = get(handles.txtKd, 'string');
    fcfg.FPIDParams.Lam = get(handles.txtLam, 'string');
    fcfg.FPIDParams.Mu = get(handles.txtMu, 'string');
    
    % Min-max values of gains
    fcfg.FPIDParams.KpMin = get(handles.txtMinKp, 'String');
    fcfg.FPIDParams.KpMax = get(handles.txtMaxKp, 'String');
    fcfg.FPIDParams.KiMin = get(handles.txtMinKi, 'String');
    fcfg.FPIDParams.KiMax = get(handles.txtMaxKi, 'String');
    fcfg.FPIDParams.KdMin = get(handles.txtMinKd, 'String');
    fcfg.FPIDParams.KdMax = get(handles.txtMaxKd, 'String');

    % Fixed min-max values
    fcfg.FPIDParams.LamMin = '0';
    fcfg.FPIDParams.LamMax = '1';
    fcfg.FPIDParams.MuMin = '0';
    fcfg.FPIDParams.MuMax = '1';
    
    % Get the approximation parameters
    approxType = get(handles.menuSimulation, 'Value');
    if (approxType == 1)
        warndlg(['FPID_OPTIM config only supports Oustaloup ' ...
                 'approximation based simulation. ' ...
                 'Will use regular Oustaloup filter.']);
    elseif (approxType > 1)
        approxType = approxType - 1;
    end
    
    fcfg.PlantModel.ApproxType = approxType;
    fcfg.PlantModel.ApproxFreqRange = get(handles.txtW, 'String');
    fcfg.PlantModel.ApproxOrder = get(handles.txtN, 'String');
    
    % Save the structure
    config_struct.FPID_Optimizer_GUI_config = fcfg;
    
end

