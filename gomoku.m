function varargout = gomoku(varargin)
% GOMOKU MATLAB code for gomoku.fig
%      GOMOKU, by itself, creates a new GOMOKU or raises the existing
%      singleton*.
%
%      H = GOMOKU returns the handle to a new GOMOKU or the handle to
%      the existing singleton*.
%
%      GOMOKU('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GOMOKU.M with the given input arguments.
%
%      GOMOKU('Property','Value',...) creates a new GOMOKU or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gomoku_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gomoku_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gomoku

% Last Modified by GUIDE v2.5 18-Jul-2016 18:00:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gomoku_OpeningFcn, ...
                   'gui_OutputFcn',  @gomoku_OutputFcn, ...
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


% --- Executes just before gomoku is made visible.
function gomoku_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gomoku (see VARARGIN)

% Choose default command line output for gomoku
handles.output = hObject;

myBoard = imread('Gomoku Board.png');
%myBoard = imread('Ramen.jpg');
axes(handles.boardAxes);
axis([0,10,0,10]);
theBoard = image('CData', myBoard);
theBoard.Parent = handles.boardAxes;
theBoard.XData = [0, 10];
theBoard.YData = [0, 10];
set(theBoard, 'HitTest', 'off')
uistack(handles.boardAxes, 'top')
set(handles.boardAxes, 'xtick', [])
set(handles.boardAxes, 'ytick', [])
set(handles.black1axes, 'Visible', 'off')
set(handles.p16, 'Visible', 'off')
set(handles.p31, 'Visible', 'off')
set(handles.p46, 'Visible', 'off')
set(handles.p61, 'Visible', 'off')
set(handles.p76, 'Visible', 'off')
set(handles.p91, 'Visible', 'off')
set(handles.p106, 'Visible', 'off')
set(handles.p121, 'Visible', 'off')
set(handles.p136, 'Visible', 'off')
set(handles.p151, 'Visible', 'off')
set(handles.p166, 'Visible', 'off')
set(handles.p181, 'Visible', 'off')
set(handles.p196, 'Visible', 'off')
set(handles.p211, 'Visible', 'off')
set(handles.p212, 'Visible', 'off')
set(handles.p213, 'Visible', 'off')
set(handles.p214, 'Visible', 'off')
set(handles.p215, 'Visible', 'off')
set(handles.p216, 'Visible', 'off')
set(handles.p217, 'Visible', 'off')
set(handles.p218, 'Visible', 'off')
set(handles.p219, 'Visible', 'off')
set(handles.p220, 'Visible', 'off')
set(handles.p221, 'Visible', 'off')
set(handles.p222, 'Visible', 'off')
set(handles.p223, 'Visible', 'off')
set(handles.p224, 'Visible', 'off')
set(handles.p225, 'Visible', 'off')
setappdata(gcf, 'allowWhiteMoves', false);
% set(handles.boardAxes,'Units','pixels');
% resizePos = get(handles.boardAxes,'Position');
% myBoard= imresize(myBoard, [resizePos(3) resizePos(3)]);
% axes(handles.boardAxes);
% imshow(myBoard);
% set(handles.boardAxes,'Units','normalized');

% blackPiece = imread('lowerLeftCorner.png');
% axes(handles.black1axes);
% h=imshow(blackPiece);
%     axis([0, 1, 0, 1]);
%     h = image('CData', upperLeftCorner);
%     h.Parent = handles.black1axes;
%     h.XData = [0, 1];
%     h.YData = [0, 1];
% uistack(handles.black1axes, 'bottom')
%set(handles.black1axes, 'buttonDownFcn', {@placeWhitePiece,handles})
% set(h, 'HitTest', 'off')
%set(handles.black1axes, 'Visible', 'off')
%set(h, 'Visible', 'off')

% Update handles structure
guidata(hObject, handles);

% boardImg = imread('GomokuBoard.jpg');
% hBimage = image('CData', boardImg);
% hBimage.Parent = handles.boardAxes;


% UIWAIT makes gomoku wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gomoku_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on selection change in modePopup.
function modePopup_Callback(hObject, eventdata, handles)
% hObject    handle to modePopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns modePopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from modePopup


% --- Executes during object creation, after setting all properties.
function modePopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to modePopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in newGameButton.
function newGameButton_Callback(hObject, eventdata, handles)
% hObject    handle to newGameButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

uistack(handles.boardAxes, 'top')
set(handles.blackText, 'Visible', 'off');
set(handles.whiteText, 'Visible', 'off');
set(handles.errorText, 'Visible', 'off');

board = zeros(15, 15);
openRow = randi([7 9]);
openCol = randi([7 9]);
board(openRow, openCol) = 1;
pause(0.2)
playBlackPiece(handles, openRow, openCol);
setappdata(gcf, 'board', board);
setappdata(gcf, 'openRow', openRow);
setappdata(gcf, 'openCol', openCol);
setappdata(gcf, 'whiteTurnCounter', 0);
setappdata(gcf, 'win', false);
setappdata(gcf, 'allowWhiteMoves', true);

% --- Executes on mouse press over axes background.
function black1axes_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to black1axes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on mouse press over axes background.
function boardAxes_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to boardAxes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
allowWhiteMoves = getappdata(gcf, 'allowWhiteMoves');
if ~allowWhiteMoves
    set(handles.errorText, 'Visible', 'on')
else

win = getappdata(gcf, 'win');

if win == false
    board = getappdata(gcf, 'board');
    whiteTurnCounter = getappdata(gcf, 'whiteTurnCounter');
    whiteTurnCounter = whiteTurnCounter + 1;
    currentPoint = get(gca, 'currentpoint');
    board = placeWhitePiece(handles,board,currentPoint);
    pause(0.1)
    if whiteTurnCounter == 1
        openRow = getappdata(gcf, 'openRow');
        openCol = getappdata(gcf, 'openCol');
        [openDirection, board, row, column] = secondBlackMove(board, openRow, openCol);
        playBlackPiece(handles, row, column);
        setappdata(gcf, 'openDirection', openDirection);
    elseif whiteTurnCounter == 2
        openRow = getappdata(gcf, 'openRow');
        openCol = getappdata(gcf, 'openCol');
        openDirection = getappdata(gcf, 'openDirection');
        [board, row, column] = thirdBlackMove(board, openDirection, openRow, openCol);
        playBlackPiece(handles, row, column);
    end
    
    if whiteTurnCounter > 2
        whoWins = checkForWins(board);
        if whoWins == 1
            set(handles.blackText, 'Visible', 'on');
            win = true;
        elseif whoWins == 2
            set(handles.whiteText, 'Visible', 'on');
            win = true;
        else
            [board, row, column] = searchForMyFours(board);
            if row ~= 0
                playBlackPiece(handles, row, column);
                disp('complete 5')
            else
                [board, row, column] = searchForYourFours(board);
                if row ~= 0
                    playBlackPiece(handles, row, column);
                    disp('block 5')
                else
                    [board, row, column] = searchForMyThrees(board);
                    if row ~= 0
                        playBlackPiece(handles, row, column);
                        disp('create open 4')
                    else
                        [board, row, column] = searchForYourThrees(board);
                        if row ~= 0
                            playBlackPiece(handles, row, column);
                            disp('block open 4')
                        else
                            play = myThreatSpaceF(board);
                            if play ~= 0
                                playBlackPiece(handles, play(1), play(2));
                                board(play(1), play(2)) = 1;
                                disp('executing surewin routine')
                            else
                                play = yourThreatSpaceF(board);
                                if play ~= 0
                                    playBlackPiece(handles, play(1), play(2));
                                    board(play(1), play(2)) = 1;
                                    disp('block surewin routine')
                                else
                                    play = searchForMyOnesF(board);
                                    if play ~= 0
                                        playBlackPiece(handles, play(1), play(2));
                                        board(play(1), play(2)) = 1;
                                        disp('make open 2')
                                    else
                                        [row, column] = createThreat(board);
                                        if row ~= 0
                                            playBlackPiece(handles, row, column);
                                            board(row, column) = 1;
                                            disp('create threat')
                                        else
                                            [row, column] = playNextToAPiece(board);
                                            playBlackPiece(handles, row, column);
                                            board(row, column) = 1;
                                            disp('first opening')
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
            whoWins = checkForWins(board);
            if whoWins == 1
                set(handles.blackText, 'Visible', 'on');
                win = true;
            elseif whoWins == 2
                set(handles.whiteText, 'Visible', 'on');
                win = true;
            end
        end
    end
    %disp(board)
    setappdata(gcf, 'win', win);
    setappdata(gcf, 'board', board);
    setappdata(gcf, 'whiteTurnCounter', whiteTurnCounter);
else
    set(handles.errorText, 'Visible', 'on');
end

end

% --- Executes on button press in startButton.
function startButton_Callback(hObject, eventdata, handles)
% hObject    handle to startButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% set(handles.pressStartText, 'Visible', 'off');
% board = zeros(15, 15);
% openRow = randi([7 9]);
% openCol = randi([7 9]);
% board(openRow, openCol) = 1;
% playBlackPiece(handles, openRow, openCol);
% setappdata(gcf, 'board', board);
% setappdata(gcf, 'openRow', openRow);
% setappdata(gcf, 'openCol', openCol);
% setappdata(gcf, 'whiteTurnCounter', 0);
% setappdata(gcf, 'win', false);
% setappdata(gcf, 'allowWhiteMoves', true);
