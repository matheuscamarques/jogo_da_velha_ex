defmodule JogoVelha.Board do
  alias JogoVelha.Board
  defmodule Position2D do
    def new(x, y) do
      %{x: x, y: y}
    end

    def new(%{x: x, y: y}) do
      new(x, y)
    end

    def new({x, y}) do
      new(x, y)
    end
  end

  defmodule PositionState do
    def new() do
      %{
        state: nil
      }
    end

    def new(value) do
      %{
        state: value
      }
    end
  end

  defmodule BoardWinnerStates do
    @moduledoc """
      Validate these situations
      -> Horizontal Validations
      -> Vertical Validations
      -> Croz Validations
      -> Draw Validations
      -> Continue validation
    """
    def verify(%{
          %{x: 0, y: 0} => %{state: state},
          %{x: 0, y: 1} => %{state: state},
          %{x: 0, y: 2} => %{state: state},
          %{x: 1, y: 0} => %{},
          %{x: 1, y: 1} => %{},
          %{x: 1, y: 2} => %{},
          %{x: 2, y: 0} => %{},
          %{x: 2, y: 1} => %{},
          %{x: 2, y: 2} => %{}
        }) when not is_nil(state) do
      {:winner, state}
    end

    def verify(%{
          %{x: 0, y: 0} => %{},
          %{x: 0, y: 1} => %{},
          %{x: 0, y: 2} => %{},
          %{x: 1, y: 0} => %{state: state},
          %{x: 1, y: 1} => %{state: state},
          %{x: 1, y: 2} => %{state: state},
          %{x: 2, y: 0} => %{},
          %{x: 2, y: 1} => %{},
          %{x: 2, y: 2} => %{}
        }) when not is_nil(state) do
      {:winner, state}
    end

    def verify(%{
          %{x: 0, y: 0} => %{},
          %{x: 0, y: 1} => %{},
          %{x: 0, y: 2} => %{},
          %{x: 1, y: 0} => %{},
          %{x: 1, y: 1} => %{},
          %{x: 1, y: 2} => %{},
          %{x: 2, y: 0} => %{state: state},
          %{x: 2, y: 1} => %{state: state},
          %{x: 2, y: 2} => %{state: state}
        }) when not is_nil(state) do
      {:winner, state}
    end

    def verify(%{
          %{x: 0, y: 0} => %{},
          %{x: 0, y: 1} => %{state: state},
          %{x: 0, y: 2} => %{},
          %{x: 1, y: 0} => %{},
          %{x: 1, y: 1} => %{state: state},
          %{x: 1, y: 2} => %{},
          %{x: 2, y: 0} => %{},
          %{x: 2, y: 1} => %{state: state},
          %{x: 2, y: 2} => %{}
        }) when not is_nil(state) do
      {:winner, state}
    end

    def verify(%{
          %{x: 0, y: 0} => %{state: state},
          %{x: 0, y: 1} => %{},
          %{x: 0, y: 2} => %{},
          %{x: 1, y: 0} => %{state: state},
          %{x: 1, y: 1} => %{},
          %{x: 1, y: 2} => %{},
          %{x: 2, y: 0} => %{state: state},
          %{x: 2, y: 1} => %{},
          %{x: 2, y: 2} => %{}
        }) when not is_nil(state) do
      {:winner, state}
    end

    def verify(%{
          %{x: 0, y: 0} => %{},
          %{x: 0, y: 1} => %{},
          %{x: 0, y: 2} => %{state: state},
          %{x: 1, y: 0} => %{},
          %{x: 1, y: 1} => %{},
          %{x: 1, y: 2} => %{state: state},
          %{x: 2, y: 0} => %{},
          %{x: 2, y: 1} => %{},
          %{x: 2, y: 2} => %{state: state}
        }) when not is_nil(state) do
      {:winner, state}
    end

    def verify(%{
          %{x: 0, y: 0} => %{state: state},
          %{x: 0, y: 1} => %{},
          %{x: 0, y: 2} => %{},
          %{x: 1, y: 0} => %{},
          %{x: 1, y: 1} => %{state: state},
          %{x: 1, y: 2} => %{},
          %{x: 2, y: 0} => %{},
          %{x: 2, y: 1} => %{},
          %{x: 2, y: 2} => %{state: state}
        }) when not is_nil(state) do
      {:winner, state}
    end

    def verify(%{
          %{x: 0, y: 0} => %{},
          %{x: 0, y: 1} => %{},
          %{x: 0, y: 2} => %{state: state},
          %{x: 1, y: 0} => %{},
          %{x: 1, y: 1} => %{state: state},
          %{x: 1, y: 2} => %{},
          %{x: 2, y: 0} => %{state: state},
          %{x: 2, y: 1} => %{},
          %{x: 2, y: 2} => %{}
        }) when not is_nil(state) do
      {:winner, state}
    end

    def verify(
          %{
            %{x: 0, y: 0} => %{state: a},
            %{x: 0, y: 1} => %{state: b},
            %{x: 0, y: 2} => %{state: c},
            %{x: 1, y: 0} => %{state: d},
            %{x: 1, y: 1} => %{state: e},
            %{x: 1, y: 2} => %{state: f},
            %{x: 2, y: 0} => %{state: g},
            %{x: 2, y: 1} => %{state: h},
            %{x: 2, y: 2} => %{state: i}
          } = board
        )
        when not is_nil(a) and
               not is_nil(b) and
               not is_nil(c) and
               not is_nil(d) and
               not is_nil(e) and
               not is_nil(f) and
               not is_nil(g) and
               not is_nil(h) and
               not is_nil(i) do
      {:draw, board}
    end

    def verify(board) do
      {:continue, board}
    end
  end

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
    for row <- 0..2 do
      for col <- 0..2 do
        position = %{x: row, y: col}
        state = Map.get(board, Position2D.new(position), PositionState.new())
        print_state(state)
      end
      IO.puts("")
    end
  end

  defp print_state(%{state: nil}) do
    IO.write(" _ ")
  end

  defp print_state(%{state: value}) do
    IO.write(" #{value} ")
  end

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
    } |> Board.BoardWinnerStates.verify()
  end

  def horizontal_winner_case() do
    [%{
      Position2D.new({0, 0}) => PositionState.new("A"),
      Position2D.new({0, 1}) => PositionState.new("A"),
      Position2D.new({0, 2}) => PositionState.new("A"),
      Position2D.new({1, 0}) => PositionState.new("B"),
      Position2D.new({1, 1}) => PositionState.new("B"),
      Position2D.new({1, 2}) => PositionState.new("B"),
      Position2D.new({2, 0}) => PositionState.new("B"),
      Position2D.new({2, 1}) => PositionState.new("B"),
      Position2D.new({2, 2}) => PositionState.new("B")
    } |> Board.BoardWinnerStates.verify(),
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
    } |> Board.BoardWinnerStates.verify(),
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
    } |> Board.BoardWinnerStates.verify()
  ]
  end

  def vertical_winner_case() do
    [%{
      Position2D.new({0, 0}) => PositionState.new("A"),
      Position2D.new({0, 1}) => PositionState.new("B"),
      Position2D.new({0, 2}) => PositionState.new("B"),
      Position2D.new({1, 0}) => PositionState.new("A"),
      Position2D.new({1, 1}) => PositionState.new(nil),
      Position2D.new({1, 2}) => PositionState.new("B"),
      Position2D.new({2, 0}) => PositionState.new("A"),
      Position2D.new({2, 1}) => PositionState.new("B"),
      Position2D.new({2, 2}) => PositionState.new(nil)
    } |> Board.BoardWinnerStates.verify(),
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
    } |> Board.BoardWinnerStates.verify(),
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
    } |> Board.BoardWinnerStates.verify()
  ]
  end

  def cross_winner_case() do
    [%{
      Position2D.new({0, 0}) => PositionState.new("A"),
      Position2D.new({0, 1}) => PositionState.new("B"),
      Position2D.new({0, 2}) => PositionState.new("B"),
      Position2D.new({1, 0}) => PositionState.new("B"),
      Position2D.new({1, 1}) => PositionState.new("A"),
      Position2D.new({1, 2}) => PositionState.new("B"),
      Position2D.new({2, 0}) => PositionState.new("B"),
      Position2D.new({2, 1}) => PositionState.new("B"),
      Position2D.new({2, 2}) => PositionState.new("A")
    } |> Board.BoardWinnerStates.verify(),
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
    } |> Board.BoardWinnerStates.verify()
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
    } |> Board.BoardWinnerStates.verify()
  end
end
