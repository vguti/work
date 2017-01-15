# Ask the user where to take the starting msj
	puts 'What is the source file?'

# Get and save the user’s response
	source_file = gets.chomp

# Ask for destination file
	source_file_contents = IO.read(source_file)

# Now we need to create a new file with the correct name and the correct contents. The method you should use is IO.write
 #replace file_name and file_contents with the correct variables
	IO.write('Output.txt', source_file_contents)  
