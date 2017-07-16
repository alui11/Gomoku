function whoWins = checkForWins(board)
% whoWins = checkForWins(board)
% Checks board for series of 5 in a row
% Returns 0 if no wins, 1 if black win, 2 if white win

%% key sequences

key1 = [1 1 1 1 1];
key2 = [2 2 2 2 2];

%% Create checks

found = false;

for iRow = 1:15
    for iCol = 1:15
        if found == false
            if board(iRow, iCol) == 1 || board(iRow, iCol) == 2
                %forward
                if iCol <= 11
                    check1 = board(iRow, iCol:iCol+4);
                else
                    check1 = 0;
                end
                %down
                if iRow <= 11
                    check2 = board(iRow:iRow+4, iCol)';
                else
                    check2 = 0;
                end
                %diagonal forward
                if iRow <= 11 && iCol <= 11
                    check3 = [board(iRow,iCol),...
                        board(iRow+1,iCol+1), board(iRow+2,iCol+2),...
                        board(iRow+3,iCol+3), board(iRow+4,iCol+4)];
                else
                    check3 = 0;
                end
                %diagonal backward
                if iRow <= 11 && iCol >= 5
                    check4 = [board(iRow,iCol),...
                        board(iRow+1,iCol-1), board(iRow+2,iCol-2),...
                        board(iRow+3,iCol-3), board(iRow+4,iCol-4)];
                else
                    check4 = 0;
                end
                %check for matches
                if isequal(check1, key1)
                    whoWins = 1;
                    found = true;
                elseif isequal(check1, key2)
                    whoWins = 2;
                    found = true;
                elseif isequal(check2, key1)
                    whoWins = 1;
                    found = true;
                elseif isequal(check2, key2)
                    whoWins = 2;
                    found = true;
                elseif isequal(check3, key1)
                    whoWins = 1;
                    found = true;
                elseif isequal(check3, key2)
                    whoWins = 2;
                    found = true;
                elseif isequal(check4, key1)
                    whoWins = 1;
                    found = true;
                elseif isequal(check4, key2)
                    whoWins = 2;
                    found = true;
                end
            end
        end
    end
end

if found == false
    whoWins = 0;
end