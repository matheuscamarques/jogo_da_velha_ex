defmodule JogoVelha.Game do
  alias JogoVelha.Board

  def start_game() do
    %{
      player1: nil,
      player2: nil,
      board: Board.new(),
      game_state: :new
    }
  end

  def set_player1(game, player) do
    game
    |> Map.put(:player1, player)
  end

  def set_player2(game, player) do
    game
    |> Map.put(:player2, player)
  end

  def move(game = %{board: board}, %{x: _, y: _} = position, player) do
    new_board = Map.put(board, position, %{state: player})

    new_game_state = Board.verify(new_board)

    new_game =
      game
      |> Map.put(:board, new_board)
      |> Map.put(:game_state, new_game_state)

    Board.print_board(new_board)
    new_game
  end
end
