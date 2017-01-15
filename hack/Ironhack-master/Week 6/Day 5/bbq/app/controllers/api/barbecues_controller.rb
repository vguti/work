class Api::BarbecuesController < ApplicationController
	before_action :bbq_exists, only: [:show_bbq, :join]
	def show_bbq
		render json: @bbq
	end

	def join
		@bbq.users.push(current_user) 
	  # @bbq.users << current_user
	  render json: @bbq.to_json({:include => :users})
	end


	private
	def bbq_exists
		@bbq = Barbecue.find_by(id: params[:id])
	  unless @bbq
	    render json: {error: "bbq not found"},
	    status: 404
	    return
	    # redirect_to(barbecues_path)
	  end
	end
end

