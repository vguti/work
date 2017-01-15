module Helper
	def rook_movement
		x_starting_position, y_starting_position = get_starting_position
		x_end_position, y_end_position = get_end_position
		if  x_starting_position == x_end_position || y_starting_position == y_end_position
			puts "Legal"
		else
		 	puts "Illegal"
		end
	end

	def bishop_movement
		x_starting_position, y_starting_position = get_starting_position
		x_end_position, y_end_position = get_end_position
		if (x_end_position - x_starting_position) == (y_end_position - y_starting_position)
		 	puts "Legal"
		else
		 	puts "Illegal"
		end
	end
end

class ChessElement

	include Helper

	CHESS_HASH = {
      "A" => 1,
      "B" => 2,
      "C" => 3,
      "D" => 4,
      "E" => 5,
      "F" => 6,
      "G" => 7,
      "H" => 8
    }

    def initialize(initial_position, final_position, color)
		@initial_position = initial_position
		@final_position = final_position
		@color = color
	end

end

class Rook
end

class Bishop
end

class Queen
	include Helper
	
end

class King
end

class Knight
end

class Pawn
	x_starting_position, y_starting_position = get_starting_position
	x_end_position, y_end_position = get_end_position
	if # WARNING, NOT FINISHED
end

puts the_rook = Rook.new("H1","H3", "Black")
puts the_bishop = Bishop.new("C8","F5", "Black")

# wP - Pawn - Peón
# wR - Rook - Torre
# wN - Knight - Caballo
# wB - Bishop - Alfil
# wQ - Queen - Reina
# wK - King - Rey