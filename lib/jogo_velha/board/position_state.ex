defmodule JogoVelha.Board.PositionState do
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
