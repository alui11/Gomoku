function isWin = searchForMyThreesF(board)
% isWin = searchForMyThreesF(board)
% searches for my open threes (possible open 4s)
% Returns true if at least one exists

%% Search for possible open 4s (open 3s)

isWin = false;

%key sequences
four1 = [0 1 1 1 0 0];
four2 = [0 1 0 1 1 0];
four3 = [0 1 1 0 1 0];

maybe = [0 1 1 1 0 2];

for iRow = 1:15
    for iCol = 1:15
        if board(iRow, iCol) == 1
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
                isWin = true;
            elseif isequal(check1, four2)
                isWin = true;
            elseif isequal(check1, four3)
                isWin = true;
            elseif isequal(check1, maybe)
                if board(iRow, iCol-2) == 0
                    isWin = true;
                end
            end
            if isequal(check2, four1)
                isWin = true;
            elseif isequal(check2, four2)
                isWin = true;
            elseif isequal(check2, four3)
                isWin = true;
            elseif isequal(check2, maybe)
                if board(iRow-2,iCol) == 0
                    isWin = true;
                end
            end
            if isequal(check3, four1)
                isWin = true;
            elseif isequal(check3, four2)
                isWin = true;
            elseif isequal(check3, four3)
                isWin = true;
            elseif isequal(check3, maybe)
                if board(iRow-2,iCol-2) == 0
                    isWin = true;
                end
            end
            if isequal(check4, four1)
                isWin = true;
            elseif isequal(check4, four2)
                isWin = true;
            elseif isequal(check4, four3)
                isWin = true;
            elseif isequal(check4, maybe)
                if board(iRow-2,iCol+2) == 0
                    isWin = true;
                end
            end
        end
    end
end