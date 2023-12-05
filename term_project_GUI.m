function varargout = term_project_GUI(varargin)
% TERM_PROJECT_GUI MATLAB code for term_project_GUI.fig
%      TERM_PROJECT_GUI, by itself, creates a new TERM_PROJECT_GUI or raises the existing
%      singleton*.
%
%      H = TERM_PROJECT_GUI returns the handle to a new TERM_PROJECT_GUI or the handle to
%      the existing singleton*.
%
%      TERM_PROJECT_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TERM_PROJECT_GUI.M with the given input arguments.
%
%      TERM_PROJECT_GUI('Property','Value',...) creates a new TERM_PROJECT_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before term_project_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to term_project_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help term_project_GUI

% Last Modified by GUIDE v2.5 04-Dec-2023 16:30:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @term_project_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @term_project_GUI_OutputFcn, ...
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


% --- Executes just before term_project_GUI is made visible.
function term_project_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to term_project_GUI (see VARARGIN)

% Choose default command line output for term_project_GUI
handles.output = hObject;
% load lat.mat; 
% load lon.mat; 
run("output.m");
eval(['load ' num2str(startpoint_number) 'to' num2str(arrived_point)]);
timeoutput=time;
lat=Position(:,1); lon=Position(:,2);
lat=table2array(lat); lon=table2array(lon);
l=distance(lat,lon);
t=(l/1.4)/60;
time_required=round(t);
c=['약 ' num2str(time_required) ' 분'];
set(handles.txt4,'String',c);
time=['00:' '0' num2str(time_required) ':00'];
timeduration=duration(time);
current_time=datetime('now');
lecture_time=datetime(timeoutput);
arrival_time=current_time+timeduration;
late_time=arrival_time-lecture_time;
String={};
String(1)={[char(abs(late_time)), '만큼 지각입니다. 서둘러주세요!']};
String(2)={[char(abs(late_time)), '만큼 여유롭네요. 천천히 걸어가세요~']};
if late_time>=0
    set(handles.txt5,'String',String(1));
else
    set(handles.txt5,'String',String(2));
    set(handles.txt5,'FontSize',6);
end
set(handles.txt2,'String',string(current_time));
set(handles.txt3,'String',string(arrival_time));
set(handles.txt1,'String',round(l));
geoplot(lat,lon);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes term_project_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = term_project_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function txt1_Callback(hObject, eventdata, handles)
% hObject    handle to txt1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt1 as text
%        str2double(get(hObject,'String')) returns contents of txt1 as a double


% --- Executes during object creation, after setting all properties.
function txt1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt5_Callback(hObject, eventdata, handles)
% hObject    handle to txt5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt5 as text
%        str2double(get(hObject,'String')) returns contents of txt5 as a double


% --- Executes during object creation, after setting all properties.
function txt5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton.
function pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all;


function txt2_Callback(hObject, eventdata, handles)
% hObject    handle to txt2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt2 as text
%        str2double(get(hObject,'String')) returns contents of txt2 as a double


% --- Executes during object creation, after setting all properties.
function txt2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt3_Callback(hObject, eventdata, handles)
% hObject    handle to txt3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt3 as text
%        str2double(get(hObject,'String')) returns contents of txt3 as a double


% --- Executes during object creation, after setting all properties.
function txt3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt4_Callback(hObject, eventdata, handles)
% hObject    handle to txt4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt4 as text
%        str2double(get(hObject,'String')) returns contents of txt4 as a double


% --- Executes during object creation, after setting all properties.
function txt4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
