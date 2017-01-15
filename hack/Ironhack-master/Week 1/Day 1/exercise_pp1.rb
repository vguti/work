class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end

ascii = ProgrammingLanguage.new("Ascii", 40, "Dynamic")
python = ProgrammingLanguage.new("Python", 24, "Dynamic")
swift = ProgrammingLanguage.new("Swift", 2, "Static")
javascript = ProgrammingLanguage.new("Javascript", 50, "Dynamic")
ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic") 

array_of_languages = [ascii, python, swift, javascript, ruby]

def arrays_printer(array)
	array.each do | language |
		#puts "language: #{language.name} | age: #{language.age} | type_system: #{language.type}"
	end
end

arrays_printer(array_of_languages)


my_new_array = array_of_languages.map do |programming_language|
	programming_language.age += 1
end

# puts my_new_array


arraySort = array_of_languages.sort_by {|i| i.age}.reverse

arraySort.each do |lang|
	puts lang.name + "-" + lang.age.to_s + "-" + lang.type
end

# array_of_languages.delete_if {|h| h > 39 && h < 50}

