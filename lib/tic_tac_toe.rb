class TicTacToe
  attr_accessor :board
  
  def initialize
    @board = [" ", " ", " "," ", " ", " "," ", " ", " ",]
  end
  
  def display_board(board)
    puts ("#{board[0]} | #{board[1]} | #{board[2]}")
    puts "--------------"
    puts ("#{board[3]} | #{board[4]} | #{board[5]}")
    puts "--------------"
    puts ("#{board[6]} | #{board[7]} | #{board[8]}")
  end
  
  WIN_COMBINATIONS [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,5],
    [2,4,6]
    ]
  
  def input_to_index(input)
    input.to_i-1
  end
  
  def move(@board, position, player)
    @board[position] = player
  end
  
  def position_taken? (@board, position)
    !(@board[position] == nil || @board[position] == " " )
  end  
  
  def valid_move?(@board, position)
    !position_is_taken(@board, position) && position.between?(0,8)
  end
  
end