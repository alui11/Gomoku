function [row, column] = createThreat(board)
% [row, column] = createThreat(board)

gainCostSquares = gainCostF(board);

if ~isempty(gainCostSquares)
    row = gainCostSquares(1).gain(1);
    column = gainCostSquares(1).gain(2);
else
    row = 0;
    column = 0;
end