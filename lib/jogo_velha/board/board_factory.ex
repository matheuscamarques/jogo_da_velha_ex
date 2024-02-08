defmodule JogoVelha.Board.BoardFactory do
  alias JogoVelha.Board.PositionState
  alias JogoVelha.Board.Position2D
  alias JogoVelha.Board

  def draw_case() do
    %{
      Position2D.new({0, 0}) => PositionState.new("A"),
      Position2D.new({0, 1}) => PositionState.new("B"),
      Position2D.new({0, 2}) => PositionState.new("C"),
      Position2D.new({1, 0}) => PositionState.new("D"),
      Position2D.new({1, 1}) => PositionState.new("E"),
      Position2D.new({1, 2}) => PositionState.new("F"),
      Position2D.new({2, 0}) => PositionState.new("G"),
      Position2D.new({2, 1}) => PositionState.new("H"),
      Position2D.new({2, 2}) => PositionState.new("I")
    }
    |> Board.BoardWinnerStates.verify()
  end

  def horizontal_winner_case() do
    [
      %{
        Position2D.new({0, 0}) => PositionState.new("A"),
        Position2D.new({0, 1}) => PositionState.new("A"),
        Position2D.new({0, 2}) => PositionState.new("A"),
        Position2D.new({1, 0}) => PositionState.new("B"),
        Position2D.new({1, 1}) => PositionState.new("B"),
        Position2D.new({1, 2}) => PositionState.new("B"),
        Position2D.new({2, 0}) => PositionState.new("B"),
        Position2D.new({2, 1}) => PositionState.new("B"),
        Position2D.new({2, 2}) => PositionState.new("B")
      }
      |> Board.BoardWinnerStates.verify(),
      %{
        Position2D.new({0, 0}) => PositionState.new("B"),
        Position2D.new({0, 1}) => PositionState.new(nil),
        Position2D.new({0, 2}) => PositionState.new("B"),
        Position2D.new({1, 0}) => PositionState.new("A"),
        Position2D.new({1, 1}) => PositionState.new("A"),
        Position2D.new({1, 2}) => PositionState.new("A"),
        Position2D.new({2, 0}) => PositionState.new("B"),
        Position2D.new({2, 1}) => PositionState.new(nil),
        Position2D.new({2, 2}) => PositionState.new("B")
      }
      |> Board.BoardWinnerStates.verify(),
      %{
        Position2D.new({0, 0}) => PositionState.new("B"),
        Position2D.new({0, 1}) => PositionState.new(nil),
        Position2D.new({0, 2}) => PositionState.new("B"),
        Position2D.new({1, 0}) => PositionState.new("B"),
        Position2D.new({1, 1}) => PositionState.new(nil),
        Position2D.new({1, 2}) => PositionState.new("B"),
        Position2D.new({2, 0}) => PositionState.new("A"),
        Position2D.new({2, 1}) => PositionState.new("A"),
        Position2D.new({2, 2}) => PositionState.new("A")
      }
      |> Board.BoardWinnerStates.verify()
    ]
  end

  def vertical_winner_case() do
    [
      %{
        Position2D.new({0, 0}) => PositionState.new("A"),
        Position2D.new({0, 1}) => PositionState.new("B"),
        Position2D.new({0, 2}) => PositionState.new("B"),
        Position2D.new({1, 0}) => PositionState.new("A"),
        Position2D.new({1, 1}) => PositionState.new(nil),
        Position2D.new({1, 2}) => PositionState.new("B"),
        Position2D.new({2, 0}) => PositionState.new("A"),
        Position2D.new({2, 1}) => PositionState.new("B"),
        Position2D.new({2, 2}) => PositionState.new(nil)
      }
      |> Board.BoardWinnerStates.verify(),
      %{
        Position2D.new({0, 0}) => PositionState.new("B"),
        Position2D.new({0, 1}) => PositionState.new("A"),
        Position2D.new({0, 2}) => PositionState.new("B"),
        Position2D.new({1, 0}) => PositionState.new("A"),
        Position2D.new({1, 1}) => PositionState.new("A"),
        Position2D.new({1, 2}) => PositionState.new("B"),
        Position2D.new({2, 0}) => PositionState.new("B"),
        Position2D.new({2, 1}) => PositionState.new("A"),
        Position2D.new({2, 2}) => PositionState.new("B")
      }
      |> Board.BoardWinnerStates.verify(),
      %{
        Position2D.new({0, 0}) => PositionState.new(nil),
        Position2D.new({0, 1}) => PositionState.new(nil),
        Position2D.new({0, 2}) => PositionState.new("A"),
        Position2D.new({1, 0}) => PositionState.new("B"),
        Position2D.new({1, 1}) => PositionState.new(nil),
        Position2D.new({1, 2}) => PositionState.new("A"),
        Position2D.new({2, 0}) => PositionState.new("B"),
        Position2D.new({2, 1}) => PositionState.new("B"),
        Position2D.new({2, 2}) => PositionState.new("A")
      }
      |> Board.BoardWinnerStates.verify()
    ]
  end

  def cross_winner_case() do
    [
      %{
        Position2D.new({0, 0}) => PositionState.new("A"),
        Position2D.new({0, 1}) => PositionState.new("B"),
        Position2D.new({0, 2}) => PositionState.new("B"),
        Position2D.new({1, 0}) => PositionState.new("B"),
        Position2D.new({1, 1}) => PositionState.new("A"),
        Position2D.new({1, 2}) => PositionState.new("B"),
        Position2D.new({2, 0}) => PositionState.new("B"),
        Position2D.new({2, 1}) => PositionState.new("B"),
        Position2D.new({2, 2}) => PositionState.new("A")
      }
      |> Board.BoardWinnerStates.verify(),
      %{
        Position2D.new({0, 0}) => PositionState.new("B"),
        Position2D.new({0, 1}) => PositionState.new("B"),
        Position2D.new({0, 2}) => PositionState.new("A"),
        Position2D.new({1, 0}) => PositionState.new("B"),
        Position2D.new({1, 1}) => PositionState.new("A"),
        Position2D.new({1, 2}) => PositionState.new("B"),
        Position2D.new({2, 0}) => PositionState.new("A"),
        Position2D.new({2, 1}) => PositionState.new("B"),
        Position2D.new({2, 2}) => PositionState.new("B")
      }
      |> Board.BoardWinnerStates.verify()
    ]
  end

  def continue_case() do
    %{
      Position2D.new({0, 0}) => PositionState.new("A"),
      Position2D.new({0, 1}) => PositionState.new("B"),
      Position2D.new({0, 2}) => PositionState.new(nil),
      Position2D.new({1, 0}) => PositionState.new(nil),
      Position2D.new({1, 1}) => PositionState.new(nil),
      Position2D.new({1, 2}) => PositionState.new(nil),
      Position2D.new({2, 0}) => PositionState.new(nil),
      Position2D.new({2, 1}) => PositionState.new("B"),
      Position2D.new({2, 2}) => PositionState.new("A")
    }
    |> Board.BoardWinnerStates.verify()
  end
end
