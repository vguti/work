# Questions

# Ask what is your name? And after that, you enter something as result it puts "Hello + whatever you wrote"
puts "What's your name?"
name = gets.chomp
puts "Hello, #{name}."

# Ask for a number, after that ask for another number and in the end, it multiply the first by the second 
puts "Give me a number"
first_number = gets.chomp.to_i
puts "Give me another number"
second_number = gets.chomp.to_i
puts "#{first_number} x #{second_number} = #{first_number * second_number}"