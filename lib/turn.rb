def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.to_i.between?(1,9) && !position_taken?(board, index.to_i-1)
    true
  end
end


def turn(board)
  puts "Please enter 1-9"
  input = gets.chomp
  if valid_move?(board, input)
    move(board, input)
  else
    turn
  end
  display_board(board)
end


def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def move(board, index, player="X")
  board[index.to_i-1] = player
end




#def move(board, index)

#end
