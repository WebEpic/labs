require 'pry'
require 'set'

word_list = ["cookies", "kittens", "fairies",
             "words", "linux", "lisp", "music",
             "songs","beer", "love", "fun",
             "code", "cease", "and", "desist",
             "read", "print", "eval", "loop",
             "macro", "ruby"]

turn_count = 7
guesses = Set.new

def intermediate_word(answer, guesses)
  answer.each_char do |letter|
    if guesses.include?(letter)
      print letter
    else
      print "_"
    end
  end
  puts
end

def word_complete?(word, guessed_letters)
  guessed_letters == word.chars.to_set
end

binding.pry

def playgame?
  puts 'Greetings human. Would you like to play a game?'
  puts 'Yes or No?'
  user_answer = gets.chomp
  until ['No', 'no'].include? user_answer
    playgame
    puts "Would you like to play again? (Yes or No)"
    user_answer = gets.chomp
  end
    if user_answer == 'Yes' || user_answer == 'yes'
      hangman
      playgame?
    elsif user_answer == 'No' || user_answer == 'no'
      puts 'Ok, Perhaps another time. Take care! :-)'
end
playgame?

___________________________________________________________________________

## Original Code

# def hangman
#   require 'pry'
#   require 'set'

#   word_list = 
#   [

#   ]
#   def word_complete? (word, guessed_letters)
#     guessed_letters == word.chars.to_set
#   end

#   turn_count = 7
#   guesses = Set.new
#   binding.pry

# answer = word_list.sample


# def playgame?

# puts 'Would you like to play a game?'
#   puts 'Yes or No?'
#   user_answer = gets.chomp
#     if user_answer == 'Yes' || user_answer == 'yes'
#       playgame
#       playagain
#     elsif user_answer == 'No' || user_answer == 'no'
#       puts 'Ok, Perhaps another time. Take care! :-)'
#     end
# end
# playagain