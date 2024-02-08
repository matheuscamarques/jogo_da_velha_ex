defmodule JogoVelha.Board.Scanner do
  alias JogoVelha.Board.PositionState
  alias JogoVelha.Board.Position2D

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
end
