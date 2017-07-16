function play = yourThreatSpaceF(board)
% play = yourThreatSpaceF(board)
% Input board state, goes through 3 layers of threat space
% search
% Returns the coordinates of the next move if a win is found
%   format: [row, column]
% Otherwise returns 0

%% Round 1 Search

% Get threat list

gainCostSquares = OPgainCostF(board);

% Create new board states

if ~isempty(gainCostSquares)
    for ithreat = 1:length(gainCostSquares)
        newBoard = board;
        newBoard(gainCostSquares(ithreat).gain(1),...
            gainCostSquares(ithreat).gain(2)) = 2;
        newBoard(gainCostSquares(ithreat).cost(1, 1),...
            gainCostSquares(ithreat).cost(1, 2)) = 1;
        if length(gainCostSquares(ithreat).cost) > 2
            newBoard(gainCostSquares(ithreat).cost(2, 1),...
                gainCostSquares(ithreat).cost(2, 2)) = 1;
            newBoard(gainCostSquares(ithreat).cost(3, 1),...
                gainCostSquares(ithreat).cost(3, 2)) = 1;
        end
        newBoards{ithreat} = newBoard;
    end
end

% Check for possible wins (can I make a 5 or open 4)

win = false;

if ~isempty(gainCostSquares)

for iboard = 1:length(newBoards)
    if searchForYourFoursF(newBoards{iboard}) == true
        win = true;
        winningBoard = iboard;
    elseif searchForYourThreesF(newBoards{iboard}) == true
        win = true;
        winningBoard = iboard;
    end
end

%% If no wins, run threatSpace Round 2

if win == false
    for iboard = 1:length(newBoards)
        gainCostSquaresCell{iboard} = OPgainCostF(newBoards{iboard});
    end
end

%Create new board states and check for wins
allEmpty = true;
if win == false
    for nboard = 1:length(gainCostSquaresCell)
        if ~isempty(gainCostSquaresCell{nboard})
            allEmpty = false;
            for ithreat = 1:length(gainCostSquaresCell{nboard})
                newBoard = newBoards{nboard};
                newBoard(gainCostSquaresCell{nboard}(ithreat).gain(1),...
                    gainCostSquaresCell{nboard}(ithreat).gain(2)) = 2;
                newBoard(gainCostSquaresCell{nboard}(ithreat).cost(1, 1),...
                    gainCostSquaresCell{nboard}(ithreat).cost(1, 2)) = 1;
                if length(gainCostSquaresCell{nboard}(ithreat).cost) > 2
                    newBoard(gainCostSquaresCell{nboard}(ithreat).cost(2, 1),...
                        gainCostSquaresCell{nboard}(ithreat).cost(2, 2)) = 1;
                    newBoard(gainCostSquaresCell{nboard}(ithreat).cost(3, 1),...
                        gainCostSquaresCell{nboard}(ithreat).cost(3, 2)) = 1;
                end
                newBoards2{nboard}{ithreat} = newBoard;
            end
        end
    end
    if ~allEmpty
        for iboardgroup = 1:length(newBoards2)
            if ~isempty(newBoards2{iboardgroup})
                for iboard = 1:length(newBoards2{iboardgroup})
                    if searchForYourFoursF(newBoards2{iboardgroup}{iboard}) == true
                        win = true;
                        winningBoard = iboardgroup;
                    elseif searchForYourThreesF(newBoards2{iboardgroup}{iboard}) == true
                        win = true;
                        winningBoard = iboardgroup;
                    end
                end
            end
        end
    end
end

%% Round 3
if ~allEmpty
allEmpty2 = true;
if win == false
    for iboardgroup = 1:length(newBoards2)
        if ~isempty(newBoards2{iboardgroup})
            for iboard = 1:length(newBoards2{iboardgroup})
                gainCostSquaresNestedCell{iboardgroup}{iboard} = OPgainCostF(newBoards2{iboardgroup}{iboard});
            end
        end
    end
end

if win == false
    for nboardgroup = 1:length(gainCostSquaresNestedCell)
        if ~isempty(gainCostSquaresNestedCell{nboardgroup})
            for nboard = 1:length(gainCostSquaresNestedCell{nboardgroup})
                if ~isempty(gainCostSquaresNestedCell{nboardgroup}{nboard})
                    allEmpty2 = false;
                    for ithreat = 1:length(gainCostSquaresNestedCell{nboardgroup}{nboard})
                        newBoard = newBoards2{nboardgroup}{nboard};
                        newBoard(gainCostSquaresNestedCell{nboardgroup}{nboard}(ithreat).gain(1),...
                            gainCostSquaresNestedCell{nboardgroup}{nboard}(ithreat).gain(2)) = 2;
                        newBoard(gainCostSquaresNestedCell{nboardgroup}{nboard}(ithreat).cost(1, 1),...
                            gainCostSquaresNestedCell{nboardgroup}{nboard}(ithreat).cost(1, 2)) = 1;
                        if length(gainCostSquaresNestedCell{nboardgroup}{nboard}(ithreat).cost) > 2
                            newBoard(gainCostSquaresNestedCell{nboardgroup}{nboard}(ithreat).cost(2, 1),...
                                gainCostSquaresNestedCell{nboardgroup}{nboard}(ithreat).cost(2, 2)) = 1;
                            newBoard(gainCostSquaresNestedCell{nboardgroup}{nboard}(ithreat).cost(3, 1),...
                                gainCostSquaresNestedCell{nboardgroup}{nboard}(ithreat).cost(3, 2)) = 1;
                        end
                        newBoards3{nboardgroup}{nboard}{ithreat} = newBoard;
                    end
                end
            end
        end
    end
    if ~allEmpty2
        for iboardgroupGroup = 1:length(newBoards3)
            if ~isempty(newBoards3{iboardgroupGroup})
                for iboardgroup = 1:length(newBoards3{iboardgroupGroup})
                    if ~isempty(newBoards3{iboardgroupGroup}{iboardgroup})
                        for iboard = 1:length(newBoards3{iboardgroupGroup}{iboardgroup})
                            if searchForYourFoursF(newBoards3{iboardgroupGroup}{iboardgroup}{iboard}) == true
                                win = true;
                                winningBoard = iboardgroupGroup;
                            elseif searchForYourThreesF(newBoards3{iboardgroupGroup}{iboardgroup}{iboard}) == true
                                win = true;
                                winningBoard = iboardgroupGroup;
                            end
                        end
                    end
                end
            end
        end
    end
end
end %if not allEmpty (gainCostCell) newBoards2 exists
end %if not isempty (gainCostSq) newBoards exists

%% Win?

if win == true
    play = gainCostSquares(winningBoard).gain;
else
    play = 0;
end
