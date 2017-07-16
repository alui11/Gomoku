function [row, column] = playNextToAPiece(board)
% [row, column] = playNextToAPiece(board)

stop = false;
next = false;

for iRow = 1:15
    for iCol = 1:15
        if stop == false
            if board(iRow, iCol) ~= 0
                if iRow ~= 1 && iCol ~= 1
                    if board(iRow, iCol+1) == 0
                        row = iRow-1;
                        column = iCol;
                        stop = true;
                    else
                        row = iRow;
                        column = iCol-1;
                        stop = true;
                    end
                elseif iRow == 1 && iCol ~= 1
                    row = 1;
                    column = iCol-1;
                    stop = true;
                elseif iCol == 1 && iRow ~= 1
                    row = iRow-1;
                    column = 1;
                    stop = true;
                else
                    stop = true;
                    next = true;
                end
            end
        end
    end
end

foundZero = false;
if next == true;
    for iRow = 1:15
        for iCol = 1:5
            if foundZero == false
                if board(iRow, iCol) == 0
                    row = iRow;
                    column = iCol;
                    foundZero = true;
                end
            end
        end
    end
end
