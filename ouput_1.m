function varargout = ouput_1(varargin)
% OUPUT_1 MATLAB code for ouput_1.fig
%      OUPUT_1, by itself, creates a new OUPUT_1 or raises the existing
%      singleton*.
%
%      H = OUPUT_1 returns the handle to a new OUPUT_1 or the handle to
%      the existing singleton*.
%
%      OUPUT_1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OUPUT_1.M with the given input arguments.
%
%      OUPUT_1('Property','Value',...) creates a new OUPUT_1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ouput_1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ouput_1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ouput_1

% Last Modified by GUIDE v2.5 04-Dec-2023 02:23:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ouput_1_OpeningFcn, ...
                   'gui_OutputFcn',  @ouput_1_OutputFcn, ...
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


% --- Executes just before ouput_1 is made visible.
function ouput_1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ouput_1 (see VARARGIN)

% Choose default command line output for ouput_1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
%현재 시간을 datetime칸에 설정
    current_time_str = datestr(datetime('now'),'yyyy-mm-dd HH:MM:SS');
    set(handles.datetime,'String',sprintf('현재 시간 : %s',current_time_str));
%사용자로부터 거리,속력을 입력받음
function l=distance(latitude, longitude)

l=0;
a=0:5:90;
load latlon.txt;
lat=latlon(1:19)';
lon=latlon(20:38)';
k1= interp1(a,lat,37.5665)*1000; k2=interp1(a,lon,37.5665)*1000;
for n=1:length(latitude)-1
    dl=sqrt(((latitude(n+1)-latitude(n))*k1)^2+((longitude(n+1)-longitude(n))*k2)^2);
    l=l+dl;
end


end
    

% UIWAIT makes ouput_1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);
end



% --- Outputs from this function are returned to the command line.
function varargout = ouput_1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
end



% --- Executes on button press in restart.
function restart_Callback(hObject, eventdata, handles)
% hObject    handle to restart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
end

speed =str2double(get(handles.speedEdit,'String'));

%거리와 속력을 이용하여 필요한 시간 계산
required_time = distance/speed;

%현재 시간을 이용하여 도착 시간 계산
arrival_time = datetime('now')+hours(required_time);

%수업 시작 시간 설정
class_start_time = datetime('now','Format','HH:mm')+hours(9)+minutes(30);

%계산된 값을 텍스트 상자에 출력
set(handles.required_time,'String',sprintf('%.2f hours',required_time));
set(handles.arrival_time,'String',datestr(arrival_time));

%도착시간이 수업 시작시간보다 늦으면 '지각' 출력
if arrival_time > class_start_time
    set(handles.late,'String','지각');
else
    set(handles.late,'String','도착가능');
end

%지도 출력
latitude = 37.5665;
longtitude = 126.9780;
axes_handle = findobj('Tag','map');

geoplot(axes_handle,latitude,longtitude,'g*','MarkerSize',10);
framem on;gridm on;

end

%---Executes during object creation,after setting all properties.
    function distanceEdit_CreateFcn(hObject,evendata,handles)
        %hObject  handle to distanceEdit (see GCBO)
        %evendata reserved - to be defined in a future version of MATLAB
        %handles  empty- handles not created until after all CreateFcns
        %called

        %Hint:edit controls usually have a white background on Windows.
        %     See ISPC and COMPUTER.
        if ispc&&isequal(get(hObject,'BackgroundColor'),get(0,'defaultUicontrolBackgroundColor'))
            set(hObject,'BackgroundColor','white');
        end
    end

    %---Executes during object creation,after setting all properties.
    function speedEdit_CreataeFcn(hObject,evendata,handles)
        %hObject  handle to speedEdit (see GCBO)
        %evendata reserved - to ve defined in a future version of MATLAB
        %handles  empty - handles not created until after all CreateFcns
        %called

        %Hint: edit controls usually have a white background on Window.
        %      See ISPC and COMPUTER.
        if ispc&& isequal(get(hObject,'BackgroundColor')),get(0,'defaultUicontrolBackgroundColor')
            set(hObject,'BackgroundColor','white');
        end
    end

%미완성부분_restart버튼 눌렀을 때 처음화면으로 돌아가는 기능(input이랑 합칠 때 설정)
