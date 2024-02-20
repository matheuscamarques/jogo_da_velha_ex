defmodule JogoVelha.Game do
  alias JogoVelha.Board

  def start_game() do
    %{
      player1: nil,
      player2: nil,
      board: Board.new(),
      game_state: :new,
      last_moves: [],
      active_player: nil
    }
  end

  def set_player1(game, player) do
    game
    |> Map.put(:player1, player)
    |> Map.put(:active_player, player)
  end

  def set_player2(game, player) do
    game
    |> Map.put(:player2, player)
  end

  def move(
        game = %{board: board, active_player: player, player1: player1, player2: player2},
        %{x: _, y: _} = position,
        player
      ) do
    new_board = Map.put(board, position, %{state: player})

    new_game_state = Board.verify(new_board)

    next_player_turn =
      case player == player1 do
        true -> player2
        false -> player1
      end

    new_game =
      game
      |> Map.put(:last_moves, [board] ++ game.last_moves)
      |> Map.put(:board, new_board)
      |> Map.put(:game_state, new_game_state)
      |> Map.put(:active_player, next_player_turn)

    Board.print_board(new_board)
    new_game
  end

  def move(game, _position, _player) do
    IO.inspect("Error: Wrong Player Turn")
    game
  end
end
