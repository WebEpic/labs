## Imported old app structure. 
## Need to refactor to work with Classes

# Need to figure out how to make the board N x N
BOARD = (1..9).to_a
WINNING = [[0,1,2], [2,3,4], [5,6,8],
          [0,3,6], [1,4,7], [2,5,8],
          [0,4,8], [2,4,6]]

# Need to establish instance variables and attributes
class PlayGame
  def playgame?(board)
    puts "Hello, my name is Hal. Whats your name?"
    name = gets.chomp
    puts "Hi #{name}. Would you like to play a game?"
    answer = gets.chomp
    if answer == "Yes"
      puts "Great! Why dont you start first."
      tic_tac_toe(board)
    elsif answer == "No"
      puts "Ok #{name}. Perhaps another time. Goodbye :-)"
    else answer == "What game?"
      puts "Tic Tac Toe of course"
      puts "Lets Play! :-)"
      tic_tac_toe(board)
    end
  end
end

# Need to establish instance variables and attributes
class Game
  def tic_tac_toe(board)
  player_1 = 'X'
  player_2 = 'O'
  turn_count = 0              

  until player_1 == WINNING || player_2 == WINNING do
    if turn_count % 2 == 0
      puts "Player 1, please choose a numbered square:"
      move = choose_move(board)
      board[move] = player_1
    else
      puts "Player 2, please choose a numbered square:"
      move = choose_move(board)
      board[move] = player_2
    end
    turn_count += 1  
    end
  end

  def choose_move(board)
    print_board(board)
    puts "Please pick a numbered square: "
    move = gets.chomp
    available = board.select { |x| x.is_a? Fixnum }
    
    until move =~ /^#{available}$/
      puts "Sorry, please pick a numbered square: "
      move = gets.chomp
    end
    move.to_i - 1
  end

  def win?(board)
    WINNING.any? do |x, y, z|
      board[x] == board[y] && board[y] == board[z]
    end
  end
end

def game_over?(board)
  win?(board) || print_board(board)
end
end

# Need to establish instance variables and attributes
class Computer
end

# Need to establish instance variables and attributes
class Human
end

# Need to establish instance variables and attributes
class PlayAgain
  def playagain?
  puts "Would you like to play again? (Yes or No)"
    user_answer = gets.chomp
  end
end