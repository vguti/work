# app/controllers/text_inspections_controller.rb

class TextInspectionsController < ApplicationController
	def new
		render 'new'
	end

	def create
		@text = params[:text_inspection][:user_text]
		@word_count = @text.split(" ").length
		most_used_words = Hash.new

		for (i = 0, i < word_count.length, i +=1 )
			if most_used_words[@word_count[i]] == nil
				most_used_words[@word_count[i]] = 1
			else
				most_used_words[@word_count[i]] += 1
			end
		end

		for (i = 0, i < 10, i += 1)
			most_used_words[i] = @final_words
		end

		render 'results'
	end
end