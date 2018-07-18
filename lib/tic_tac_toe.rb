WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  converted_input = user_input.to_i - 1
end

board = [" ", " ", " "]

def move(array,index,value="X")
  array[index] = value
end

def position_taken?(board, index)
  if board[index] == " "
    false
  elsif board[index] == "X"
    true
  elsif board[index] == "O"
   true
 elsif board[index] == nil
   false
 elsif board[index] == ""
   false
  end
end

def position_taken?(board, index)
    if board[index] == " "
      false
    elsif board[index] == ""
      false
    elsif board[index] == nil
      false
    elsif board[index] == "X"
      true
    elsif board[index] == "O"
      true
    end
end

def valid_move?(board, index)
if position_taken?(board, index) == true
    false
 elsif position_taken?(board, index) == false
   (
    if index <= 8 && index >= 0
      true
    else
      false
    end
    )
  end
end
