def word_sorting(string)
	string = string.split(" ")
	return string.sort { |a,b| a.upcase <=> b.upcase }
end
puts word_sorting("Una mañana tras un sueño intranquilo Gregorio Samsa se despertó convertido en un monstruoso insecto")