def playgame

rand_num = rand(100)
  puts 'Guess a number!'
  
  my_num = gets.chomp.to_i
  until rand_num == my_num

    if my_num > rand_num
  	  puts 'You guessed too high!'
    else my_num < rand_num
      puts 'You guessed too low!'		
    end
    puts 'Guess Again'
    my_num = gets.chomp.to_i
  end 
    puts 'You Guessed CORRECTLY!!!'
end

def playagain
  puts 'Would you like to play a game?'
  puts 'Yes or No?'
  user_answer = gets.chomp
  until ['No', 'no'].include? user_answer
    playgame
    puts "Would you like to play again? (Yes or No)"
    user_answer = gets.chomp
  end
end
playagain
    
    