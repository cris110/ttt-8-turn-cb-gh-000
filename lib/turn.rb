def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  puts "-----------"
end

def valid_move?(board, index)
  if index.between?(0,8) && (board[index] == "" || board[index] == " " || board[index] == nil)
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.to_i
  index = input_to_index(input)
  if index.between?(0,8)
    move(board, index)
  else
    turn(board)
  end
end

def input_to_index(input)
  input -= 1
end

def move(board, index)
  board[index] = "X"
  display_board(board)
end
