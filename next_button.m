function varargout = next_button(varargin)
% NEXT_BUTTON MATLAB code for next_button.fig
%      NEXT_BUTTON, by itself, creates a new NEXT_BUTTON or raises the existing
%      singleton*.
%
%      H = NEXT_BUTTON returns the handle to a new NEXT_BUTTON or the handle to
%      the existing singleton*.
%
%      NEXT_BUTTON('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NEXT_BUTTON.M with the given input arguments.
%
%      NEXT_BUTTON('Property','Value',...) creates a new NEXT_BUTTON or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before next_button_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to next_button_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help next_button

% Last Modified by GUIDE v2.5 04-Dec-2023 14:09:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @next_button_OpeningFcn, ...
    'gui_OutputFcn',  @next_button_OutputFcn, ...
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


% --- Executes just before next_button is made visible.
function next_button_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to next_button (see VARARGIN)

% %defult value
% handles.pushbutton_grade1.Value=1;
% handles.listbox1_class.String=[{'공업역학'};{'기초설계'}];


% Choose default command line output for next_button
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes next_button wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = next_button_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1


% --- Executes on selection change in grade.
function grade_Callback(hObject, eventdata, handles)
% hObject    handle to grade (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns grade contents as cell array
%        contents{get(hObject,'Value')} returns selected item from grade


% --- Executes during object creation, after setting all properties.
function grade_CreateFcn(hObject, eventdata, handles)
% hObject    handle to grade (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox1_class.
function listbox1_class_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1_class (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% Hints: contents = cellstr(get(hObject,'String')) returns listbox1_class contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1_class


% --- Executes during object creation, after setting all properties.
function listbox1_class_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1_class (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox3.
function listbox3_Callback(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox3


% --- Executes during object creation, after setting all properties.
function listbox3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton_grade1.
function pushbutton_grade1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_grade1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles.listbox1_class.Value=1;
handles.listbox_division.Value=1;

val=get(hObject,'Value');
if val==1
    handles.listbox1_class.String=[{'공업역학'};{'기초설계'}];
end
guidata(hObject,handles);

% --- Executes on button press in pushbutton_grade2.
function pushbutton_grade2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_grade2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles.listbox1_class.Value=1;
handles.listbox_division.Value=1;
val=get(hObject,'Value');
if val==1
    handles.listbox1_class.String=[{'고체역학'}
        {'열역학'}
        {'이상유체역학'}
        {'동역학'}
        {'항공우주응용SW1'}];
end
guidata(hObject,handles);

% --- Executes on button press in pushbutton_grade3.
function pushbutton_grade3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_grade3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles.listbox1_class.Value=1;
handles.listbox_division.Value=1;

val=get(hObject,'Value');
if val==1
    handles.listbox1_class.String=[{'비행동역학'}
        {'진동학'}
        {'압축성유체역학'}
        {'우주궤도역학'}
        {'항공제도및CAD'}
        {'메카트로닉스종합설계'}
        {'수치해석'}
        {'자동제어'}
        {'추진체공학'}
        {'자율비행체시스템설계1'}
        ];
end
guidata(hObject,handles);


% --- Executes on button press in pushbutton_grade4.
function pushbutton_grade4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_grade4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in listbox_division.
function listbox_division_Callback(hObject, eventdata, handles)
% hObject    handle to listbox_division (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% Hints: contents = cellstr(get(hObject,'String')) returns listbox_division contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox_division


% --- Executes during object creation, after setting all properties.
function listbox_division_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox_division (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton_finish.
function pushbutton_finish_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_finish (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles.result_start_point=textread('result_start_value','%s',1);

handles.result_class=handles.listbox1_class.String(handles.listbox1_class.Value);
handles.result_division=handles.listbox_division.String(handles.listbox_division.Value);

fid = fopen('result_start_value','wt');
fprintf(fid,'%s\n',num2str(handles.result_start_point{1,1}));
fprintf(fid,'%s\n',num2str(handles.result_class{1,1}));
fprintf(fid,'%s',num2str(handles.result_division{1,1}));

%run("output.m")
close next_button
run("term_project_GUI.m")

% --- Executes on button press in pushbutton_back.
function pushbutton_back_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all;
run("buttom.m");
