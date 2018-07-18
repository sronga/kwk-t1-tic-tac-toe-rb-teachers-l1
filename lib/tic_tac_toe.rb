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

def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip

    index = input_to_index(input)

  if valid_move?(board, index)
      move(board, index)
      display_board(board)
  else turn(board)
  end
end

def turn_count(board)
  counter = 0
  board.each do |turnnumber|
    if turnnumber != " "
      counter += 1
    end
  end
  counter
end

def current_player(board)
  if turn_count(board) % 2 == 0
    "X"
  elsif turn_count(board) % 2 == 1
    "O"
  end
end

def won?(board)

  WIN_COMBINATIONS.each do |winindex|

  position1 = winindex[0]
  position2 = winindex[1]
  position3 = winindex[2]

  playerposition1 = board[position1]
  playerposition2 = board[position2]
  playerposition3 = board[position3]

  if (playerposition1 == "X" && playerposition2 == "X" && playerposition3 == "X") || (playerposition1 == "O" && playerposition2 == "O" && playerposition3 == "O")
    return winindex
  end
  end

  return false
end

def full?(board)
  board.all? do |eachposition|
    eachposition != " "
  end
end

def draw?(board)
  if full?(board) == false
    return false
  elsif full?(board) == true
    (
    if won?(board) == true
      return false
    elsif won?(board) == false
      return true
    end
    )
  end
end

def over?(board)
return (draw?(board) || full?(board) || won?(board))
end

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  else return nil
  end
end
