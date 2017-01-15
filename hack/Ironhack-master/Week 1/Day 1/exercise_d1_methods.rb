puts "Write something babe!"

userInput = gets.chomp

current = IO.read("exercise_d1_methods.txt")
IO.write("exercise_d1_methods.txt", userInput, current.length)

puts IO.read("exercise_d1_methods.txt")