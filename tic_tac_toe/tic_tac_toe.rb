require 'pry'

toy = [1, 2, 3, 4]
board = (1..9).to_a

def playgame?(board)
  puts "Hello, my name is Hal. Whats your name?"
  name = gets.chomp
  puts "Hi #{name}. Would you like to play a game?"
  answer = gets.chomp
    if answer == "Yes"
      puts "Great! Why dont you start first."
      print_board("jerks", "cookies")
    elsif answer == "No"
      puts "Ok #{name}. Perhaps another time. Goodbye :-)"
    elsif answer == "What game?"
      puts "Tic Tac Toe of course"
    else
      nil
    end
    print_board("beers", "dinner")
    puts 'Please '
end

def print_board(board)
  puts "#{board[0]} #{board[1]} #{board[2]}"
  puts "#{board[3]} #{board[4]} #{board[5]}"
  puts "#{board[6]} #{board[7]} #{board[8]}"
end

def game_over?(board)
  false
end

def choose_random(board)
end

def tic_tac_toe(board)
  current_player = 'X'
  until game_over?(board)
    ## The current player's turn
    
    if current_player == 'X'
      print_board(board)
      puts "Please choose a square to move to:"
      move = gets.chomp.to_i - 1
    else
      puts "Computer's turn now"
      move = board.sample # choose_random(board)
    end
    # update board with move
    board[move] = current_player

    ## My turn is done. Set the current player for next turn.
    if current_player == 'X'
      current_player = 'O'
    else
      current_player = 'X'
    end
  end
end

def winning
  win_combos = [[1,2,3], [3,4,5], [6,7,9],
                [1,4,7], [2,5,8], [3,6,9],
                [1,5,9], [3,5,7]]
end

def playagain?

end

tic_tac_toe(board)



# comp1 = "Hal"
# comp2 = "Jarvis"


binding.pry