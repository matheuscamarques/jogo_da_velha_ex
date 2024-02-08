defmodule JogoVelha.Board.BoardWinnerStates do
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
      })
      when not is_nil(state) do
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
      })
      when not is_nil(state) do
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
      })
      when not is_nil(state) do
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
      })
      when not is_nil(state) do
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
      })
      when not is_nil(state) do
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
      })
      when not is_nil(state) do
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
      })
      when not is_nil(state) do
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
      })
      when not is_nil(state) do
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
