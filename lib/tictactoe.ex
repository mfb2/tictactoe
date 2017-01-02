defmodule Tictactoe do

  @board [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  @win_combinations [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [6,4,2],
    [0,4,8],
  ]

  def play do
    welcome_message
    display_board(@board)
    turn(@board, :continue)
  end

  def welcome_message do
    IO.puts "Welcome to Tic-Tac-Toe!"
  end

  def display_board(board) do
    IO.puts " #{Enum.at(board, 0)} | #{Enum.at(board, 1)} | #{Enum.at(board, 2)}"
    IO.puts "-----------"
    IO.puts " #{Enum.at(board, 3)} | #{Enum.at(board, 4)} | #{Enum.at(board, 5)}"
    IO.puts "-----------"
    IO.puts " #{Enum.at(board, 6)} | #{Enum.at(board, 7)} | #{Enum.at(board, 8)}"
  end

  def turn(init_board) do
    turn(init_board, :continue)
  end

  def turn(board, :continue) do
    get_number
    |> move_player(board)
    |> turn(won?(board))
  end

  def turn(board, :over) do
  end

  def get_number do
    IO.gets "Enter location: "
    |> String.strip
  end

  def move_player(number, board) do
    board
  end

  def won?(board) do
    :continue
  end

end
