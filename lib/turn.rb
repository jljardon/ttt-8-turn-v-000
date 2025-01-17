

def turn (board)

   puts "Please enter 1-9:"
   user_input = gets.strip
   user_input = input_to_index(user_input)

   if !valid_move?(board, user_input)
      turn(board)
   else
      move(board,user_input)
      display_board(board)
   end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
	return user_input.to_i - 1
end

def move(board,user_input,x_or_o = "X")
	return board[user_input]= x_or_o
end

def valid_move?(board, index)
	(!position_taken?(board, index) && index.between?(0,8))? true : false
end

def position_taken?(board, index)
	(board[index] == " " || !board[index] || board[index].empty?)? false : true
end
