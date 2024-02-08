defmodule JogoVelha.Board do
  alias JogoVelha.Board.BoardWinnerStates
  alias JogoVelha.Board.PositionState
  alias JogoVelha.Board.Position2D
  alias JogoVelha.Board.Scanner

  def new() do
    %{
      Position2D.new({0, 0}) => PositionState.new(),
      Position2D.new({0, 1}) => PositionState.new(),
      Position2D.new({0, 2}) => PositionState.new(),
      Position2D.new({1, 0}) => PositionState.new(),
      Position2D.new({1, 1}) => PositionState.new(),
      Position2D.new({1, 2}) => PositionState.new(),
      Position2D.new({2, 0}) => PositionState.new(),
      Position2D.new({2, 1}) => PositionState.new(),
      Position2D.new({2, 2}) => PositionState.new()
    }
  end

  def verify(board) do
    BoardWinnerStates.verify(board)
  end

  def print_board(board) do
    Scanner.print_board(board)
  end
end
