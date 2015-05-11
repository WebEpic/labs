require 'pry'

board = (1..9).to_a

def playgame?(board)
  puts "Hello, my name is Hal. Whats your name?"
  name = gets.chomp
  puts "Hi #{name}. Would you like to play a game?"
  answer = gets.chomp
    if answer == "Yes"
      puts "Great! Why dont you start first."
    elsif answer == "No"
      puts "Ok #{name}. Perhaps another time. Goodbye :-)"
    elsif answer == "What game?"
      puts "Tic Tac Toe of course"
    else
      puts "Lets Play! :-)"
    end
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
  player_1 = 'X'
  player_2 = 'O'
  win_combos = [[1,2,3], [3,4,5], [6,7,9],
                [1,4,7], [2,5,8], [3,6,9],
                [1,5,9], [3,5,7]]
  turn_count = 0              

  until player_1 == win_combos || player_2 == win_combos do
    print_board(board)
      if turn_count % 2 == 0
        puts "Player 1, please choose a square:"
        move = gets.chomp.to_i - 1
        board[move] = player_1
      else
        puts "Player 2, please choose a square:"
        move = gets.chomp.to_i - 1
        board[move] = player_2
      end
      turn_count += 1  
  end
end

def winning
  win_combos = [[1,2,3], [3,4,5], [6,7,9],
                [1,4,7], [2,5,8], [3,6,9],
                [1,5,9], [3,5,7]]
end

def playagain?

end
playgame?(board)
tic_tac_toe(board)



# comp1 = "Hal"
# comp2 = "Jarvis"


binding.pry