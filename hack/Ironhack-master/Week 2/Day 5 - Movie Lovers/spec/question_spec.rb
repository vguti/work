require_relative '../models/quitz.rb'
require_relative '../models/question.rb'

RSpec.describe "class Question:" do
	
	let(:movie) {Question.new("WARNING: Empty array, try again!")}
	let(:films) {Question.new(["1", "2", "3", "4", "5", "6", "7", "8", "9"])}

	it "should return an error message when you get an empty search" do
    expect(movie.error_message).to eq("WARNING: Empty array, try again!")
  end

  it "should return you an array of 9 movies" do
  	expect(films.movies.size).to eq(9)
  end

	pending 'returns the correct amount of movies' do
    expect(filtered.size).to eq(10)
	end

	# it "should NOT load #home" do
	# 	get "/this_should_not_work"
	# 	expect(last_response).to_not be_ok
	# end
end

# Debe devolver un array de 9 películas
# Debe devolver un mensaje de error cuando mi ARRAY_DE_PELÍCULAS no tiene 9 poster

