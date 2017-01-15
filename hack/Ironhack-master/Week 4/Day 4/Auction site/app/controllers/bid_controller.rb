class BidController < ApplicationController
	def create
		@bid = Bid.new(
			:amount => params[:bid][:amount],
			:user_id => params[:bid][:user_id],
			:product_id => params[:product_id]
		)

		if @bid.save
			redirect_to "/bids/#{@bid.id}"
		else
			render 'new'
		end
	end
end