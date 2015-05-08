require 'pry'

board = (1..9).to_a

def playgame?(board)
  puts "Hello, my name is Hal. Whats your name?"
  name = gets.chomp
  puts "Hi #{name}. Would you like to play a game?"
  answer = gets.chomp
    if answer == "Yes"
      puts "Great! Why dont you start first."
      print_board(board)
    elsif answer == "No"
      puts "Ok #{name}. Perhaps another time. Goodbye :-)"
    elsif answer == "What game?"
      puts "Tic Tac Toe of course"
    else
      nil
    end
    puts 'Please '
end

def print_board(board)
  puts "#{board[0]} #{board[1]} #{board[2]}"
  puts "#{board[3]} #{board[4]} #{board[5]}"
  puts "#{board[6]} #{board[7]} #{board[8]}"
end

def choose_move(board)
  print_board(board)
  puts "Please choose a square to move to:"
  gets.chomp.to_i
end

def game # Where is board coming from?
  move = choose_move(board)
  board[move] = current_player
end

def winning
  win_combos = [[1,2,3], [3,4,5], [6,7,9],
                [1,4,7], [2,5,8], [3,6,9],
                [1,5,9], [3,5,7]]
end

def playagain?

end
playgame?(board)



# comp1 = "Hal"
# comp2 = "Jarvis"


binding.pry