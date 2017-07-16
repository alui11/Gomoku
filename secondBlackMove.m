function [openDirection, board, row, column] = secondBlackMove(board, openRow, openCol)
% [openDirection, board, row, column] =
%       secondBlackMove(board, openRow, openCol)
% openDirection is for third black move
% board is the new board state
% row and column is the index of the played piece

played = false;
while played == false
    openDirection = randi(4);
    switch openDirection
        case 1
            if board(openRow+1, openCol) == 0 && board(openRow-1, openCol) == 0 && board(openRow+2, openCol) == 0
                board(openRow+1, openCol) = 1;
                row = openRow + 1;
                column = openCol;
                played = true;
            end
        case 2
            if board(openRow-1, openCol) == 0 && board(openRow+1, openCol) == 0 && board(openRow-2, openCol) == 0
                board(openRow-1, openCol) = 1;
                row = openRow - 1;
                column = openCol;
                played = true;
            end
        case 3
            if board(openRow, openCol+1) == 0 && board(openRow, openCol-1) == 0 && board(openRow, openCol+2) == 0
                board(openRow, openCol+1) = 1;
                row = openRow;
                column = openCol +1;
                played = true;
            end
        case 4
            if board(openRow, openCol-1) == 0 && board(openRow, openCol+1) == 0 && board(openRow, openCol-2) == 0
                board(openRow, openCol-1) = 1;
                row = openRow;
                column = openCol - 1;
                played = true;
            end
    end
end