function varargout = buttom(varargin)
% buttom MATLAB code for buttom.fig
%      buttom, by itself, creates a new buttom or raises the existing
%      singleton*.
%
%      H = buttom returns the handle to a new buttom or the handle to
%      the existing singleton*.
%
%      buttom('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in buttom.M with the given input arguments.
%
%      buttom('Property','Value',...) creates a new buttom or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before buttom_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to buttom_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help buttom

% Last Modified by GUIDE v2.5 04-Dec-2023 14:29:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @buttom_OpeningFcn, ...
    'gui_OutputFcn',  @buttom_OutputFcn, ...
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


% --- Executes just before buttom is made visible.
function buttom_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to buttom (see VARARGIN)

%fid_reset
% fid = fopen('result_start_value','wt');
% fprintf(fid,'%s\n',handles.pushbutton8.String);

% Choose default command line output for buttom
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes buttom wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = buttom_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on buttom press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

val=get(hObject,'Value');

if val==1
    fid = fopen('result_start_value','wt');
    fprintf(fid,'%s\n',handles.pushbutton1.String);
    close all;
    run("next_button.m");
end

% --- Executes on buttom press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
val=get(hObject,'Value');

if val==1
    fid = fopen('result_start_value','wt');
    fprintf(fid,'%s\n',handles.pushbutton2.String);
    close all;
    run("next_button.m");
end

% --- Executes on buttom press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

val=get(hObject,'Value');

if val==1
    fid = fopen('result_start_value','wt');
    fprintf(fid,'%s\n',handles.pushbutton3.String);
    close all;
    run("next_button.m");
end

% --- Executes on buttom press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

val=get(hObject,'Value');

if val==1
    fid = fopen('result_start_value','wt');
    fprintf(fid,'%s\n',handles.pushbutton4.String);
    close all;
    run("next_button.m");
end

% --- Executes on buttom press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

val=get(hObject,'Value');

if val==1
    fid = fopen('result_start_value','wt');
    fprintf(fid,'%s\n',handles.pushbutton5.String);
    close all;
    run("next_button.m");
end

% --- Executes on buttom press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

val=get(hObject,'Value');

if val==1
    fid = fopen('result_start_value','wt');
    fprintf(fid,'%s\n',handles.pushbutton6.String);
    close all;
    run("next_button.m");
end

% --- Executes on buttom press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

val=get(hObject,'Value');

if val==1
    fid = fopen('result_start_value','wt');
    fprintf(fid,'%s\n',handles.pushbutton7.String);
    close all;
    run("next_button.m");
end

% --- Executes on buttom press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

val=get(hObject,'Value');

if val==1
    fid = fopen('result_start_value','wt');
    fprintf(fid,'%s\n',handles.pushbutton8.String);
    close all;
    run("next_button.m");

end


% --- Executes on mouse press over figure background.
function figure1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
