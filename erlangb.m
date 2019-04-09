% ===================================
% Author:lsqls                     
% github:https://github.com/lsqls  
% Email:764666894@qq.com
% ===================================
function varargout = erlangb(varargin)
% ERLANGB MATLAB code for erlangb.fig
%      ERLANGB, by itself, creates a new ERLANGB or raises the existing
%      singleton*.
%
%      H = ERLANGB returns the handle to a new ERLANGB or the handle to
%      the existing singleton*.
%
%      ERLANGB('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ERLANGB.M with the given input arguments.
%
%      ERLANGB('Property','Value',...) creates a new ERLANGB or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before erlangb_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to erlangb_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help erlangb

% Last Modified by GUIDE v2.5 09-Apr-2019 18:16:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @erlangb_OpeningFcn, ...
                   'gui_OutputFcn',  @erlangb_OutputFcn, ...
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


% --- Executes just before erlangb is made visible.
function erlangb_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to erlangb (see VARARGIN)

% Choose default command line output for erlangb
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes erlangb wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = erlangb_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
b = (get(handles.edit1,'String'));
a = (get(handles.edit2,'String'));
s= (get (handles.edit3,'String'));
if ~ isempty(a) && ~ isempty(b) &&  isempty(s)
% a和b是字符串变量，我们需要使用str2double函数将其转换为数值
a=str2double(a);
b=str2double(b);
s=erlangBs(b,a);
disp(s);
c = num2str(s); % 转换为字符串
% 将结果赋值给edit3空间的string属性，于是就可以显示结果了
set(handles.edit3,'String',c);
end
if  isempty(a) && ~ isempty(b) &&  ~isempty(s)
s=str2double(s);
b=str2double(b);
a=erlangBa(s,b);
disp(a);
c = num2str(a); 
set(handles.edit2,'String',c);
end
if  ~isempty(a) && isempty(b) &&  ~isempty(s)
s=str2double(s);
a=str2double(a);
b=erlangBb(s,a);
disp(b);
c = num2str(b); 
set(handles.edit1,'String',c);
end
guidata(hObject, handles); % 更新结构
