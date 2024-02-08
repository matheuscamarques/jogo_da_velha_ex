defmodule JogoVelha.Board.Position2D do
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
