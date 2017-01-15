$board=[]
File.open("simple_board.txt") do |x|
	x.each_line do |line|
	$board << line.split.map(&:to_s)
	end
	print $board
end

$simple = []
File.open("simple_moves.txt") do |x|
	x.each_line do |line|
		$simple << line.split.map(&:to_s)
	end
	print $simple
end













=begin
File.open("movies.txt", "r") do |f|
  		f.each_line do |line|
  
    		@titles.push(line.chomp) #Push the titles in an array
    	end
class ChessValidator

	def self.board_reader

	end

	def self.movement_reader

	end

	def move_reader(movements)
		movement_list.each do |movement|
			movement.each_with_index do |position,index|
				position_translator(position)
			end
		end
	end

	def position_translator(position)
		y=position[0].ord -97
		x=8-position[1]
		board[x][y]
	end
end

















=end


