# Guess my Number Game
# Developer : Blesslin Jerish R


puts "Welcome to 'Get My Number!'"
print "What's your name? "
input = gets
name = input.chomp
puts "Welcome #{name}!"
max_number = 15
target = rand(max_number) + 1
# puts target
num_guesses = 0
guessed_it = false
until num_guesses == 10 || guessed_it
  puts "You have got #{10 - num_guesses} Guesses Left"
  puts "Take a Guess between 0 and #{max_number}"
  user_num = gets.to_i
  num_guesses += 1
  if user_num < target
    puts "Oops.Your guess was Low"
  elsif user_num > target
    puts "Oops.Your guess was High"
  elsif user_num == target
    puts "Congrats,You have Guessed the correct number #{target}"
    guessed_it = true
  end
end
unless guessed_it
  puts "Sorry. You didn't guess my number. It was #{target}"
end
