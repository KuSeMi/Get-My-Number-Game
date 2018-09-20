# Get My Number Game
# Written by: KuSeMi!
puts "Wellcome to 'Get My Number!'"
# Получение имени игрока и вывод приветствия
print "What's your name ?  "
input = gets.capitalize.chomp
puts "Welcome #{input} !"
# Сохранение случайного числа.
puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(101)
# Отслеживание количества попыток.
num_guesses = 0
# Признак продолжения игры.
guessed_it = false
while num_guesses < 10 && guessed_it == false # or until num_guesses == 10 || guessed_it
  remaining_guesses = 10 - num_guesses
puts "#{remaining_guesses} guesses left!"# guesses - popitok ostalos
puts "Make a guess :"
guess = gets.to_i
num_guesses +=1
  # Сравнение введенного числа с загаданным
  # и вывод соответствующего сообщения.
if guess < target
  puts "Oops. Your guess was LOW."
elsif guess > target
  puts "OOOps. Your gues was high."
elsif guess == target
  puts "Good job, #{input}!"
  puts "You guessed my number in #{num_guesses} guesses!!!"
  guessed_it = true
end
end
#Если попыток не осталось, сообщить загаданное число
unless guessed_it
  puts "Sorry. You didn't get my number. ( It was #{target})!"
end