% openingBook.m

board = zeros(15, 15);

%% Opening sequence

openRow = randi([7 9]);
openCol = randi([7 9]);
board(openRow, openCol) = 1;
% %Allow opponent to play
played = false;
while played == false
    openDirection = randi(4);
    switch openDirection
        case 1
            if board(openRow+1, openCol) == 0 && board(openRow-1, openCol) == 0 && board(openRow+2, openCol) == 0
                board(openRow+1, openCol) = 1;
                played = true;
            end
        case 2
            if board(openRow-1, openCol) == 0 && board(openRow+1, openCol) == 0 && board(openRow-2, openCol) == 0
                board(openRow-1, openCol) = 1;
                played = true;
            end
        case 3
            if board(openRow, openCol+1) == 0 && board(openRow, openCol-1) == 0 && board(openRow, openCol+2) == 0
                board(openRow, openCol+1) = 1;
                played = true;
            end
        case 4
            if board(openRow, openCol-1) == 0 && board(openRow, openCol+1) == 0 && board(openRow, openCol-2) == 0
                board(openRow, openCol-1) = 1;
                played = true;
            end
    end
end
% %Opponent plays again
switch openDirection
    case 1
        searchSpace1 = board(openRow-2:openRow+3, openCol);
        if isequal(searchSpace1, [0;0;1;1;0;0]) || isequal(searchSpace1, [2;0;1;1;0;0]) || isequal(searchSpace1, [0;2;1;1;0;0])
            board(openRow+2, openCol) = 1;
        elseif isequal(searchSpace1, [0;0;1;1;0;2]) || isequal(searchSpace1, [0;0;1;1;2;0])
            board(openRow-1, openCol) = 1;
        else
            board(openRow+1,openCol+1) = 1;
        end
    case 2
        searchSpace2 = board(openRow-3:openRow+2, openCol);
        if isequal(searchSpace2, [0;0;1;1;0;0]) || isequal(searchSpace2, [2;0;1;1;0;0]) || isequal(searchSpace2, [0;2;1;1;0;0])
            board(openRow+1, openCol) = 1;
        elseif isequal(searchSpace2, [0;0;1;1;0;2]) || isequal(searchSpace2, [0;0;1;1;2;0])
            board(openRow-2, openCol) = 1;
        else
            board(openRow,openCol+1) = 1;
        end
    case 3
        searchSpace3 = board(openRow, openCol-2:openCol+3);
        if isequal(searchSpace3, [0,0,1,1,0,0]) || isequal(searchSpace3, [2,0,1,1,0,0]) || isequal(searchSpace3, [0,2,1,1,0,0])
            board(openRow, openCol+2) = 1;
        elseif isequal(searchSpace3, [0,0,1,1,0,2]) || isequal(searchSpace3, [0,0,1,1,2,0])
            board(openRow, openCol-1) = 1;
        else
            board(openRow+1,openCol+1) = 1;
        end
    case 4
        searchSpace4 = board(openRow, openCol-3:openCol+2);
        if isequal(searchSpace4, [0,0,1,1,0,0]) || isequal(searchSpace4, [2,0,1,1,0,0]) || isequal(searchSpace4, [0,2,1,1,0,0])
            board(openRow, openCol+1) = 1;
        elseif isequal(searchSpace4, [0,0,1,1,0,2]) || isequal(searchSpace4, [0,0,1,1,2,0])
            board(openRow, openCol-2) = 1;
        else
            board(openRow+1,openCol+1) = 1;
        end
end
% opponent plays a third time