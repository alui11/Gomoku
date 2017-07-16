function [board, row, column] = searchForYourThrees(board)
% [board, row, column] = searchForYourThrees(board)
% searches for opponent open threes

%% Search for opponent open 3s

%key sequences
four1 = [0 2 2 2 0 0];
four2 = [0 2 0 2 2 0];
four3 = [0 2 2 0 2 0];

maybe = [0 2 2 2 0 1];

found = false;

for iRow = 1:15
    for iCol = 1:15
        if found == false
            if board(iRow, iCol) == 2
                %forward
                if iCol <= 11 && iCol >= 2
                    check1 = board(iRow, iCol-1:iCol+4);
                else
                    check1 = 0;
                end
                %down
                if iRow <= 11 && iRow >= 2
                    check2 = board(iRow-1:iRow+4, iCol)';
                else
                    check2 = 0;
                end
                %diagonal forward
                if iRow <= 11 && iRow >= 2 && iCol <= 11 && iCol >= 2
                    check3 = [board(iRow-1,iCol-1), board(iRow,iCol),...
                        board(iRow+1,iCol+1), board(iRow+2,iCol+2),...
                        board(iRow+3,iCol+3), board(iRow+4,iCol+4)];
                else
                    check3 = 0;
                end
                %diagonal backward
                if iRow <= 11 && iRow >= 2 && iCol <= 14 && iCol >= 5
                    check4 = [board(iRow-1,iCol+1), board(iRow,iCol),...
                        board(iRow+1,iCol-1), board(iRow+2,iCol-2),...
                        board(iRow+3,iCol-3), board(iRow+4,iCol-4)];
                else
                    check4 = 0;
                end
                %check for matches
                if isequal(check1, four1)
                    %disp(['Play at (', num2str(iRow), ',', num2str(iCol+3), ')'])
                    found = true;
                    row = iRow;
                    column = iCol+3;
                    board(row, column) = 1;
                elseif isequal(check1, four2)
                    %disp(['Play at (', num2str(iRow), ',', num2str(iCol+1), ')'])
                    found = true;
                    row = iRow;
                    column = iCol+1;
                    board(row, column) = 1;
                elseif isequal(check1, four3)
                    %disp(['Play at (', num2str(iRow), ',', num2str(iCol+2), ')'])
                    found = true;
                    row = iRow;
                    column = iCol+2;
                    board(row, column) = 1;
                elseif isequal(check1, maybe)
                    if board(iRow, iCol-2) == 0
                        %disp(['Play at (', num2str(iRow), ',', num2str(iCol-1), ')'])
                        found = true;
                        row = iRow;
                        column = iCol-1;
                        board(row, column) = 1;
                    end
                end
                if isequal(check2, four1)
                    %disp(['Play at (', num2str(iRow+3), ',', num2str(iCol), ')'])
                    found = true;
                    row = iRow+3;
                    column = iCol;
                    board(row, column) = 1;
                elseif isequal(check2, four2)
                    %disp(['Play at (', num2str(iRow+1), ',', num2str(iCol), ')'])
                    found = true;
                    row = iRow+1;
                    column = iCol;
                    board(row, column) = 1;
                elseif isequal(check2, four3)
                    %disp(['Play at (', num2str(iRow+2), ',', num2str(iCol), ')'])
                    found = true;
                    row = iRow+2;
                    column = iCol;
                    board(row, column) = 1;
                elseif isequal(check2, maybe)
                    if board(iRow-2,iCol) == 0
                        %disp(['Play at (', num2str(iRow-1), ',', num2str(iCol), ')'])
                        found = true;
                        row = iRow-1;
                        column = iCol;
                        board(row, column) = 1;
                    end
                end
                if isequal(check3, four1)
                    %disp(['Play at (', num2str(iRow+3), ',', num2str(iCol+3), ')'])
                    found = true;
                    row = iRow+3;
                    column = iCol+3;
                    board(row, column) = 1;
                elseif isequal(check3, four2)
                    %disp(['Play at (', num2str(iRow+1), ',', num2str(iCol+1), ')'])
                    found = true;
                    row = iRow+1;
                    column = iCol+1;
                    board(row, column) = 1;
                elseif isequal(check3, four3)
                    %disp(['Play at (', num2str(iRow+2), ',', num2str(iCol+2), ')'])
                    found = true;
                    row = iRow+2;
                    column = iCol+2;
                    board(row, column) = 1;
                elseif isequal(check3, maybe)
                    if board(iRow-2,iCol-2) == 0
                        %disp(['Play at (', num2str(iRow-1), ',', num2str(iCol-1), ')'])
                        found = true;
                        row = iRow-1;
                        column = iCol-1;
                        board(row, column) = 1;
                    end
                end
                if isequal(check4, four1)
                    %disp(['Play at (', num2str(iRow+3), ',', num2str(iCol-3), ')'])
                    found = true;
                    row = iRow+3;
                    column = iCol-3;
                    board(row, column) = 1;
                elseif isequal(check4, four2)
                    %disp(['Play at (', num2str(iRow+1), ',', num2str(iCol-1), ')'])
                    found = true;
                    row = iRow+1;
                    column = iCol-1;
                    board(row, column) = 1;
                elseif isequal(check4, four3)
                    %disp(['Play at (', num2str(iRow+2), ',', num2str(iCol-2), ')'])
                    found = true;
                    row = iRow+2;
                    column = iCol-2;
                    board(row, column) = 1;
                elseif isequal(check4, maybe)
                    if board(iRow-2,iCol+2) == 0
                        %disp(['Play at (', num2str(iRow-1), ',', num2str(iCol+1), ')'])
                        found = true;
                        row = iRow-1;
                        column = iCol+1;
                        board(row, column) = 1;
                    end
                end
            end
        end
    end
end

if found == false
    row = 0;
    column = 0;
end