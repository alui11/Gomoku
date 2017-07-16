function play = searchForMyOnesF(board)
% play = searchForMyOnesF(board)
% searches for possible open 2s
% returns the coordinates [a, b] of the first one found or 0 if none

%% Key Sequences

key1 = [0 1 0 0 0 0];
key2 = [0 0 1 0 0 0];

%% Create checks in all directions

found = false;

%check key1
for iRow = 1:15
    for iCol = 1:15
        if found == false
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
                %backwards
                if iCol <= 14 && iCol >= 5
                    check5 = board(iRow, iCol-4:iCol+1);
                else
                    check5 = 0;
                end
                %up
                if iRow <= 14 && iRow >= 5
                    check6 = board(iRow-4:iRow+1, iCol)';
                else
                    check6 = 0;
                end
                %diagonal up forwards
                if iRow <= 14 && iRow >= 5 && iCol <= 11 && iCol >= 2
                    check7 = [board(iRow+1,iCol-1), board(iRow,iCol),...
                        board(iRow-1, iCol+1), board(iRow-2, iCol+2),...
                        board(iRow-3, iCol+3), board(iRow-4, iCol+4)];
                else
                    check7 = 0;
                end
                %diagonal up backwards
                if iRow <= 14 && iRow >= 5 && iCol <= 14 && iCol >= 5
                    check8 = [board(iRow+1,iCol+1), board(iRow,iCol),...
                        board(iRow-1, iCol-1), board(iRow-2, iCol-2),...
                        board(iRow-3, iCol-3), board(iRow-4, iCol-4)];
                else
                    check8 = 0;
                end
                %check for matches
                if isequal(check1, key1)
                    play = [iRow, iCol+1];
                    found = true;
                elseif isequal(check2, key1)
                    play = [iRow+1, iCol];
                    found = true;
                elseif isequal(check3, key1)
                    play = [iRow+1, iCol+1];
                    found = true;
                elseif isequal(check4, key1)
                    play = [iRow+1, iCol-1];
                    found = true;
                elseif isequal(check5, key1)
                    play = [iRow, iCol-1];
                    found = true;
                elseif isequal(check6, key1)
                    play = [iRow-1, iCol];
                    found = true;
                elseif isequal(check7, key1)
                    play = [iRow-1, iCol+1];
                    found = true;
                elseif isequal(check8, key1)
                    play = [iRow-1, iCol-1];
                    found = true;
                end
            end
        end
    end
end


%check key 2 if necessary
if found == false
    for iRow = 1:15
        for iCol = 1:15
            if found == false
                if board(iRow, iCol) == 1
                    %forward
                    if iCol <= 12 && iCol >= 3
                        check1 = board(iRow, iCol-2:iCol+3);
                    else
                        check1 = 0;
                    end
                    %down
                    if iRow <= 12 && iRow >= 3
                        check2 = board(iRow-2:iRow+3, iCol)';
                    else
                        check2 = 0;
                    end
                    %diagonal forward
                    if iRow <= 12 && iRow >= 3 && iCol <= 12 && iCol >= 3
                        check3 = [board(iRow-2,iCol-2), board(iRow-1,iCol-1),...
                            board(iRow,iCol), board(iRow+1,iCol+1),...
                            board(iRow+2,iCol+2), board(iRow+3,iCol+3)];
                    else
                        check3 = 0;
                    end
                    %diagonal backward
                    if iRow <= 12 && iRow >= 3 && iCol <= 13 && iCol >= 4
                        check4 = [board(iRow-2,iCol+2), board(iRow-1,iCol+1), board(iRow,iCol),...
                            board(iRow+1,iCol-1), board(iRow+2,iCol-2),...
                            board(iRow+3,iCol-3)];
                    else
                        check4 = 0;
                    end
                    %backwards
                    if iCol <= 13 && iCol >= 4
                        check5 = board(iRow, iCol-3:iCol+2);
                    else
                        check5 = 0;
                    end
                    %up
                    if iRow <= 13 && iRow >= 4
                        check6 = board(iRow-3:iRow+2, iCol)';
                    else
                        check6 = 0;
                    end
                    %diagonal up forwards
                    if iRow <= 13 && iRow >= 4 && iCol <= 12 && iCol >= 3
                        check7 = [board(iRow+2,iCol-2), board(iRow+1,iCol-1), board(iRow,iCol),...
                            board(iRow-1, iCol+1), board(iRow-2, iCol+2),...
                            board(iRow-3, iCol+3)];
                    else
                        check7 = 0;
                    end
                    %diagonal up backwards
                    if iRow <= 13 && iRow >= 4 && iCol <= 13 && iCol >= 4
                        check8 = [board(iRow+2,iCol+2), board(iRow+1,iCol+1), board(iRow,iCol),...
                            board(iRow-1, iCol-1), board(iRow-2, iCol-2),...
                            board(iRow-3, iCol-3)];
                    else
                        check8 = 0;
                    end
                    %check for matches
                    if isequal(check1, key2)
                        play = [iRow, iCol+1];
                        found = true;
                    elseif isequal(check2, key2)
                        play = [iRow+1, iCol];
                        found = true;
                    elseif isequal(check3, key2)
                        play = [iRow+1, iCol+1];
                        found = true;
                    elseif isequal(check4, key2)
                        play = [iRow+1, iCol-1];
                        found = true;
                    elseif isequal(check5, key2)
                        play = [iRow, iCol-1];
                        found = true;
                    elseif isequal(check6, key2)
                        play = [iRow-1, iCol];
                        found = true;
                    elseif isequal(check7, key2)
                        play = [iRow-1, iCol+1];
                        found = true;
                    elseif isequal(check8, key2)
                        play = [iRow-1, iCol-1];
                        found = true;
                    end
                end
            end
        end
    end
end

if found == false
    play = 0;
end