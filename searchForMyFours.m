function [board, row, column] = searchForMyFours(board)
% [board, row, column] = searchForMyFours(board)
% searches for possible 5s

%% Key sequences

four1 = [1 1 1 1 0];
four2 = [1 0 1 1 1];
four3 = [1 1 0 1 1];
four4 = [1 1 1 0 1];
four5 = [0 1 1 1 1];
maybe = [1 1 1 1 2];

%% Search

found = false;

for iRow = 1:15
    for iCol = 1:15
        if found == false;
            if board(iRow, iCol) == 1
                %forward
                if iCol <= 11
                    check1 = board(iRow, iCol:iCol+4);
                    check1type = 1;
                elseif iCol == 12
                    check1 = board(iRow, iCol-1:iCol+3);
                    check1type = 2;
                else
                    check1 = 0;
                end
                %down
                if iRow <= 11
                    check2 = board(iRow:iRow+4, iCol)';
                    check2type = 1;
                elseif iRow == 12
                    check2 = board(iRow-1:iRow+3, iCol)';
                    check2type = 2;
                else
                    check2 = 0;
                end
                %diagonal forward
                if iRow <= 11 && iCol <= 11
                    check3 = [board(iRow,iCol),...
                        board(iRow+1,iCol+1), board(iRow+2,iCol+2),...
                        board(iRow+3,iCol+3), board(iRow+4,iCol+4)];
                    check3type = 1;
                elseif iRow == 12 && iCol <= 12
                    check3 = [board(iRow-1,iCol-1), board(iRow,iCol),...
                        board(iRow+1,iCol+1), board(iRow+2,iCol+2),...
                        board(iRow+3,iCol+3)];
                    check3type = 2;
                elseif iCol == 12 && iRow <= 12
                    check3 = [board(iRow-1,iCol-1), board(iRow,iCol),...
                        board(iRow+1,iCol+1), board(iRow+2,iCol+2),...
                        board(iRow+3,iCol+3)];
                    check3type = 2;
                else
                    check3 = 0;
                end
                %diagonal backward
                if iRow <= 11 && iCol >= 5
                    check4 = [board(iRow,iCol),...
                        board(iRow+1,iCol-1), board(iRow+2,iCol-2),...
                        board(iRow+3,iCol-3), board(iRow+4,iCol-4)];
                    check4type = 1;
                elseif iRow == 12 && iCol >= 4 && iCol <= 14
                    check4 = [board(iRow-1,iCol+1), board(iRow,iCol),...
                        board(iRow+1,iCol-1), board(iRow+2,iCol-2),...
                        board(iRow+3,iCol-3)];
                    check4type = 2;
                elseif iCol == 4 && iRow <= 12 && iRow >= 2
                    check4 = [board(iRow-1,iCol+1), board(iRow,iCol),...
                        board(iRow+1,iCol-1), board(iRow+2,iCol-2),...
                        board(iRow+3,iCol-3)];
                    check4type = 2;
                else
                    check4 = 0;
                end
                %check for matches
                if isequal(check1, four1)
                    %disp(['Play at (', num2str(iRow), ',', num2str(iCol+4), ')'])
                    switch check1type
                        case 1
                            row = iRow;
                            column = iCol+4;
                        case 2
                            row = iRow;
                            column = iCol+3;
                    end
                    found = true;
                    board(row,column) = 1;
                elseif isequal(check1, four2)
                    %(['Play at (', num2str(iRow), ',', num2str(iCol+1), ')'])
                    found = true;
                    switch check1type
                        case 1
                            row = iRow;
                            column = iCol+1;
                        case 2
                            row = iRow;
                            column = iCol;
                    end
                    board(row,column) = 1;
                elseif isequal(check1, four3)
                    %disp(['Play at (', num2str(iRow), ',', num2str(iCol+2), ')'])
                    found = true;
                    switch check1type
                        case 1
                            row = iRow;
                            column = iCol+2;
                        case 2
                            row = iRow;
                            column = iCol+1;
                    end
                    board(row,column) = 1;
                elseif isequal(check1, four4)
                    %disp(['Play at (', num2str(iRow), ',', num2str(iCol+3), ')'])
                    found = true;
                    switch check1type
                        case 1
                            row = iRow;
                            column = iCol+3;
                        case 2
                            row = iRow;
                            column = iCol+2;
                    end
                    board(row,column) = 1;
                elseif isequal(check1, four5)
                    %disp(['Play at (', num2str(iRow), ',', num2str(iCol-1), ')'])
                    found = true;
                    row = iRow;
                    column = iCol-1;
                    board(row,column) = 1;
                elseif isequal(check1, maybe)
                    if board(iRow, iCol-1) == 0
                        %disp(['Play at (', num2str(iRow), ',', num2str(iCol-1), ')'])
                        found = true;
                        switch check1type
                            case 1
                                row = iRow;
                                column = iCol-1;
                            case 2
                                row = iRow;
                                column = iCol-2;
                        end
                        board(row,column) = 1;
                    end
                end
                if isequal(check2, four1)
                    %disp(['Play at (', num2str(iRow+4), ',', num2str(iCol), ')'])
                    found = true;
                    switch check2type
                        case 1
                            row = iRow+4;
                            column = iCol;
                        case 2
                            row = iRow+3;
                            column = iCol;
                    end
                    board(row,column) = 1;
                elseif isequal(check2, four2)
                    %disp(['Play at (', num2str(iRow+1), ',', num2str(iCol), ')'])
                    found = true;
                    row = iRow+1;
                    column = iCol;
                    board(row,column) = 1;
                elseif isequal(check2, four3)
                    %disp(['Play at (', num2str(iRow+2), ',', num2str(iCol), ')'])
                    found = true;
                    switch check2type
                        case 1
                            row = iRow+2;
                            column = iCol;
                        case 2
                            row = iRow+1;
                            column = iCol;
                    end
                    board(row,column) = 1;
                elseif isequal(check2, four4)
                    %disp(['Play at (', num2str(iRow+3), ',', num2str(iCol), ')'])
                    found = true;
                    switch check2type
                        case 1
                            row = iRow+3;
                            column = iCol;
                        case 2
                            row = iRow+2;
                            column = iCol;
                    end
                    board(row,column) = 1;
                elseif isequal(check2, four5)
                    %disp(['Play at (', num2str(iRow-1), ',', num2str(iCol), ')'])
                    found = true;
                    row = iRow-1;
                    column = iCol;
                    board(row,column) = 1;
                elseif isequal(check2, maybe)
                    if board(iRow-1,iCol) == 0
                        %disp(['Play at (', num2str(iRow-1), ',', num2str(iCol), ')'])
                        found = true;
                        switch check2type
                            case 1
                                row = iRow-1;
                                column = iCol;
                            case 2
                                row = iRow-2;
                                column = iCol;
                        end
                        board(row,column) = 1;
                    end
                end
                if isequal(check3, four1)
                    %disp(['Play at (', num2str(iRow+4), ',', num2str(iCol+4), ')'])
                    found = true;
                    switch check3type
                        case 1
                            row = iRow+4;
                            column = iCol+4;
                        case 2
                            row = iRow+3;
                            column = iCol+3;
                    end
                    board(row,column) = 1;
                elseif isequal(check3, four2)
                    %disp(['Play at (', num2str(iRow+1), ',', num2str(iCol+1), ')'])
                    found = true;
                    row = iRow+1;
                    column = iCol+1;
                    board(row,column) = 1;
                elseif isequal(check3, four3)
                    %disp(['Play at (', num2str(iRow+2), ',', num2str(iCol+2), ')'])
                    found = true;
                    switch check3type
                        case 1
                            row = iRow+2;
                            column = iCol+2;
                        case 2
                            row = iRow+1;
                            column = iCol+1;
                    end
                    board(row,column) = 1;
                elseif isequal(check3, four4)
                    %disp(['Play at (', num2str(iRow+3), ',', num2str(iCol+3), ')'])
                    found = true;
                    switch check3type
                        case 1
                            row = iRow+3;
                            column = iCol+3;
                        case 2
                            row = iRow+2;
                            column = iCol+2;
                    end
                    board(row,column) = 1;
                elseif isequal(check3, four5)
                    %disp(['Play at (', num2str(iRow-1), ',', num2str(iCol-1), ')'])
                    found = true;
                    row = iRow-1;
                    column = iCol-1;
                    board(row,column) = 1;
                elseif isequal(check3, maybe)
                    if board(iRow-1,iCol-1) == 0
                        %disp(['Play at (', num2str(iRow-1), ',', num2str(iCol-1), ')'])
                        found = true;
                        switch check3type
                            case 1
                                row = iRow-1;
                                column = iCol-1;
                            case 2
                                row = iRow-2;
                                column = iCol-2;
                        end
                        board(row,column) = 1;
                    end
                end
                if isequal(check4, four1)
                    %disp(['Play at (', num2str(iRow+4), ',', num2str(iCol-4), ')'])
                    found = true;
                    switch check4type
                        case 1
                            row = iRow+4;
                            column = iCol-4;
                        case 2
                            row = iRow+3;
                            column = iCol-3;
                    end
                    board(row,column) = 1;
                elseif isequal(check4, four2)
                    %disp(['Play at (', num2str(iRow+1), ',', num2str(iCol-1), ')'])
                    found = true;
                    row = iRow+1;
                    column = iCol-1;
                    board(row,column) = 1;
                elseif isequal(check4, four3)
                    %disp(['Play at (', num2str(iRow+2), ',', num2str(iCol-2), ')'])
                    found = true;
                    switch check4type
                        case 1
                            row = iRow+2;
                            column = iCol-2;
                        case 2
                            row = iRow+1;
                            column = iCol-1;
                    end
                    board(row,column) = 1;
                elseif isequal(check4, four4)
                    %disp(['Play at (', num2str(iRow+3), ',', num2str(iCol-3), ')'])
                    found = true;
                    switch check4type
                        case 1
                            row = iRow+3;
                            column = iCol-3;
                        case 2
                            row = iRow+2;
                            column = iCol-2;
                    end
                    board(row,column) = 1;
                elseif isequal(check4, four5)
                    %disp(['Play at (', num2str(iRow-1), ',', num2str(iCol+1), ')'])
                    found = true;
                    row = iRow-1;
                    column = iCol+1;
                    board(row,column) = 1;
                elseif isequal(check4, maybe)
                    if board(iRow-1,iCol+1) == 0
                        %disp(['Play at (', num2str(iRow-1), ',', num2str(iCol+1), ')'])
                        found = true;
                        switch check4type
                            case 1
                                row = iRow-1;
                                column = iCol+1;
                            case 2
                                row = iRow-2;
                                column = iCol+2;
                        end
                        board(row,column) = 1;
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