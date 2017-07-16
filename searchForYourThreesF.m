function isWin = searchForYourThreesF(board)
% isWin = searchForYourThreesF(board)
% searches for your open threes (possible open 4s)
% Returns true if at least one exists

%% Search for opponent open 3s

isWin = false;

%key sequences
four1x = [0 2 2 2 0 0];
four2x = [0 2 0 2 2 0];
four3x = [0 2 2 0 2 0];

maybex = [0 2 2 2 0 1];

for iRow = 1:15
    for iCol = 1:15
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
            if isequal(check1, four1x)
                isWin = true;
            elseif isequal(check1, four2x)
                isWin = true;
            elseif isequal(check1, four3x)
                isWin = true;
            elseif isequal(check1, maybex)
                if board(iRow, iCol-2) == 0
                    isWin = true;
                end
            end
            if isequal(check2, four1x)
                isWin = true;
            elseif isequal(check2, four2x)
                isWin = true;
            elseif isequal(check2, four3x)
                isWin = true;
            elseif isequal(check2, maybex)
                if board(iRow-2,iCol) == 0
                    isWin = true;
                end
            end
            if isequal(check3, four1x)
                isWin = true;
            elseif isequal(check3, four2x)
                isWin = true;
            elseif isequal(check3, four3x)
                isWin = true;
            elseif isequal(check3, maybex)
                if board(iRow-2,iCol-2) == 0
                    isWin = true;
                end
            end
            if isequal(check4, four1x)
                isWin = true;
            elseif isequal(check4, four2x)
                isWin = true;
            elseif isequal(check4, four3x)
                isWin = true;
            elseif isequal(check4, maybex)
                if board(iRow-2,iCol+2) == 0
                    isWin = true;
                end
            end
        end
    end
end