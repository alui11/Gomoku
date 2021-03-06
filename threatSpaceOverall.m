% threatSpaceOverall.m

%% Round 1 Search

% Get threat list

gainCostSquares = gainCostF(board);

% Create new board states

if ~isempty(gainCostSquares)
    for ithreat = 1:length(gainCostSquares)
        newBoard = board;
        newBoard(gainCostSquares(ithreat).gain(1),...
            gainCostSquares(ithreat).gain(2)) = 1;
        newBoard(gainCostSquares(ithreat).cost(1, 1),...
            gainCostSquares(ithreat).cost(1, 2)) = 2;
        if length(gainCostSquares(ithreat).cost) > 2
            newBoard(gainCostSquares(ithreat).cost(2, 1),...
                gainCostSquares(ithreat).cost(2, 2)) = 2;
            newBoard(gainCostSquares(ithreat).cost(3, 1),...
                gainCostSquares(ithreat).cost(3, 2)) = 2;
        end
        newBoards{ithreat} = newBoard;
    end
end

% Check for possible wins (can I make a 5 or open 4)

win = false;
for iboard = 1:length(newBoards)
    if searchForMyFoursF(newBoards{iboard}) == true
        win = true;
        winningBoard = iboard;
    elseif searchForMyThreesF(newBoards{iboard}) == true
        win = true;
        winningBoard = iboard;
    end
end

%% If no wins, run threatSpace Round 2

if win == false
    for iboard = 1:length(newBoards)
        gainCostSquaresCell{iboard} = gainCostF(newBoards(iboard));
    end
end

%Create new board states and check for wins

if win == false
    for nboard = 1:length(gainCostSquaresCell)
        if ~isempty(gainCostSquaresCell{nboard})
            for ithreat = 1:length(gainCostSquaresCell{nboard})
                newBoard = newBoards{nboard};
                newBoard(gainCostSquaresCell{nboard}(ithreat).gain(1),...
                    gainCostSquaresCell{nboard}(ithreat).gain(2)) = 1;
                newBoard(gainCostSquaresCell{nboard}(ithreat).cost(1, 1),...
                    gainCostSquaresCell{nboard}(ithreat).cost(1, 2)) = 2;
                if length(gainCostSquaresCell{nboard}(ithreat).cost) > 2
                    newBoard(gainCostSquaresCell{nboard}(ithreat).cost(2, 1),...
                        gainCostSquaresCell{nboard}(ithreat).cost(2, 2)) = 2;
                    newBoard(gainCostSquaresCell{nboard}(ithreat).cost(3, 1),...
                        gainCostSquaresCell{nboard}(ithreat).cost(3, 2)) = 2;
                end
                newBoards2{nboard}{ithreat} = newBoard;
            end
        end
    end
    for iboardgroup = 1:length(newBoards2)
        if ~isempty(newBoards2{iboardgroup})
            for iboard = 1:length(newBoards2{iboardgroup})
                if searchForMyFoursF(newBoards2{iboardgroup}{iboard}) == true
                    win = true;
                    winningBoard = iboardgroup;
                elseif searchForMyThreesF(newBoards2{iboardgroup}{iboard}) == true
                    win = true;
                    winningBoard = iboardgroup;
                end
            end
        end
    end
end

%% Round 3

if win == false
    for iboardgroup = 1:length(newBoards2)
        if ~isempty(newBoards2{iboardgroup})
            for iboard = 1:length(newBoards2{iboardgroup})
                gainCostSquaresNestedCell{iboardgroup}{iboard} = gainCostF(newBoards2{iboardgroup}{iboard});
            end
        end
    end
end

if win == false
    for nboardgroup = 1:length(gainCostSquaresNestedCell)
        if ~isempty(gainCostSquaresNestedCell{nboardgroup})
            for nboard = 1:length(gainCostSquaresNestedCell{nboardgroup})
                if ~isempty(gainCostSquaresNestedCell{nboardgroup}{nboard})
                    for ithreat = 1:length(gainCostSquaresNestedCell{nboardgroup}{nboard})
                        newBoard = newBoards2{nboardgroup}{nboard};
                        newBoard(gainCostSquaresNestedCell{nboardgroup}{nboard}(ithreat).gain(1),...
                            gainCostSquaresNestedCell{nboardgroup}{nboard}(ithreat).gain(2)) = 1;
                        newBoard(gainCostSquaresNestedCell{nboardgroup}{nboard}(ithreat).cost(1, 1),...
                            gainCostSquaresNestedCell{nboardgroup}{nboard}(ithreat).cost(1, 2)) = 2;
                        if length(gainCostSquaresNestedCell{nboardgroup}{nboard}(ithreat).cost) > 2
                            newBoard(gainCostSquaresNestedCell{nboardgroup}{nboard}(ithreat).cost(2, 1),...
                                gainCostSquaresNestedCell{nboardgroup}{nboard}(ithreat).cost(2, 2)) = 2;
                            newBoard(gainCostSquaresNestedCell{nboardgroup}{nboard}(ithreat).cost(3, 1),...
                                gainCostSquaresNestedCell{nboardgroup}{nboard}(ithreat).cost(3, 2)) = 2;
                        end
                        newBoards3{nboardgroup}{nboard}{ithreat} = newBoard;
                    end
                end
            end
        end
    end
    for iboardgroupGroup = 1:length(newBoards3)
        if ~isempty(newBoards3{iboardgroupGroup})
            for iboardgroup = 1:length(newBoards3{iboardgroupGroup})
                if ~isempty(newBoards3{iboardgroupGroup}{iboardgroup})
                    for iboard = 1:length(newBoards3{iboardgroupGroup}{iboardgroup})
                        if searchForMyFoursF(newBoards3{iboardgroupGroup}{iboardgroup}{iboard}) == true
                            win = true;
                            winningBoard = iboardgroupGroup;
                        elseif searchForMyThreesF(newBoards3{iboardgroupGroup}{iboardgroup}{iboard}) == true
                            win = true;
                            winningBoard = iboardgroupGroup;
                        end
                    end
                end
            end
        end
    end
end

%% Win?

if win == true
    play = gainCostSquares(winningBoard).gain;
else
    play = 0;
end
