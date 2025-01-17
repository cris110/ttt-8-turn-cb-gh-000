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
  else
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  value = "X"
  input = gets
  index = input_to_index(input)
  if index.between?(0,8) && valid_move?(board, index)
    move(board, index,value)
  else
    turn(board)
  end
end

def input_to_index(input)
  index = input.to_i
  index -= 1
end

def move(board, index, value = "X")
  board[index] = value
  display_board(board)
end
