class Dog
	attr_accessor :name, :breed
	attr_writer :sound
	attr_reader :people_smelled

	def initialize (name, breed, sound)
		@name = name
		@breed = breed
		@sound = sound
		@people_smelled = []
		@@number_of_dogs ||=0
		@@number_of_dogs += 1

	end
	
	def bark
		puts @sound
	end

	def berserk
		puts @sound + @sound + @sound + @sound
	end

	def track
		puts "sniff"
	end

	def self.number_of_dogs
		puts @@number_of_dogs
	end

	def smell(person)
		@people_smelled.push(person)
	end



end

class Hound < Dog
	attr_accessor :animal
	def initialize(name,breed,sound,animal)
		@animal= animal
		super(name,breed,sound)
	end

	def roll
		puts "roll..rol..roll.."

    end

    def track
    	puts "sniff..sniff.sniff..."
    	super
    end
end

class PetDog < Dog
	attr_accessor :owner
	def initialize (name,breed,sound,owner)
	super(name,breed,sound)
	@owner = owner
	end

	def fetch(toy)
		puts "*drops #{toy}* ..."
		bark
		bark
		bark
	end
end



p1= Dog.new("Bingo","Labrador","jip")
h1= Hound.new("Oscar","Teckel","Bark!!","fox")
pet=PetDog.new("ringo","beagle","guau guau","John")

pet.berserk
pet.fetch("ball")
pet.fetch("stick")
puts pet.owner
pet.owner = "new owner"
puts pet.owner

p1.smell("maria")
p1.smell("jonny")
p1.smell("ana")