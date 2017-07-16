function isWin = searchForMyFoursF(board)
% isWin = searchForMyFoursF(board)
% searches for possible 5s for a given board
% and returns a true or false value

%% Key sequences

isWin = false;

four1 = [1 1 1 1 0];
four2 = [1 0 1 1 1];
four3 = [1 1 0 1 1];
four4 = [1 1 1 0 1];
four5 = [0 1 1 1 1];
maybe = [1 1 1 1 2];

%% Search

for iRow = 1:15
    for iCol = 1:15
        if board(iRow, iCol) == 1
            %forward
            if iCol <= 11
                check1 = board(iRow, iCol:iCol+4);
            elseif iCol == 12
                check1 = board(iRow, iCol-1:iCol+3);
            else
                check1 = 0;
            end
            %down
            if iRow <= 11
                check2 = board(iRow:iRow+4, iCol)';
            elseif iRow == 12
                check2 = board(iRow-1:iRow+3, iCol)';
            else
                check2 = 0;
            end
            %diagonal forward
            if iRow <= 11 && iCol <= 11
                check3 = [board(iRow,iCol),...
                    board(iRow+1,iCol+1), board(iRow+2,iCol+2),...
                    board(iRow+3,iCol+3), board(iRow+4,iCol+4)];
            elseif iRow == 12 && iCol <= 12
                check3 = [board(iRow-1,iCol-1), board(iRow,iCol),...
                    board(iRow+1,iCol+1), board(iRow+2,iCol+2),...
                    board(iRow+3,iCol+3)];
            elseif iCol == 12 && iRow <= 12
                check3 = [board(iRow-1,iCol-1), board(iRow,iCol),...
                    board(iRow+1,iCol+1), board(iRow+2,iCol+2),...
                    board(iRow+3,iCol+3)];
            else
                check3 = 0;
            end
            %diagonal backward
            if iRow <= 11 && iCol >= 5
                check4 = [board(iRow,iCol),...
                    board(iRow+1,iCol-1), board(iRow+2,iCol-2),...
                    board(iRow+3,iCol-3), board(iRow+4,iCol-4)];
            elseif iRow == 12 && iCol >= 4 && iCol <= 14
                check4 = [board(iRow-1,iCol+1), board(iRow,iCol),...
                    board(iRow+1,iCol-1), board(iRow+2,iCol-2),...
                    board(iRow+3,iCol-3)];
            elseif iCol == 4 && iRow <= 12 && iRow >= 2
                check4 = [board(iRow-1,iCol+1), board(iRow,iCol),...
                    board(iRow+1,iCol-1), board(iRow+2,iCol-2),...
                    board(iRow+3,iCol-3)];
            else
                check4 = 0;
            end
            %check for matches
            if isequal(check1, four1)
                isWin = true;
            elseif isequal(check1, four2)
                isWin = true;
            elseif isequal(check1, four3)
                isWin = true;
            elseif isequal(check1, four4)
                isWin = true;
            elseif isequal(check1, four5)
                isWin = true;
            elseif isequal(check1, maybe)
                if board(iRow, iCol-1) == 0
                    isWin = true;
                end
            end
            if isequal(check2, four1)
                isWin = true;
            elseif isequal(check2, four2)
                isWin = true;
            elseif isequal(check2, four3)
                isWin = true;
            elseif isequal(check2, four4)
                isWin = true;
            elseif isequal(check2, four5)
                isWin = true;
            elseif isequal(check2, maybe)
                if board(iRow-1,iCol) == 0
                    isWin = true;
                end
            end
            if isequal(check3, four1)
                isWin = true;
            elseif isequal(check3, four2)
                isWin = true;
            elseif isequal(check3, four3)
                isWin = true;
            elseif isequal(check3, four4)
                isWin = true;
            elseif isequal(check3, four5)
                isWin = true;
            elseif isequal(check3, maybe)
                if board(iRow-1,iCol-1) == 0
                    isWin = true;
                end
            end
            if isequal(check4, four1)
                isWin = true;
            elseif isequal(check4, four2)
                isWin = true;
            elseif isequal(check4, four3)
                isWin = true;
            elseif isequal(check4, four4)
                isWin = true;
            elseif isequal(check4, four5)
                isWin = true;
            elseif isequal(check4, maybe)
                if board(iRow-1,iCol+1) == 0
                    isWin = true;
                end
            end
        end
    end
end
