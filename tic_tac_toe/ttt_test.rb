board = (1..9).to_a

def game_over?(board)
  false
end

def print_board(board)
  puts "#{board[0]} #{board[1]} #{board[2]}"
  puts "#{board[3]} #{board[4]} #{board[5]}"
  puts "#{board[6]} #{board[7]} #{board[8]}"
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
      current_player = 'X'
      puts "Computer's turn now"
      move = board.sample # choose_random(board)
    computer_choice = board.sample
    while computer_choice.is_a?(String)
       computer_choice = board.sample
    end
      board.reject
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
tic_tac_toe(board)
