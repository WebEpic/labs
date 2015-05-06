rand_num = rand(100)

  puts 'Enter Number'
  my_num = gets.chomp.to_i

  until rand_num == my_num
    if my_num > rand_num
  	  puts 'You guessed too high!'
    elsif my_num < rand_num
      puts 'You guessed too low!'		
    end
    puts 'Guess Again'
    my_num = gets.chomp.to_i
  end 
    puts 'You Guessed CORRECTLY!!!'

    
    